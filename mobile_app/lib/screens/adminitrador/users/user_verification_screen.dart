import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/screens/adminitrador/chat/chat_screen.dart';
import 'package:te_veo_app/screens/adminitrador/users/components/user_detail_box.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';

class UserVerificationScreen extends StatefulWidget {
  const UserVerificationScreen({Key? key}) : super(key: key);

  @override
  State<UserVerificationScreen> createState() => _UserVerificationScreenState();
}

class _UserVerificationScreenState extends State<UserVerificationScreen> {
  String typeVal = 'Premiun';

  /// user type dropdown items
  List<DropdownMenuItem<String>> get typeDropDown {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Premiun", child: Text("Premiun")),
      const DropdownMenuItem(value: "Premiun 1", child: Text("Premiun 1")),
      const DropdownMenuItem(value: "Premiun 2", child: Text("Premiun 2")),
      const DropdownMenuItem(value: "Premiun 3", child: Text("Premiun 3")),
      const DropdownMenuItem(value: "Premiun 4", child: Text("Premiun 4")),
    ];
    return menuItems;
  }

  bool? isQuit = false;
  bool? isVerify = false;

  void isVerifyFun() {
    setState(() {
      isVerify != isVerify;
    });
  }

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
            onPressed: () {
              Get.back();
            },
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
          centerTitle: true,
          titleSpacing: 0.0,
          title: Column(
            children: [
              Text(
                'Air Life',
                style: poppinsMedium.copyWith(
                  fontSize: body30,
                  color: AppColors.orangeMainColor,
                ),
              ),
              Text(
                '150 ventas en total',
                style: poppinsLight.copyWith(
                  fontSize: body16,
                  color: AppColors.greyLightColor,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.greyColor,
                size: 30,
              ),
            ),
          ],
        ),

        /// body
        body: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// user image
                SizedBox(height: screenHeight(context) * 0.03),
                const Center(
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: AppColors.redColor,
                    child: CircleAvatar(
                      radius: 83.5,
                      backgroundColor: AppColors.whiteColor,
                      child: CircleAvatar(
                        radius: 82,
                        backgroundImage: AssetImage(AppImages.userImage),
                      ),
                    ),
                  ),
                ),

                /// stars
                SizedBox(height: screenHeight(context) * 0.01),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 28.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 28.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 28.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 28.0),
                    Icon(Icons.star,
                        color: AppColors.orangeMainColor, size: 28.0),
                  ],
                ),

                /// email
                const UserDetailBox(
                  headText: 'Email',
                  dateText: 'Alexprin2001@gmail.com',
                  isAlert: true,
                ),

                /// Teléfono
                const UserDetailBox(
                  headText: 'Teléfono',
                  dateText: '+51 009 786 665',
                ),

                /// Métodos de pago
                const UserDetailBox(
                  headText: 'Métodos de pago',
                  dateText: 'PayPal, Zelle, American express',
                ),

                /// Tipo de usuario text
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight(context) * 0.024,
                    right: screenHeight(context) * 0.024,
                    top: screenHeight(context) * 0.016,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Tipo de usuario',
                        style: poppinsMedium.copyWith(
                          fontSize: body20,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                      Container(
                        height: 34,
                        width: screenWidth(context),
                        margin: const EdgeInsets.only(top: 6.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.016,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppColors.orangeMainColor,
                        ),
                        child: DropdownButton(
                          value: typeVal,
                          items: typeDropDown,
                          dropdownColor: AppColors.orangeMainColor,
                          style: poppinsLight.copyWith(
                            fontSize: body12,
                            color: AppColors.whiteColor,
                          ),
                          underline: const SizedBox(),
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                          ),
                          isExpanded: true,
                          onChanged: (String? val) {
                            setState(() {
                              typeVal = val!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight(context) * 0.04),

                /// check box
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isQuit = !isQuit!;
                                });
                              },
                              child: Container(
                                height: 18.0,
                                width: 18.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: isQuit == true
                                      ? AppColors.redColor
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                    color: AppColors.redColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.whiteColor,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenHeight(context) * 0.016),
                            Text(
                              'Quitar Accseso',
                              style: poppinsLight.copyWith(
                                fontSize: body14,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVerify = !isVerify!;
                                });
                              },
                              child: Container(
                                height: 18.0,
                                width: 18.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: isVerify == true
                                      ? AppColors.redColor
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                    color: AppColors.redColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    color: AppColors.whiteColor,
                                    size: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenHeight(context) * 0.016),
                            Text(
                              'Verificar Usuario',
                              style: poppinsLight.copyWith(
                                fontSize: body14,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// btns
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.04),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onTap: () {},
                          btnText: 'Cancelar',
                          btnColor: AppColors.redColor,
                          fontSize: body14,
                          height: 36,
                          radius: radius12,
                        ),
                      ),
                      SizedBox(width: screenHeight(context) * 0.04),
                      Expanded(
                        child: CustomButton(
                          onTap: () {
                            Get.to(const ChatScreen());
                          },
                          btnText: 'Guardar',
                          btnColor: AppColors.redColor,
                          fontSize: body14,
                          height: 36,
                          radius: radius12,
                        ),
                      ),
                    ],
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
