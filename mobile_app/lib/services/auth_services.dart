import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/screens/client/search_category/search_category_screen.dart';
import 'package:te_veo_app/screens/client/verify_mail/verify_mail_screen.dart';
import 'package:te_veo_app/screens/registro/login/login_screen.dart';
import 'package:te_veo_app/screens/tabs_page.dart';
import 'package:te_veo_app/services/services.dart';
import 'package:flutter/material.dart';

class AuthService {
  static Future registerUser(
      {required String email,
      required String password,
      required String name,
      required String surName,
      required String phoneData}) async {
    final reg =
        await ServiceHttp.serverCall('yateveo-mobile-session/InsertUser', {
      "user": email,
      "pass": password,
      "type_user": 1,
      "status": "1",
      "create_at": DateTime.now().toString(),
      "update_at": DateTime.now().toString(),
    });
    if (reg['id_user'] != null) {
      phoneData = phoneData.substring(0);
      final perfil = await ServiceHttp.serverCall(
          'yateveo-mobile-profiling/InsertPerfil', {
        "id_user": reg['id_user'],
        "document": "12345678",
        "first_name": name,
        "last_name": surName,
        "email": email,
        "phone": phoneData,
      });

      if (perfil['id_perfil'] != null) {
        Preferences.setidUser(perfil['id_user']);
        Get.snackbar(
          'Success',
          'User register!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.green,
          borderWidth: 2,
        );
        Get.to(const VerifyMailScreen());
      } else {
        Get.snackbar(
          'Error !!',
          'Error registering user',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          borderRadius: 10,
          margin: const EdgeInsets.all(10),
          borderColor: Colors.red,
          borderWidth: 2,
        );
      }
    } else {
      Get.snackbar(
        'Error !!',
        'Error registering user (server)',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.red,
        borderWidth: 2,
      );
    }
  }

  static Future verifyOtp(String otp) async {
    final resVerify = await ServiceHttp.serverCall(
        "yateveo-mobile-profiling/VerifyCode",
        {"id_user": Preferences.getidUser(), "code": otp});
    return resVerify['message'];
  }

  static Future resentCodigo() async {
    final resVerify = await ServiceHttp.serverCall(
        "yateveo-mobile-profiling/RetryCode",
        {"id_user": Preferences.getidUser()});
    return resVerify['message'];
  }

  static Future login(String email, String password) async {
    var data = await ServiceHttp.serverCall('yateveo-mobile-session/login', {
      "user": email,
      "pass": password,
    });
    print("email $email");
    print("data $password");
    print("data $data");
    if (data['token'] != null) {
      Preferences.token = data['token'];
      Get.snackbar(
        'Success',
        'You\'re logged in',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.green,
        borderWidth: 2,
      );
      Get.to(() => const TabsPage());
    } else {
      Get.snackbar(
        'Error !!',
        'Error logging in',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.red,
        borderWidth: 2,
      );
    }
  }
}
