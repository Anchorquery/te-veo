import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'service_covered_screen.dart';

class ServiceDetailScreen extends StatefulWidget {
  const ServiceDetailScreen({Key? key}) : super(key: key);

  @override
  State<ServiceDetailScreen> createState() => _ServiceDetailScreenState();
}

class _ServiceDetailScreenState extends State<ServiceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// body
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// texts
                SizedBox(height: screenHeight(context) * 0.03),
                Center(
                  child: Text(
                    'Voy a vender un',
                    style: poppinsLight.copyWith(
                      fontSize: 24.0,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Servicio',
                    style: poppinsMedium.copyWith(
                      fontSize: 30.0,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ),

                /// texts
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Carga tus fotos',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),

                /// add image box
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight(context) * 0.03),
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight(context) * 0.2,
                        width: screenHeight(context) * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(radius10),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.atachImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            AppImages.attachImage,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.orangeMainColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColors.whiteColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight(context) * 0.04),
                  child: Text(
                    'Max  8 fotos',
                    style: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.greyTextColor,
                    ),
                  ),
                ),

                /// desc texts
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Descripción del producto:',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),

                /// field
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    minLines: 7,
                    maxLines: 10,
                    style: poppinsLight.copyWith(
                      fontSize: body12,
                      color: AppColors.greyTextColor,
                    ),
                    decoration: InputDecoration(
                      hintText:
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod '
                          'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, '
                          'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                          '\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                          'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,'
                          ' sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut '
                          'perspiciatis unde omnis iste natus error sit voluptatem accusantium '
                          'doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo '
                          'inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'
                          ' Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,'
                          ' sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.'
                          ' Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, '
                          'adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et '
                          'dolore magnam aliquam quaerat voluptatem.',
                      hintStyle: poppinsLight.copyWith(
                        fontSize: 10.0,
                        color: AppColors.greyTextColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius10),
                      ),
                    ),
                  ),
                ),

                /// btn
                SizedBox(height: screenHeight(context) * 0.1),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.15),
                  child: CustomButton(
                    onTap: () {
                      Get.to(ServiceCoveredScreen());

                      ///Get.to(BeginningScreen());
                    },
                    btnColor: AppColors.orangeMainColor,
                    btnText: 'Siguiente',
                    radius: 10,
                    fontSize: body18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
