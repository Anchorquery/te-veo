import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'components/check_point.dart';

class ServiceCoveredScreen extends StatefulWidget {
  const ServiceCoveredScreen({Key? key}) : super(key: key);

  @override
  State<ServiceCoveredScreen> createState() => _ServiceCoveredScreenState();
}

class _ServiceCoveredScreenState extends State<ServiceCoveredScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.mapImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: screenWidth(context),
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  topLeft: Radius.circular(16.0),
                ),
                color: AppColors.orangeMainColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// top texts
                  Text(
                    'Zonas que cubre el servicio',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body18,
                      color: AppColors.whiteColor,
                    ),
                  ),

                  /// dropdown
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AwesomeDropDown(
                          dropDownList: const [
                            "The Lighthouse",
                            "Classic Rose",
                            "Frewen Insurance Agency Inc",
                            "The Lighthouse",
                            "Classic Rose",
                            "Frewen Insurance Agency Inc",
                          ],
                          numOfListItemToShow: 4,
                          dropDownIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                          ),
                          dropDownBGColor: AppColors.orangeMainColor,
                          dropDownOverlayBGColor: AppColors.orangeDarkColor,
                          padding: 10,
                          selectedItem: 'Nirmala girls 4423',
                          selectedItemTextStyle: poppinsRegular.copyWith(
                            fontSize: body16,
                            color: AppColors.whiteColor,
                          ),
                          dropDownListTextStyle: poppinsLight.copyWith(
                            fontSize: 10.0,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 30.0,
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.orangeDarkColor,
                              blurRadius: 8.0,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          AppImages.mapaImage,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight(context) * 0.12),

                  /// top texts
                  Text(
                    'Max 5 locaciones',
                    style: poppinsLight.copyWith(
                      fontSize: body12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  SizedBox(height: screenHeight(context) * 0.02),

                  /// points
                  Container(
                    width: screenWidth(context),
                    padding: EdgeInsets.all(screenHeight(context) * 0.016),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius10),
                      color: AppColors.orangeDarkColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CheckPoint(
                          text: 'BankWest of Kansas',
                        ),
                        CheckPoint(
                          text: 'Krien Pharmacy',
                        ),
                        CheckPoint(
                          text: 'James M Milliken Chartered',
                        ),
                      ],
                    ),
                  ),

                  /// btn
                  SizedBox(height: screenHeight(context) * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.13),
                    child: CustomButton(
                      height: 40,
                      onTap: () {
                        Get.to(PlanScreen());
                      },
                      btnColor: AppColors.whiteColor,
                      btnText: 'Siguiente',
                      radius: 10,
                      fontSize: body18,
                      btnTextColor: AppColors.orangeMainColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
