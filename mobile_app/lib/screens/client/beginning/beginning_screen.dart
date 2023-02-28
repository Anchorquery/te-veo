import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/controllers/gps_controller.dart';
import 'package:te_veo_app/screens/registro/login/login_screen.dart';
import 'package:te_veo_app/screens/registro/register/register_screen.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'package:get/get.dart';

class BeginningScreen extends StatefulWidget {
  const BeginningScreen({Key? key}) : super(key: key);

  @override
  State<BeginningScreen> createState() => _BeginningScreenState();
}

class _BeginningScreenState extends State<BeginningScreen> {
  @override
  Widget build(BuildContext context) {
    final gpsController =  Get.put(GpsController());
    return SafeArea(
      child: BackImage(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const LogoTeVeo(),
                SizedBox(height: screenHeight(context) * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * 0.12,
                  ),
                  child: CustomButton(
                    onTap: () {
                      Get.to(() => const LoginScreen());
                    },
                    btnText: 'Iniciar sesión',
                    btnColor: AppColors.orangeMainColor,
                    radius: 12.0,
                    elevation: 2.0,
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth(context) * 0.12,
                  ),
                  child: CustomGradientButton(
                    onTap: () {
                      Get.to(() => const RegisterScreen());
                    },
                    btnText: 'Resgristrar',
                    btnColorOne: AppColors.orangeMainColor,
                    btnColorTwo: AppColors.secondaryColor,
                    borderRadius: 12.0,
    
                    ///elevation: 2.0,
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
