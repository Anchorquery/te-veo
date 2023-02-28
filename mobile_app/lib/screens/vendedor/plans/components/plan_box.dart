import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import '../../../client/beginning/beginning_screen.dart';

class PlanBox extends StatelessWidget {
  final Color? boxOneColor;
  final Color? boxTwoColor;
  final String? titleText;
  final String? mapaPath;
  final String? descOneText;
  final String? descTwoText;
  final String? priceText;
  final double? iconHeight;
  final String? eyeIconPath;

  const PlanBox({
    Key? key,
    required this.boxOneColor,
    required this.boxTwoColor,
    required this.titleText,
    required this.mapaPath,
    required this.descOneText,
    required this.descTwoText,
    required this.priceText,
    this.iconHeight = 30.0,
    this.eyeIconPath = AppIcons.eyeIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titleText!,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: poppinsLight.copyWith(
              fontSize: body12,
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: screenHeight(context) * 0.016),
          Container(
            width: screenWidth(context),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius10),
              //color: boxOneColor,
              gradient: LinearGradient(
                colors: [
                  boxOneColor!,
                  boxTwoColor!,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
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
                Image.asset(
                  eyeIconPath!,
                  height: iconHeight,
                ),
                SizedBox(height: screenHeight(context) * 0.016),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
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
                        mapaPath!,
                        height: 40,
                      ),
                      SizedBox(height: screenHeight(context) * 0.01),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: descOneText,
                          style: poppinsSemiBold.copyWith(
                            fontSize: body10,
                            color: AppColors.blackTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: descTwoText,
                              style: poppinsLight.copyWith(
                                fontSize: body10,
                                color: AppColors.greyTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.016),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: AppColors.orangeMainColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.6),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Text(
                          priceText!,
                          style: poppinsSemiBold.copyWith(
                            fontSize: body16,
                            color: AppColors.whiteColor,
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
            onPressed: (){
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
