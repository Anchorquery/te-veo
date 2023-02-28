import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/app_images.dart';
import 'package:te_veo_app/constants/app_sizes.dart';

class LogoTeVeo extends StatelessWidget {
  const LogoTeVeo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        AppImages.yaTeVeoLogo,
        width: screenWidth(context) * 0.85,
        fit: BoxFit.fill,
    );
  }
}
