import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/controllers/publicacion_controller.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/services/services.dart';
import 'package:te_veo_app/widgets/widgets.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'components/points.dart';
import 'photo_desc_screen.dart';

class ProductScreen extends StatelessWidget {
  bool nuevo = false;
  bool usado = true;  
  @override
  Widget build(BuildContext context) {

    final productController =  Get.put(PublicacionController());
    final categoriasService =  Get.find<CategoriasService>();

    return Scaffold(
      /// body
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Stack(
              children: [
                Positioned(
                  top: screenHeight(context) * 0.049,
                  left: 20,
                  child: const CustomBackButton()
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// texts
                    SizedBox(height: screenHeight(context) * 0.05),
                    Center(
                      child: Text(
                        'Voy a vender un',
                        style: poppinsLight.copyWith(
                          fontSize: 24.0,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Producto',
                        style: poppinsMedium.copyWith(
                          fontSize: 30.0,
                          color: AppColors.blackTextColor,
                        ),
                      ),
                    ),
              
                    /// texts
                    SizedBox(height: screenHeight(context) * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.03),
                      child: Text(
                        'Categoria:',
                        style: poppinsSemiBold.copyWith(
                          fontSize: body20,
                          color: AppColors.orangeMainColor,
                        ),
                      ),
                    ),
              
                    /// dropdowmn
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.01),
                      child: AwesomeDropDown(
                        elevation: 3,
                        onDropDownItemClick:(item){
                          productController.categoria.value =  categoriasService.categorias.value!.where((element) => element.title == item).toList()[0];
                        },
                        dropDownList: categoriasService.categorias.value!.length > 0 ? categoriasService.categorias.value!.map(( cat ) => cat.title ).toList() : ["Sin categorias"],
                        numOfListItemToShow: categoriasService.categorias.value!.length > 0 ? categoriasService.categorias.value!.length : 0,
                        dropDownIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.orangeMainColor,
                        ),
                        padding: 16,
                        selectedItem: productController.categoria.value != null ?  productController.categoria.value!.title : 'Que vas a vender?',
                        selectedItemTextStyle: poppinsRegular.copyWith(
                          fontSize: body15,
                          color: AppColors.greyColor,
                        ),
                        dropDownListTextStyle: poppinsLight.copyWith(
                          fontSize: body14,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
              
                    /// Estado del producto:
                    SizedBox(height: screenHeight(context) * 0.15),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.03),
                      child: Text(
                        'Estado del producto:',
                        style: poppinsSemiBold.copyWith(
                          fontSize: body20,
                          color: AppColors.orangeMainColor,
                        ),
                      ),
                    ),
              
                    /// nuevo
                    SizedBox(height: screenHeight(context) * 0.01),
                    const EstadoProducto(textoEstado: "Nuevo", estado: 1),
                    const EstadoProducto(textoEstado: "Usado", estado: 0),
                    
                    /// points
                    TiemposUsado(productController: productController),
                    
                    /// btn
                    SizedBox(height: screenHeight(context) * 0.15),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.15),
                      child: CustomButton(
                        onTap: (){
                          final prod =  Get.find<PublicacionController>();
                          if( prod.categoria.value == null ){
                            mosrtarAlerta(context, "Error", "Por favor ingresar la categoria del producto a vender");
                            return;
                          }
                          Get.to(PhotosDescriptionScreen());
                        },
                        btnColor: AppColors.orangeMainColor,
                        btnText: 'Siguiente',
                        radius: 10,
                        fontSize: body18,
                      ),
                    ),
                  ],
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    Get.put(PublicacionController());
  }


  @override
  void dispose() {
    Get.delete<PublicacionController>();
  }
}

class TiemposUsado extends StatelessWidget {
  const TiemposUsado({
    super.key,
    required this.productController,
  });

  final PublicacionController productController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => 

    productController.estado.value == 0 ? 
      Column(
        children: const [
          tiempoUso(texttimepoUso: "1 a 2 semanas +",texttimepoUso2: "6 meses +"),
          tiempoUso(texttimepoUso: "1 mes +",texttimepoUso2: "8 meses +"),
          tiempoUso(texttimepoUso: "3 meses +",texttimepoUso2: "Más de un año"),
        ],
      )

      : const SizedBox()
    );
  }
}

class tiempoUso extends StatelessWidget {

  final String texttimepoUso;
  final String texttimepoUso2;
  const tiempoUso({
    super.key, required this.texttimepoUso, required this.texttimepoUso2
  });

  @override
  Widget build(BuildContext context) {
    final publicacionController = Get.find<PublicacionController>();
    return Padding(
        padding: const EdgeInsets.only(left: 50.0, top: 10.0),
        child: Obx(
          ()=>
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PointsText(text: texttimepoUso,textSelected: publicacionController.estadoUsado.value!,
              onTap:() => publicacionController.estadoUsado.value = texttimepoUso,),
              PointsText(text: texttimepoUso2, textSelected: publicacionController.estadoUsado.value!,
              onTap:() => publicacionController.estadoUsado.value = texttimepoUso2,),
            ],
          ),
        ),
      );
  }
}

class EstadoProducto extends StatelessWidget {

  final String textoEstado; 
  final int estado; 
  const EstadoProducto({super.key, required this.textoEstado, required this.estado});

  @override
  Widget build(BuildContext context) {
    final productController =  Get.find<PublicacionController>();

    return InkWell(
            onTap: () {
              productController.estado.value = estado;
              productController.estadoUsado.value = "";
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenHeight(context) * 0.03,
                  top: 8.0,
                  bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx( ()=>
                     Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: productController.estado.value == estado
                            ? AppColors.orangeMainColor
                            : AppColors.whiteColor,
                        border: Border.all(
                          color: productController.estado.value == estado
                              ? AppColors.orangeMainColor
                              : AppColors.greyColor,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    textoEstado,
                    style: poppinsRegular.copyWith(
                      fontSize: body18,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}