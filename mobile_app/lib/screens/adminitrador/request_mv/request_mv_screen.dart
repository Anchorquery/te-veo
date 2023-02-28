import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/screens/adminitrador/users/user_screen.dart';
import 'package:te_veo_app/widgets/back_image.dart';
import 'package:get/get.dart';

class RequestMVScreen extends StatefulWidget {
  const RequestMVScreen({Key? key}) : super(key: key);

  @override
  State<RequestMVScreen> createState() => _RequestMVScreenState();
}

class _RequestMVScreenState extends State<RequestMVScreen> {
  @override
  Widget build(BuildContext context) {
    return BackImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// appbar
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Container(
              height: 30.0,
              width: 30.0,
              padding: const EdgeInsets.only(right: 2.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.orangeMainColor,
              ),
              child: const Center(
                child: Icon(
                  CupertinoIcons.back,
                  color: AppColors.whiteColor,
                  size: 18.0,
                ),
              ),
            ),
          ),
          titleSpacing: 0.0,
          title: Text(
            'Respuestos MV',
            style: poppinsSemiBold.copyWith(
              fontSize: 24.0,
              color: AppColors.orangeMainColor,
            ),
          ),
        ),

        /// body
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// lorem ipsum texts
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
                    'tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse '
                    'ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.',
                    maxLines: 2,
                    style: poppinsLight.copyWith(
                      fontSize: body12,
                      color: AppColors.greyColor,
                    ),
                  ),
                ),

                /// tyre image
                SizedBox(height: screenHeight(context) * 0.06),
                Stack(
                  children: [
                    Image.asset(AppImages.tyreImage),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: screenHeight(context) * 0.15),
                        child: Image.asset(
                          AppIcons.alertRedIcon,
                          height: 24.0,
                          width: 24.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.28,
                      width: screenWidth(context),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          CupertinoIcons.forward,
                          color: AppColors.redColor,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),

                /// Vendedor (Hace 3 meses)
                SizedBox(height: screenHeight(context) * 0.03),
                Text(
                  'Vendedor (Hace 3 meses)',
                  style: poppinsRegular.copyWith(
                    fontSize: body14,
                    color: AppColors.greyColor,
                  ),
                ),

                /// stars
                Row(
                  children: const [
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 18.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 18.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 18.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 18.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 18.0),
                  ],
                ),

                /// texts
                SizedBox(height: screenHeight(context) * 0.01),
                Text(
                  '10 ventas concretadas',
                  style: poppinsRegular.copyWith(
                    fontSize: body14,
                    color: AppColors.greyColor,
                  ),
                ),

                /// Description box
                Stack(
                  children: [
                    Container(
                      width: screenWidth(context),
                      margin: const EdgeInsets.only(top: 12.0),
                      padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.02,
                        vertical: screenHeight(context) * 0.016,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius10),
                        color: AppColors.greyBoxColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Descripción del articulo',
                            style: poppinsRegular.copyWith(
                              fontSize: body16,
                              color: AppColors.greyTextColor,
                            ),
                          ),
                          SizedBox(height: screenHeight(context) * 0.01),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor '
                            'incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices '
                            'gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
                            style: poppinsRegular.copyWith(
                              fontSize: body12,
                              color: AppColors.greyTextColor,
                            ),
                          ),
                          SizedBox(height: screenHeight(context) * 0.02),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      right: 16.0,
                      child: Image.asset(
                        AppIcons.alertRedIcon,
                        height: 24.0,
                        width: 24.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),

                /// correct false button
                SizedBox(height: screenHeight(context) * 0.024),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      foregroundColor: AppColors.orangeMainColor,
                      child: const Icon(
                        Icons.close,
                        color: AppColors.whiteColor,
                        size: 40.0,
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    FloatingActionButton(
                      onPressed: () {
                        Get.to(UsersScreen());
                      },
                      backgroundColor: AppColors.redColor,
                      foregroundColor: AppColors.redColor,
                      child: const Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
