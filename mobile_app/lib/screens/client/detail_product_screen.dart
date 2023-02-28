
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:te_veo_app/constants/app_sizes.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/screens/screens.dart';
import 'package:te_veo_app/services/product_service.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'dart:convert';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailProductScreen extends StatelessWidget {
   
  const DetailProductScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final productService = Get.find<productsService>();
    final product = productService.productSelected.value!;
    final List<dynamic> images = json.decode(product.photosFile);

    return  SafeArea(
      child: Scaffold(
        appBar: const AppBarUplaod(),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric( horizontal:  screenWidth(context) * 0.05 ) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image_detail_product(images: images),
              SizedBox( height:  screenHeight(context) * 0.02 ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth(context) * 0.05 ),
                child: Text(product.title, style: poppinsSemiBold.copyWith(
                  fontSize: body16
                )),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: screenWidth(context) * 0.05 ),
                  child: Text("\$ ${product.price}", style: poppinsSemiBold.copyWith(
                    fontSize: body16
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: screenWidth(context) * 0.05 ),
                child: Text(product.description, style: poppinsLight.copyWith(
                  fontSize: body14,
                  color: const Color(0xFF4F4F4F),
                )),
              ),

              Padding(
                padding: EdgeInsets.only(left: screenWidth(context) * 0.05, top: screenHeight(context) * 0.02 ),
                child: CustomButton(
                  onTap: () {
                    print("mensaje");
                  },
                  btnColor: AppColors.orangeMainColor,
                  btnTextColor: AppColors.whiteColor,
                  btnText: 'Enviar mensaje al Vendedor',
                  elevation: 2.0,
                  radius: 12.0,
                  fontSize: body12,
                  width: screenWidth(context) * 0.50,
                ),
              ),

              InfoVendedor(),

              

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: screenWidth(context) * 0.05 ),
                  child: CustomButton(
                    width: screenWidth(context) * 0.35,
                    height: screenHeight(context) * 0.05,
                    onTap: () {
                      //todo borrar 
                      product.xLatitude = "-33.45095569652899";
                      product.yLatitude = "-70.66116772592068";

                      List<LatLng> loc = [ LatLng( double.parse(product.xLatitude), double.parse(product.yLatitude)) ];
                      Get.to( ProductMapScreen( locations:loc) );
                    },
                    btnText: 'Ver en Mapa',
                    fontSize: 14,
                  )
                ),
        ),
            ],
          )
        ),
      ),
    );
  }
}

class InfoVendedor extends StatelessWidget {
  const InfoVendedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth(context) * 0.05, top: screenHeight(context) * 0.02 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [ Text("Informacion del Vendedor", style:  poppinsSemiBold.copyWith(
          color: AppColors.orangeMainColor,
          fontSize: body16,
         )
         ,),

         Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Image.asset(AppImages.noImage, fit: BoxFit.fill,),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NOMBRE VENDEDOR"),
                RatingBar.builder(
                  itemSize: 15,
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: AppColors.orangeMainColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )

              ],
            )

          ],
         ),
      ]
      ),
    );
  }
}

class image_detail_product extends StatelessWidget {
  const image_detail_product({
    super.key,
    required this.images,
  });

  final List<dynamic> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight(context) * 0.4,
      child: Swiper(
        itemCount: images.length,
        layout: SwiperLayout.STACK,
        itemWidth: screenWidth(context) * 0.7,
        itemHeight: screenHeight(context) * 0.4,
        itemBuilder: ( _, int index ) {

           return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage(AppImages.noImage),
                  image: AssetImage(AppImages.restaurantImage), //NetworkImage(movie.fullPosterImg),
                  fit: BoxFit.cover,
                )
          );
        },
        ),
    );
  }
}