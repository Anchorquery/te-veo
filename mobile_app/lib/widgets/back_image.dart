import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/constants.dart';


class BackImage extends StatelessWidget {
  final Widget? child;

  const BackImage({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        image: DecorationImage(
          image: AssetImage('assets/images/backImage.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
