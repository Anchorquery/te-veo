import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/screens/screens.dart';

import 'package:te_veo_app/constants/constants.dart';

class NearResBox extends StatelessWidget {
  final String? nameText;
  final String? descOneText;
  final String? descTwoText;
  final String? priceText;
  final void Function()? onTap;

  const NearResBox({
    Key? key,
    required this.nameText,
    required this.descOneText,
    required this.descTwoText,
    required this.priceText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          left: screenHeight(context) * 0.03,
          right: screenHeight(context) * 0.03,
          top: screenHeight(context) * 0.02,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(radius10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.greyLightColor.withOpacity(0.7),
                    blurRadius: 4.0,
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage(AppImages.restaurantImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: screenHeight(context) * 0.016),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    nameText!,
                    style: poppinsMedium.copyWith(
                      fontSize: body16,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 0.004),
                  Text(
                    descOneText!,
                    style: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  descTwoText == null 
                   ? Text(
                    descTwoText!,
                    style: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.blackTextColor,
                    ),
                  )
                  : SizedBox(),
                  Text(
                    priceText!,
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
