import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/screens/vendedor/upload_publication/upload_publication_screen.dart';
import 'package:te_veo_app/widgets/widgets.dart';

class AppBarUplaod extends StatelessWidget implements PreferredSizeWidget {

  final Widget? leading;
  const AppBarUplaod({super.key, this.leading});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: leading != null ? leading : const CustomBackButton(),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const UploadPublicationScreen()),
            icon: Image.asset(
              AppIcons.bagIcon,
              height: 20.0,
              width: 20.0,
            ),
          ),
        ],
      );
  }
}