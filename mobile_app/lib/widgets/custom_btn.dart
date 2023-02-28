import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';


class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;
  final double? elevation;
  final String? btnText;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    this.width,
    this.height = 50.0,
    this.radius,
    this.elevation = 0.0,
    this.fontSize = 22.0,
    this.btnText = 'Button Text',
    this.btnColor = AppColors.redColor,
    this.btnTextColor = AppColors.whiteColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: width == null  ? Size(MediaQuery.of(context).size.width, height!) : Size(width!, height!),
        maximumSize:  width == null  ? Size(MediaQuery.of(context).size.width, height!) : Size(width!, height!),
        backgroundColor: btnColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 18.0),
        ),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          btnText!,
          style: poppinsMedium.copyWith(
            color: btnTextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}