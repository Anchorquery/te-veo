import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import '../user_verification_screen.dart';

class UserBox extends StatelessWidget {
  const UserBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: (){
        Get.to(UserVerificationScreen());
      },
      child: Container(
        width: screenWidth(context),
        margin: EdgeInsets.only(
          left: screenHeight(context) * 0.024,
          right: screenHeight(context) * 0.024,
          top: screenHeight(context) * 0.016,
        ),
        padding: EdgeInsets.all(screenHeight(context) * 0.016),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(radius10),
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withOpacity(0.3),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(AppImages.userImage),
            ),
            SizedBox(width: screenHeight(context) * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Fresh and sweet (89 Ventas)',
                    style: poppinsMedium.copyWith(
                      fontSize: body16,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  Text(
                    'Propietario Sarah Montes',
                    style: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Icon(Icons.star,
                                color: AppColors.orangeMainColor,
                                size: 18.0),
                            Icon(Icons.star,
                                color: AppColors.orangeMainColor,
                                size: 18.0),
                            Icon(Icons.star,
                                color: AppColors.orangeMainColor,
                                size: 18.0),
                            Icon(Icons.star,
                                color: AppColors.orangeMainColor,
                                size: 18.0),
                            Icon(Icons.star,
                                color: AppColors.orangeMainColor,
                                size: 18.0),
                          ],
                        ),
                      ),
                      const Icon(Icons.more_vert,
                          color: AppColors.greyColor, size: 22.0),
                    ],
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
