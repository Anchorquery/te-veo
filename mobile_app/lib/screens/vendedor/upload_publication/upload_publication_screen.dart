import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'package:get/route_manager.dart';

class UploadPublicationScreen extends StatefulWidget {
  const UploadPublicationScreen({Key? key}) : super(key: key);

  @override
  State<UploadPublicationScreen> createState() =>
      _UploadPublicationScreenState();
}

class _UploadPublicationScreenState extends State<UploadPublicationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackImage(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          /// body
          body: SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Stack(
              children: 
              [ 
                  Positioned(
                    top: screenHeight(context) * 0.049,
                    left: 20,
                    child: const CustomBackButton()
                  ),            
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// texts
                    SizedBox(height: screenHeight(context) * 0.05),
                    Text(
                      '¡Sube tu primera',
                      style: poppinsLight.copyWith(
                        fontSize: 24.0,
                        color: AppColors.orangeMainColor,
                      ),
                    ),
                    Text(
                      'Publicación!',
                      style: poppinsMedium.copyWith(
                        fontSize: 30.0,
                        color: AppColors.orangeMainColor,
                      ),
                    ),
                
                    /// vay a vendor text
                    SizedBox(height: screenHeight(context) * 0.1),
                    Text(
                      'Voy a vender:',
                      style: poppinsLight.copyWith(
                        fontSize: body16,
                        color: AppColors.greyColor,
                      ),
                    ),
                
                    /// btns
                    SizedBox(height: screenHeight(context) * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.12),
                      child: CustomButton(
                        onTap: () {
                          Get.to(ProductScreen());
                        },
                        btnText: 'Un producto',
                        fontSize: body16,
                        height: 40,
                        radius: 10,
                        btnColor: AppColors.orangeTextColor,
                      ),
                    ),
                
                    SizedBox(height: screenHeight(context) * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.12),
                      child: CustomButton(
                        onTap: () {
                          Get.to(ServiceScreen());
                        },
                        btnText: 'Un servicio',
                        fontSize: body16,
                        height: 40,
                        radius: 10,
                      ),
                    ),
                
                    const Expanded(child: SizedBox()),
                
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.15),
                      child: CustomButton(
                        onTap: () {},
                        btnText: 'Siguiente',
                        fontSize: body16,
                        height: 40,
                        radius: 10,
                        btnColor: AppColors.orangeTextColor,
                      ),
                    ),
                    SizedBox(height: screenHeight(context) * 0.03),
                  ],
              )
            ]
            ),
          ),
        ),
      ),
    );
  }
}
