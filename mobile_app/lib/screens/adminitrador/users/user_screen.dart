import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/widgets/back_image.dart';
import 'package:te_veo_app/widgets/custom_dropdown.dart';
import 'package:get/get.dart';

import 'components/user_box.dart';
import 'package:te_veo_app/constants/constants.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  String categoryVal = 'Categoria';
  String rangoVal = 'Rango';
  String locationVal = 'Ubicación';

  /// category dropdown items
  List<DropdownMenuItem<String>> get categoryDropDown {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Categoria", child: Text("Categoria")),
      const DropdownMenuItem(value: "Categoria 1", child: Text("Categoria 1")),
      const DropdownMenuItem(value: "Categoria 2", child: Text("Categoria 2")),
      const DropdownMenuItem(value: "Categoria 3", child: Text("Categoria 3")),
      const DropdownMenuItem(value: "Categoria 4", child: Text("Categoria 4")),
    ];
    return menuItems;
  }

  /// rango dropdown items
  List<DropdownMenuItem<String>> get rangeDropDown {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Rango", child: Text("Rango")),
      const DropdownMenuItem(value: "Rango 1", child: Text("Rango 1")),
      const DropdownMenuItem(value: "Rango 2", child: Text("Rango 2")),
      const DropdownMenuItem(value: "Rango 3", child: Text("Rango 3")),
      const DropdownMenuItem(value: "Rango 4", child: Text("Rango 4")),
    ];
    return menuItems;
  }

  /// location dropdown items
  List<DropdownMenuItem<String>> get locationDropDown {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Ubicación", child: Text("Ubicación")),
      const DropdownMenuItem(value: "Ubicación 1", child: Text("Ubicación 1")),
      const DropdownMenuItem(value: "Ubicación 2", child: Text("Ubicación 2")),
      const DropdownMenuItem(value: "Ubicación 3", child: Text("Ubicación 3")),
      const DropdownMenuItem(value: "Ubicación 4", child: Text("Ubicación 4")),
    ];
    return menuItems;
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
                'Usuarios',
                style: poppinsMedium.copyWith(
                  fontSize: body30,
                  color: AppColors.orangeMainColor,
                ),
              ),
              Text(
                'Registrados (150)',
                style: poppinsLight.copyWith(
                  fontSize: body16,
                  color: AppColors.greyLightColor,
                ),
              ),
            ],
          ),
        ),

        /// body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// category range and location
            SizedBox(height: screenHeight(context) * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.016),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomDropDown(
                      onChanged: (Object? val) {
                        setState(() {
                          categoryVal = val.toString();
                        });
                      },
                      items: categoryDropDown,
                      value: categoryVal,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: CustomDropDown(
                      onChanged: (Object? val) {
                        setState(() {
                          rangoVal = val.toString();
                        });
                      },
                      items: rangeDropDown,
                      value: rangoVal,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: CustomDropDown(
                      onChanged: (Object? val) {
                        setState(() {
                          locationVal = val.toString();
                        });
                      },
                      items: locationDropDown,
                      value: locationVal,
                    ),
                  ),
                ],
              ),
            ),

            /// result and connects texts
            SizedBox(height: screenHeight(context) * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenHeight(context) * 0.016),
              child: Text(
                '1020 Resultados   980 Contados',
                style: poppinsSemiBold.copyWith(
                  fontSize: body14,
                  color: AppColors.orangeMainColor,
                ),
              ),
            ),

            /// users box
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const UserBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
