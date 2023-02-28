import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/helpers/share_preferences.dart';
import 'package:te_veo_app/models/core/credentials.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dioPk;

class ServiceHttp {
  // Server's call to get data
  static Future<Map<String, dynamic>> serverCall(
      String endpointName, Map<String, dynamic> data) async {
    // Headers
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'x-access-token': Preferences.token
    };

    // Content
    String body = jsonEncode(data);
    // Response
    Map<String, dynamic> dataResponse = {};
    try {
      dataResponse = await http
          .post(
              Uri(
                  scheme: 'http',
                  host: '3.214.121.231',
                  path: '/bk/api/v1/$endpointName'),
              body: body,
              headers: headers)
          .then(
            (data) => json.decode(data.body),
          );
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error',
        'Server Error !! $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.red,
        borderWidth: 2,
      );
    }
    return dataResponse;
  }

  static Future serverPostCall(
      String endpointName, Map<String, dynamic> data) async {
    // Headers
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'x-access-token': Preferences.token
    };

    String body = jsonEncode(data);

    final res = await http.post(
        Uri(
            scheme: 'http',
            host: '3.214.121.231',
            path: '/bk/api/v1/$endpointName'),
        body: body,
        headers: headers);
    if (res.statusCode == 200) {
      return res;
    } else {
      Get.snackbar(
        'Error',
        'Server Error !! ${res.statusCode}',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        borderRadius: 10,
        margin: const EdgeInsets.all(10),
        borderColor: Colors.red,
        borderWidth: 2,
      );
      return false;
    }
  }

  static Future post(String endpoint, Map<String, dynamic> data) async {
    print("entrandoooo");
    final dio = new dioPk.Dio();
    dio.options.headers["x-access-token"] = Preferences.token;
    try {
      final response = await dio.post(
          'http://3.214.121.231/bk/api/v1/yateveo-mobile-product$endpoint',
          data: data,
          options: dioPk.Options(
            responseType: dioPk.ResponseType.plain,
          ));
      return response;
    } catch (e) {
      return false;
    }
  }

  static Future postFormData(String endpoint, FormData data) async {
    final dio = new dioPk.Dio();
    dio.options.headers["x-access-token"] = Preferences.token;
    try {
      final response = await dio.post(
          'http://3.214.121.231/bk/api/v1/yateveo-mobile-product$endpoint',
          data: data,
          options: dioPk.Options(
            responseType: dioPk.ResponseType.plain,
          ));
      return response;
    } catch (e) {
      return false;
    }
  }
}
