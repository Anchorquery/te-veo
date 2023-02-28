import 'package:flutter/material.dart';
import 'package:te_veo_app/services/services.dart';
import 'package:te_veo_app/widgets/widgets.dart';

import 'package:te_veo_app/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isVisible = true;

  void isVisibleFun() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0, left: 10, right: 10 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// eye images
                SizedBox(height: screenHeight(context) * 0.04),
                const LogoTeVeo(),

                /// Iniciar Sesión text
                SizedBox(height: screenHeight(context) * 0.10),
                Center(
                  child: Text(
                    'Iniciar Sesión',
                    style: poppinsSemiBold.copyWith(
                      fontSize: heading32,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ),

                /// email fields
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.024,
                  ),
                  child: CustomTextField(
                    controller: emailController,
                    hintText: 'Mati12or@gmail.com',
                    headingText: 'Correo electronico',
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),

                /// password fields
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.024,
                  ),
                  child: CustomTextField(
                    controller: passController,
                    hintText: '••••••••••••••',
                    headingText: 'Contraseña',
                    keyboardType: TextInputType.text,
                    obscureText: isVisible,
                    suffixIcon: IconButton(
                      onPressed: isVisibleFun,
                      icon: const Icon(Icons.remove_red_eye_rounded,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),

                /// btn
                SizedBox(height: screenHeight(context) * 0.08),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.12),
                  child: CustomButton(
                    onTap: () => AuthService.login(emailController.text, passController.text),
                    btnText: 'Entrar',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
