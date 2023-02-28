import 'package:flutter/material.dart';

import 'package:te_veo_app/constants/constants.dart';


class CustomDropDown extends StatelessWidget {
  final Object? value;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;

  const CustomDropDown({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: screenWidth(context),
      padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.008),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius30),
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withOpacity(0.3),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: DropdownButton(
        value: value,
        items: items,
        style: poppinsLight.copyWith(
          fontSize: body10,
          color: AppColors.greyLightColor,
        ),
        underline: const SizedBox(),
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.orangeMainColor,
        ),
        isExpanded: true,
        onChanged: onChanged,
      ),
    );
  }
}
