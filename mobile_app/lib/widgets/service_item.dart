import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/screens/client/list_products_screen.dart';
import 'package:te_veo_app/screens/client/product_map/product_map_scree.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/services/product_service.dart';

class ServiceItem extends StatelessWidget {
  final String itemText;
  final int idSubCategoria;
  final int idCategoria;
  const ServiceItem({Key? key, required this.itemText, required this.idSubCategoria, required this.idCategoria}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productService = Get.find<productsService>();
    return InkWell(
        onTap: () {
          print("entra");
          productService.getProducts(categoria: idCategoria, subcategoria: idSubCategoria);
          Get.to(() => const ListProductsScreen());
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(AppImages.userImage),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Text(
                itemText,
                style: poppinsLight.copyWith(
                  fontSize: body14,
                  color: AppColors.blackTextColor,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
