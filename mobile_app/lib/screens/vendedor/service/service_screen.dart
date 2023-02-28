import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/screens/screens.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/widgets/widgets.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return BackImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: SafeArea(
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
                    'Categoria:',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),

                /// dropdowmn
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.01),
                  child: AwesomeDropDown(
                    dropDownList: const [
                      "Restaurante",
                      "Limpieza",
                      "Lavado de autos",
                      "Fumigación",
                      "Hotel",
                      "Hotel",
                      "Hotel"
                    ],
                    numOfListItemToShow: 5,
                    dropDownIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.orangeMainColor,
                    ),
                    padding: 16,
                    selectedItem: 'Que vas a ofrecer?',
                    selectedItemTextStyle: poppinsRegular.copyWith(
                      fontSize: body16,
                      color: AppColors.greyLightColor,
                    ),
                    dropDownListTextStyle: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ),

                /// btn
                const Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.15),
                  child: CustomButton(
                    onTap: () {
                      Get.to(ServiceDetailScreen());
                    },
                    btnColor: AppColors.orangeMainColor,
                    btnText: 'Siguiente',
                    radius: 10,
                    fontSize: body18,
                  ),
                ),

                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
