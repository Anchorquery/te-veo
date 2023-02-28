import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import '../../../client/beginning/beginning_screen.dart';

class PremiumBox extends StatelessWidget {
  const PremiumBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Publicacion Premium:',
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
              //color: boxOneColor,
              gradient: const LinearGradient(
                colors: [
                  AppColors.secondaryColor,
                  AppColors.orangeMainColor,
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
                  AppIcons.eye2Icon,
                  height: 50.0,
                ),
                SizedBox(height: screenHeight(context) * 0.016),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
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
                      Text('100',
                        style: poppinsBold.copyWith(
                          fontSize:  36.0,
                          color: AppColors.redColor,
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.01),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Publicaciones \n',
                          style: poppinsSemiBold.copyWith(
                            fontSize: body10,
                            color: AppColors.blackTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Destacadas por \nun monto de:',
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
                          color: AppColors.redColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.6),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Text(
                          '\$5.000',
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
