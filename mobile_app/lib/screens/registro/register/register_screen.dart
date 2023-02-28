import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/services/services.dart';
import 'package:te_veo_app/widgets/widgets.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String phoneData = '';

  bool isVisible = true;

  void isVisibleFun() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackImage(
        child: Scaffold(
          backgroundColor: Colors.transparent,
    
          /// body
          body:  SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// eye images
                  SizedBox(height: screenHeight(context) * 0.001),

                  const LogoTeVeo(),
    
                  /// register text
                  SizedBox(height: screenHeight(context) * 0.02),
                  Center(
                    child: Text(
                      'Registrar',
                      style: poppinsSemiBold.copyWith(
                        fontSize: heading40,
                        color: AppColors.blackTextColor,
                      ),
                    ),
                  ),
    
                  /// name and surname fields
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            controller: nameController,
                            hintText: 'Lucia',
                            headingText: 'Nombre',
                            keyboardType: TextInputType.name,
    
                            ///focusNode: FocusNode(),
                          ),
                        ),
                        SizedBox(width: screenHeight(context) * 0.016),
                        Expanded(
                          child: CustomTextField(
                            controller: surNameController,
                            hintText: 'Hérnandez',
                            headingText: 'Apellidos',
                            keyboardType: TextInputType.name,
    
                            ///focusNode: FocusNode(),
                          ),
                        ),
                      ],
                    ),
                  ),
    
                  /// email fields
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024,
                    ),
                    child: CustomTextField(
                      controller: emailController,
                      hintText: 'Mati12or@gmail.com',
                      headingText: 'Correo electronico',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
    
                  /// password fields
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024,
                    ),
                    child: CustomTextField(
                      controller: passController,
                      hintText: '••••••••••••••',
                      headingText: 'Contraseña',
                      keyboardType: TextInputType.text,
                      obscureText: isVisible,
                      suffixIcon: IconButton(
                        onPressed: isVisibleFun,
                        icon: const Icon(Icons.remove_red_eye_rounded,
                            color: AppColors.greyColor),
                      ),
                    ),
                  ),
    
                  /// phone number fields
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.024,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Teléfono',
                            style: poppinsMedium.copyWith(
                              fontSize: body20,
                              color: AppColors.orangeMainColor,
                            ),
                          ),
                        ),
                        IntlPhoneField(
                          showCountryFlag: false,
                          dropdownIcon: const Icon( FontAwesomeIcons.chevronDown, color: AppColors.orangeMainColor, size: 20, ),
                          dropdownIconPosition: IconPosition.trailing,
                          flagsButtonPadding: const EdgeInsets.only(left: 15),
                          dropdownTextStyle: TextStyle( fontWeight: FontWeight.w700, fontSize: 22 ),
                          style: const TextStyle(color: AppColors.greyColor),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(radius10),
                              borderSide: const BorderSide(
                                color: AppColors.greyLightColor,
                              ),
                            ),
                          ),
                          initialCountryCode: 'US',
                          invalidNumberMessage: "",
                          onChanged: (phone) {
                            phoneData = phone.completeNumber;
                          },
                        ),
                      ],
                    ),
                  ),
    
                  /// btn
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.12),
                    child: CustomButton(
                      onTap: () => AuthService.registerUser(
                                      email: emailController.text,
                                      password: passController.text,
                                      name: nameController.text,
                                      surName: surNameController.text, 
                                      phoneData: phoneData
                                   ),
                      btnText: 'Continuar',
                    ),
                  ),
    
                  /// text
                  SizedBox(height: screenHeight(context) * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: poppinsLight.copyWith(
                        fontSize: body12,
                        color: AppColors.greyColor,
                      ),
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