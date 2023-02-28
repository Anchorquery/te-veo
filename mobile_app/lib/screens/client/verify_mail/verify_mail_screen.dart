import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/screens/registro/login/login_screen.dart';
import 'package:te_veo_app/services/auth_services.dart';

import 'package:te_veo_app/widgets/widgets.dart';
import '../rate_purchase/rate_purchase_screen.dart';

class VerifyMailScreen extends StatefulWidget {
  const VerifyMailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyMailScreen> createState() => _VerifyMailScreenState();
}

String otp = "";
bool isloading = false;
class _VerifyMailScreenState extends State<VerifyMailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            isloading == true ? null : Get.back();
          },
          icon:
              const Icon(CupertinoIcons.back, color: AppColors.orangeMainColor, size: 40,),
        ),
        centerTitle: false,
        title: Text(
          'Verifica tu email',
          style: poppinsLight.copyWith(
            fontSize: 25.sp,
            color: AppColors.blackTextColor,
          ),
        ),
      ),

      /// body
      body: Stack(
        children:
        [ GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// pin fields
                SizedBox(height: screenHeight(context) * 0.04),
                Center(
                  child: Pinput(
                    onChanged: (value) {
                      otp = value;
                    },
                    onCompleted: (value) {
                      verifyOtp();
                    },
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    defaultPinTheme: PinTheme(
                        height: 55.0,
                        width: 55.0,
                        textStyle: poppinsSemiBold.copyWith(
                          fontSize: 22.0,
                          color: AppColors.whiteColor,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.greyLightColor,
                              blurRadius: 4.0,
                            ),
                          ],
                          border: Border.all(
                            color: AppColors.greyLightColor,
                          ),
                        )),
                    submittedPinTheme: PinTheme(
                        height: 55.0,
                        width: 55.0,
                        textStyle: poppinsSemiBold.copyWith(
                          fontSize: 22.0,
                          color: AppColors.whiteColor,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.orangeMainColor,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.orangeMainColor,
                              blurRadius: 4.0,
                            ),
                          ],
                          border: Border.all(
                            color: AppColors.orangeMainColor,
                          ),
                        )),
                  ),
                ),
        
                /// texts
                SizedBox(height: screenHeight(context) * 0.03),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Igresa el codigo de  ',
                      style: poppinsLight.copyWith(
                        fontSize: body16,
                        color: AppColors.greyColor,
                      ),
                      children: [
                        TextSpan(
                          text: '4 digitos',
                          style: poppinsMedium.copyWith(
                            fontSize: body15,
                            color: AppColors.orangeMainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        
                /// btns
                SizedBox(height: screenHeight(context) * 0.08),
                _otp_resent_top(textButton: "Reenviar codigo", onpress: resentCodigo
                ),
        
                SizedBox(height: screenHeight(context) * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenHeight(context) * 0.12,
                  ),
                  child: CustomButton(
                    onTap: () {
                      if(otp.length == 4){
                        verifyOtp();
                        return;
                      }
                      mosrtarAlerta(context, "Error", "Codigo de verificación incorrecto");
                    },
                    btnColor: AppColors.orangeMainColor,
                    btnTextColor: AppColors.whiteColor,
                    btnText: 'Siguiente',
                    elevation: 2.0,
                    radius: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        //const loadingFullScreen()
        ]
      ),
    );
  }

  void verifyOtp() async {
      final res = await AuthService.verifyOtp(otp);
      if(res == "Codigo Incorrecto"){
        mosrtarAlerta(context, "Error", res);
      }else{
        Get.to(LoginScreen());
        mosrtarAlerta(context, "Validacion exitosa", res);
      }
  }


  void resentCodigo() async {
    final res = await AuthService.resentCodigo();
    mosrtarAlerta(context,res,null);
  }
}

class _otp_resent_top extends StatelessWidget {

  final String textButton;
  final void Function()? onpress;
  const _otp_resent_top({
    super.key, required this.textButton, this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: TextButton(
        onPressed: onpress,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          backgroundColor: AppColors.whiteColor,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
        child: Text(textButton, style: poppinsLight.copyWith(
              fontSize: body15,
              color: const Color(0xFF4F4F4F),
            )),

      ),
    );
  }
}




// class loadingFullScreen extends StatelessWidget {
//   const loadingFullScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       decoration: BoxDecoration(
//         color: Color.fromRGBO(255, 172, 27, 0.8)
//       ),
//       child: Center(
//         child: CircularProgressIndicator(
//           color: AppColors.blackTextColor,
//         ),
//       ),
//     );
//   }
// }