import 'package:flutter/material.dart';
import 'package:te_veo_app/widgets/back_image.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'components/membrias_box.dart';
import 'components/plan_box.dart';
import 'components/premium_box.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    return BackImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// body
        body: SafeArea(
          child: SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// texts
                  SizedBox(height: screenHeight(context) * 0.01),
                  Text(
                    '¡No te pierdas de',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body30,
                      color: AppColors.orangeMainColor,
                    ),
                  ),

                  ///
                  SizedBox(height: screenHeight(context) * 0.01),
                  Text(
                    'nuestros planes!',
                    style: poppinsLight.copyWith(
                      fontSize: body24,
                      color: AppColors.orangeMainColor,
                    ),
                  ),

                  /// plans boxes
                  SizedBox(height: screenHeight(context) * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.03),
                    child: Row(
                      children: [
                        const PlanBox(
                          boxOneColor: AppColors.orangeMainColor,
                          boxTwoColor: AppColors.orangeMainColor,
                          titleText: 'Publicacion Basica: \n',
                          mapaPath: AppIcons.mapa5Icon,
                          descOneText: 'Publicaciones',
                          descTwoText: ' Normales por un monto de:',
                          priceText: '\$1.000',
                        ),
                        SizedBox(width: screenHeight(context) * 0.02),
                        const PlanBox(
                          boxOneColor: AppColors.orangeMainColor,
                          boxTwoColor: AppColors.orangeMainColor,
                          titleText: 'Publicacion Basica \nDestacada',
                          mapaPath: AppIcons.mapa5Icon,
                          descOneText: 'Publicaciones destacadas',
                          descTwoText: ' por un monto de:',
                          priceText: '\$2.000',
                        ),
                      ],
                    ),
                  ),

                  ///
                  SizedBox(height: screenHeight(context) * 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.03),
                    child: Row(
                      children: [
                        const PlanBox(
                          boxOneColor: AppColors.orangeDarkColor,
                          boxTwoColor: AppColors.orangeDarkColor,
                          titleText: 'Publicacion Basica: \n',
                          mapaPath: AppIcons.mapa5Icon,
                          descOneText: 'Publicaciones',
                          descTwoText: ' Normales por un monto de:',
                          priceText: '\$1.000',
                        ),
                        SizedBox(width: screenHeight(context) * 0.02),
                        const PlanBox(
                          boxOneColor: AppColors.orangeDarkColor,
                          boxTwoColor: AppColors.orangeDarkColor,
                          titleText: 'Publicacion Basica \nDestacada',
                          mapaPath: AppIcons.mapa5Icon,
                          descOneText: 'Publicaciones destacadas',
                          descTwoText: ' por un monto de:',
                          priceText: '\$2.000',
                        ),
                      ],
                    ),
                  ),

                  /// premium
                  SizedBox(height: screenHeight(context) * 0.03),
                  const PremiumBox(),

                  /// Membresias:
                  SizedBox(height: screenHeight(context) * 0.03),
                  const MembriasBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
