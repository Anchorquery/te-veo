import 'package:flutter/material.dart';
import 'package:te_veo_app/screens/client/beginning/beginning_screen.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';

class MembriasBox extends StatelessWidget {
  const MembriasBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Membresias:',
            textAlign: TextAlign.center,
            style: poppinsLight.copyWith(
              fontSize: body16,
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: screenHeight(context) * 0.016),
          Container(
            width: screenWidth(context),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius10),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.6),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Image.asset(
                  AppIcons.goldEyeIcon,
                  height: 50.0,
                ),
                SizedBox(height: screenHeight(context) * 0.016),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius10),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.brownDarkColor,
                        AppColors.goldColor,
                        AppColors.goldColor,
                        AppColors.brownDarkColor,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor.withOpacity(0.6),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Pyme \ncertificada',
                        textAlign: TextAlign.center,
                        style: poppinsBold.copyWith(
                          fontSize: body18,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.01),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              'Esta opción se cancelara por un monto anual de:',
                          style: poppinsSemiBold.copyWith(
                            fontSize: body10,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.016),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.6),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Text(
                          '\$10.000',
                          style: poppinsSemiBold.copyWith(
                            fontSize: body16,
                            color: AppColors.goldColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(BeginningScreen());
            },
            child: Text(
              'Ver detalles',
              style: poppinsSemiBold.copyWith(
                fontSize: body16,
                color: AppColors.blackTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
