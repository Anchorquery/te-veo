import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:te_veo_app/widgets/back_image.dart';
import 'package:get/get.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'components/chat_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return BackImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// appbar
        appBar: AppBar(
          backgroundColor: AppColors.orangeMainColor,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: AppColors.whiteColor,
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
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                'En Linea',
                style: poppinsLight.copyWith(
                  fontSize: body16,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                //  Get.to(StatisticsScreen());
                Get.to(UploadPublicationScreen());
              },
              icon: Icon(
                Icons.more_vert,
                color: AppColors.whiteColor.withOpacity(0.6),
                size: 30,
              ),
            ),
          ],
        ),

        /// body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// chats bubbles
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    /// receiver
                    ChatBox(
                      msgText:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                      isSender: false,
                    ),

                    /// sender
                    ChatBox(
                      msgText:
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor '
                          'incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, '
                          'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo '
                          'consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse '
                          'dolore magnam aliquam quaerat voluptatem.',
                      isSender: true,
                    ),

                    /// receiver
                    ChatBox(
                      msgText:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                      isSender: false,
                    ),

                    /// sender
                    ChatBox(
                      msgText:
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor '
                          'dolore magnam aliquam quaerat voluptatem.',
                      isSender: true,
                    ),
                  ],
                ),
              ),
            ),

            /// msg area
            Container(
              height: 70.0,
              width: screenWidth(context),
              color: AppColors.orangeMainColor,
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.whiteColor,
                        hintText: 'Message',
                        hintStyle: poppinsLight.copyWith(
                          fontSize: body16,
                          color: AppColors.greyColor,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: AppColors.greyColor,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 16.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.whiteColor,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.whiteColor,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: AppColors.whiteColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenHeight(context) * 0.02),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orangeDarkColor,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.mic,
                        color: AppColors.whiteColor,
                        size: 32.0,
                      ),
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
