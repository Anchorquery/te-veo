import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rate/rate.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/widgets/widgets.dart';

import '../search_category/search_category_screen.dart';

class RatePurchaseScreen extends StatefulWidget {
  const RatePurchaseScreen({Key? key}) : super(key: key);

  @override
  State<RatePurchaseScreen> createState() => _RatePurchaseScreenState();
}

class _RatePurchaseScreenState extends State<RatePurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:
              const Icon(CupertinoIcons.back, color: AppColors.orangeMainColor),
        ),
        centerTitle: false,
        title: Text(
          'Califica tu compra',
          style: poppinsMedium.copyWith(
            fontSize: 22.0,
            color: AppColors.blackTextColor,
          ),
        ),
      ),

      /// body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /// user box
          SizedBox(height: screenHeight(context) * 0.05),
          Container(
            width: screenWidth(context),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius10),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.3),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage(AppImages.userImage),
                ),
                SizedBox(width: screenHeight(context) * 0.016),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Miranda Torres',
                        style: poppinsSemiBold.copyWith(
                          fontSize: body18,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.004),
                      RichText(
                        text: TextSpan(
                          text: 'Categoria: ',
                          style: poppinsLight.copyWith(
                            fontSize: body10,
                            color: AppColors.blackTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Restaurante',
                              style: poppinsSemiBold.copyWith(
                                fontSize: body10,
                                color: AppColors.orangeMainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Ventas: ',
                          style: poppinsLight.copyWith(
                            fontSize: body10,
                            color: AppColors.blackTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: '201 ventas exitosas',
                              style: poppinsSemiBold.copyWith(
                                fontSize: body10,
                                color: AppColors.orangeMainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.004),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.star,
                              color: AppColors.orangeMainColor, size: 16.0),
                          Icon(Icons.star,
                              color: AppColors.orangeMainColor, size: 16.0),
                          Icon(Icons.star,
                              color: AppColors.orangeMainColor, size: 16.0),
                          Icon(Icons.star,
                              color: AppColors.orangeMainColor, size: 16.0),
                          Icon(Icons.star,
                              color: AppColors.orangeMainColor, size: 16.0),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Puntucación texts
          SizedBox(height: screenHeight(context) * 0.03),
          Center(
            child: Text(
              'Dinos cual es tu',
              style: poppinsLight.copyWith(
                fontSize: 25.0,
                color: AppColors.blackTextColor,
              ),
            ),
          ),
          Center(
            child: Text(
              'Puntucación',
              style: poppinsSemiBold.copyWith(
                fontSize: 25.0,
                color: AppColors.blackTextColor,
              ),
            ),
          ),

          /// tags
          SizedBox(height: screenHeight(context) * 0.03),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.03),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8.0),
                  child: Ink(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    //margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: AppColors.greyLightColor,
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      'Ahora no',
                      style: poppinsLight.copyWith(
                        fontSize: body16,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8.0),
                  child: Ink(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    //margin: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: AppColors.greyLightColor,
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      'Recordar más tarde',
                      style: poppinsLight.copyWith(
                        fontSize: body16,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// desc
          SizedBox(height: screenHeight(context) * 0.03),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'De esta manera puedes ',
                style: poppinsLight.copyWith(
                  fontSize: body10,
                  color: AppColors.greyColor,
                ),
                children: [
                  TextSpan(
                    text: 'contribuir a la comunidad \nde Ya te veo APP, ',
                    style: poppinsMedium.copyWith(
                      fontSize: body10,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                  TextSpan(
                    text: 'y ayudar a los vendedores',
                    style: poppinsLight.copyWith(
                      fontSize: body10,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// stars
          SizedBox(height: screenHeight(context) * 0.05),
          Center(
            child: Rate(
              iconSize: 40,
              color: AppColors.orangeMainColor,
              allowHalf: false,
              allowClear: true,
              initialValue: 1,
              readOnly: false,
              // ignore: avoid_print
              onChange: (value) => print(value),
            ),
          ),

          SizedBox(height: screenHeight(context) * 0.05),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenHeight(context) * 0.12,
            ),
            child: CustomButton(
              onTap: () {
                Get.to(SearchCategoryScreen());
              },
              btnColor: AppColors.orangeMainColor,
              btnTextColor: AppColors.whiteColor,
              btnText: 'Calificar',
              elevation: 2.0,
              radius: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
