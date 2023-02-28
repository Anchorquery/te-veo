import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';

class CheckPoint extends StatelessWidget {
  final String? text;
  const CheckPoint({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.check, size: 16.0, color: AppColors.whiteColor,),
          SizedBox(width: screenHeight(context) * 0.016),
          Text(text!,
            style: poppinsLight.copyWith(
              fontSize: body12,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}

