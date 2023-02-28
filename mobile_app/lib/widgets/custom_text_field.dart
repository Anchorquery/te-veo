import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final bool? isHead;
  final String? headingText;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final void Function(String)? onchaged;

  const CustomTextField({
    Key? key,
    this.isHead = true,
    this.headingText,
    this.obscureText = false,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.focusNode,
    this.onchaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isHead == true
            ? Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                  headingText!,
                  style: poppinsMedium.copyWith(
                    fontSize: body20,
                    color: AppColors.orangeMainColor,
                  ),
                ),
            )
            : const SizedBox(),
        isHead == true ? const SizedBox(height: 4.0) : const SizedBox(),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.17),
                  offset: const Offset(0,0),
                  blurRadius: 24
                )
              ]
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText!,
            onChanged: onchaged,
            focusNode: focusNode,
            style: poppinsLight.copyWith(
              fontSize: body16,
              color: AppColors.greyColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(252, 252, 252,1),
              contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
              hintText: hintText!,
              hintStyle: poppinsLight.copyWith(
                fontSize: body16,
                color: AppColors.greyColor,
              ),
              suffixIcon: suffixIcon ?? const SizedBox(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius10),
                borderSide: const BorderSide(
                  color: AppColors.greyLightColor,
                  width: 0.6,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius10),
                borderSide: const BorderSide(
                  color: AppColors.orangeMainColor,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius10),
                borderSide: const BorderSide(
                  color: AppColors.greyLightColor,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
