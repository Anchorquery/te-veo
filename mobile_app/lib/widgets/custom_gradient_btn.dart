import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/app_colors.dart';
import 'package:te_veo_app/constants/app_text_styles.dart';

class CustomGradientButton extends StatelessWidget {
  final String? btnText;
  final Color? btnColorOne;
  final Color? btnColorTwo;
  final Color? btnTextColor;
  final Color? boxShadowColor;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final double? width;
  final EdgeInsets? margin;
  final Widget? btnRow;
  final double? borderRadius;
  final double? btnHeight;
  final double? btnTextSize;

  const CustomGradientButton({
    Key? key,
    required this.btnText,
    this.btnColorOne = AppColors.orangeMainColor,
    this.btnColorTwo = AppColors.secondaryColor,
    this.btnTextColor = Colors.white,
    this.boxShadowColor = AppColors.greyColor,
    this.padding,
    required this.onTap,
    this.width,
    this.margin,
    this.btnRow,
    this.borderRadius = 8.0,
    this.btnHeight = 50.0,
    this.btnTextSize = 22.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius!),
        gradient: LinearGradient(
          colors: [
            btnColorOne!,
            btnColorTwo!,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
        /* boxShadow: [
          BoxShadow(
            color: boxShadowColor!,
            blurRadius: 5.0,
            offset: const Offset(5.0, 5.0),
          ),
          BoxShadow(
            color: boxShadowColor!,
            blurRadius: 5.0,
            offset: const Offset(-5.0, 0.0),
          ),
        ],*/
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            Size(width ?? MediaQuery.of(context).size.width, btnHeight!),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
          ),
        ),
        child: btnRow ??
            Center(
              child: Text(
                btnText!,
                style: poppinsMedium.copyWith(
                  fontSize: btnTextSize,
                  color: btnTextColor,
                ),
              ),
            ),
      ),
    );
  }
}
