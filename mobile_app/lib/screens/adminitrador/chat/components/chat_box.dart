import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/constants.dart';

class ChatBox extends StatelessWidget {
  final String? msgText;
  final bool? isSender;

  const ChatBox({
    Key? key,
    required this.msgText,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight(context) * 0.032),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment:
            isSender == true ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          isSender == false
              ? const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(AppImages.userImage),
                )
              : const SizedBox(),
          SizedBox(
            width: screenWidth(context) * 0.75,
            child: BubbleSpecialTwo(
              text: msgText!,
              isSender: isSender!,
              color: isSender == true
                  ? AppColors.redColor
                  : AppColors.greyLightColor,
              tail: true,
              textStyle: poppinsRegular.copyWith(
                fontSize: body14,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          isSender == true
              ? const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(AppImages.userImage),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
