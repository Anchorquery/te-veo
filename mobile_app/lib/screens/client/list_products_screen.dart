 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/constants/app_colors.dart';
import 'package:te_veo_app/constants/app_sizes.dart';
import 'package:te_veo_app/constants/app_text_styles.dart';
import 'package:te_veo_app/models/models.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:te_veo_app/services/product_service.dart';
import 'package:te_veo_app/widgets/widgets.dart';
 
 class ListProductsScreen extends StatelessWidget {
    
   const ListProductsScreen({Key? key}) : super(key: key);


   @override
   Widget build(BuildContext context) {
    final productService = Get.put(productsService());
     return Scaffold(
      appBar: const AppBarUplaod(),
       body: 
       
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only( left: screenHeight(context) * 0.03),
            child: Obx(
              () =>
              productService.products.value!.length == 0
              ? SizedBox()
              : Text(
                productService.products.value![0].subcategory,
                textAlign: TextAlign.start,
                style: poppinsMedium.copyWith(
                  fontSize: body18,
                  color: AppColors.orangeMainColor,
                ),
              ),
            ),
          ),
          Obx(
            () => 
              productService.products.value!.length == 0
            ? const Center( child:  Text("Aun no hay productos para esta categoria") )
            : Expanded(
              child: ListView.builder(
                itemCount: productService.products.value!.length,
                itemBuilder: (BuildContext context, int index) { 
                  return 
                  NearResBox(
                    nameText: productService.products.value![index].title,
                    descOneText: productService.products.value![index].description,
                    descTwoText: "",
                    priceText: "\$ ${productService.products.value![index].price.toString()}" ,
                    onTap: () {
                      productService.productSelected.value = productService.products.value![index];
                      Get.to(() => const DetailProductScreen());
                    }
                  );
                }
                ,
              
              ),
            )
        )
        ],
       )
       
       
     );
   }
 }
