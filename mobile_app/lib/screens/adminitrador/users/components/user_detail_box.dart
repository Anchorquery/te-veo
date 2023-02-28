import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';

class UserDetailBox extends StatelessWidget {
  final bool? isAlert;
  final String? headText;
  final String? dateText;

  const UserDetailBox({
    Key? key,
    this.isAlert = false,
    required this.headText,
    required this.dateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenHeight(context) * 0.024,
        right: screenHeight(context) * 0.024,
        top: screenHeight(context) * 0.016,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            headText!,
            style: poppinsMedium.copyWith(
              fontSize: body20,
              color: AppColors.blackTextColor,
            ),
          ),
          Stack(
            children: [
              Container(
                width: screenWidth(context),
                margin: EdgeInsets.only(top: isAlert == true ? 12.0 : 6.0),
                padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.016,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.orangeMainColor,
                ),
                child: Text(
                  dateText!,
                  style: poppinsLight.copyWith(
                    fontSize: body14,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              isAlert == true
                  ? Positioned(
                      right: 8.0,
                      top: 0.0,
                      child: Image.asset(
                        AppIcons.alertRedIcon,
                        height: 20.0,
                        width: 20.0,
                        fit: BoxFit.fill,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
