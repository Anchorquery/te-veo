import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';

class PointsText extends StatelessWidget {

  final String text;
  final String textSelected;
  final void Function()? onTap;

  const PointsText({Key? key, required this.text, required this.textSelected, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:  textSelected == text ? AppColors.orangeMainColor  : AppColors.whiteColor,
                border: Border.all(
                  color: textSelected == text ? AppColors.orangeMainColor  : AppColors.greyColor,
                  width: 1.0,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Text(text,
              style: poppinsLight.copyWith(
                fontSize: body12,
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

