import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:place_picker/entities/localization_item.dart';
import 'package:place_picker/place_picker.dart';
import 'package:te_veo_app/controllers/gps_controller.dart';
import 'package:te_veo_app/controllers/publicacion_controller.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/models/core/credentials.dart';
import 'package:te_veo_app/screens/client/search_category/search_category_screen.dart';

import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/services/product_service.dart';
import 'package:te_veo_app/widgets/widgets.dart';
import 'product_location_screen.dart';
import 'package:image_picker/image_picker.dart';

class PhotosDescriptionScreen extends StatefulWidget {
  const PhotosDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PhotosDescriptionScreen> createState() =>
      _PhotosDescriptionScreenState();
}

class _PhotosDescriptionScreenState extends State<PhotosDescriptionScreen> {
  LocationResult? locationR;

  void showPlacePicker() async {
    final productController =  Get.find<PublicacionController>();
    locationR = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
        PlacePicker(CredentialsApp.mapsApi,
            displayLocation: null,
            localizationItem: 
            LocalizationItem(
              languageCode: 'es_cl',
              nearBy: "Lugares Cercanos",
              findingPlace: "Buscando...",
              unnamedLocation: "Lugar sin nombre",
              tapToSelectLocation: "Pusla para seleccionar ubicacion"
            )
        ),
      ),
    );

    print(locationR!.latLng);
    // Handle the result in your way
    if (locationR!.latLng != null) {
      // Get.back();
      productController.ubicacion.value = locationR!.latLng;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final productController =  Get.find<PublicacionController>();
    final gpsController = Get.find<GpsController>(); 

    return Scaffold(
      /// body
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /// texts
                SizedBox(height: screenHeight(context) * 0.03),
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
                 SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Titulo del producto:',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body15,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(
                    right: screenWidth(context) * 0.1,
                    left:  screenWidth(context) * 0.06
                  ),
                  child: CustomTextField(
                    controller: null,
                    hintText: '',
                    isHead: false,
                    keyboardType: TextInputType.emailAddress,
                    onchaged: (p0) {
                      productController.titulo.value = p0;
                    },
                  ),
                ), 
                /// texts
                SizedBox(height: screenHeight(context) * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Carga tus fotos',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),

                /// add image box
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight(context) * 0.03),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          
                          final ImagePicker _picker = ImagePicker();
                          //final XFile? img = await _picker.pickImage(source: ImageSource.gallery);
                          final List<XFile>? images = await _picker.pickMultiImage( imageQuality: 84);
                          if(images == null) return mosrtarAlerta(context, "Alerta", "No se ha seleccionado ninguna foto");
                          if(images.length > 8) return mosrtarAlerta(context, "Alerta", "Seleccione máximo 8 Fotos");
                          productController.images.value = images;
                        },
                        child: Container(
                          height: screenHeight(context) * 0.17,
                          width: screenHeight(context) * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius10),
                            image: const DecorationImage(
                              image: AssetImage(AppImages.atachImage),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.attachImage,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.orangeMainColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColors.whiteColor,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenHeight(context) * 0.04),
                  child: Text(
                    'Max  8 fotos',
                    style: poppinsLight.copyWith(
                      fontSize: body14,
                      color: AppColors.greyTextColor,
                    ),
                  ),
                ),
                
                Obx(() => 
                  productController.images.value != null
                  ?
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: 
                  ListView.builder(
                    controller: PageController(
                      viewportFraction: 1
                    ),
                          scrollDirection: Axis.horizontal,
                          itemCount: productController.images.value!.length,
                          itemBuilder: (BuildContext context, int index) { 
                            return Stack(
                              children:[
                                ProductImage(url :  productController.images.value![index].path),
                                Positioned(
                                  left: 40,
                                  top: -15,
                                  child: IconButton(
                                    onPressed: (){
                                      productController.images.value!.removeAt(index);
                                      productController.images.refresh();
                                    },
                                    icon: const Icon(Icons.delete, color: AppColors.orangeMainColor,), )
                                )
                              ]
                            );
                          },
                          
                        ),
                )
                : const SizedBox()
                  
                ),

                /// desc texts
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenHeight(context) * 0.03),
                  child: Text(
                    'Descripción del producto:',
                    style: poppinsSemiBold.copyWith(
                      fontSize: body20,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ),

                /// field
                SizedBox(height: screenHeight(context) * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    onChanged: (value) {
                      productController.descripcion.value = value;
                    },
                    minLines: 3,
                    maxLines: 3,
                    style: poppinsLight.copyWith(
                      fontSize: body12,
                      color: AppColors.greyTextColor,
                    ),
                    decoration: InputDecoration(
                      hintText:
                          locationR != null ? locationR!.locality : 'text',
                      hintStyle: poppinsLight.copyWith(
                        fontSize: 10.0,
                        color: AppColors.greyTextColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius10),
                      ),
                    ),
                  ),
                ),

                /// btn
                SizedBox(height: screenHeight(context) * 0.08),
                Obx(
                  () =>
                  gpsController.isGpsEnabled.value
                  ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.15),
                    child: CustomButton(
                      onTap: () => locationR != null
                          ? cargarProducto()
                          : showPlacePicker(),
                      btnColor: AppColors.orangeMainColor,
                      btnText: locationR != null ? 'Continuar' : 'Ubicacion',
                      radius: 10,
                      fontSize: body18,
                    ),
                  )
                : ButtonGpsEnabled()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void cargarProducto(){
    final productController =  Get.find<PublicacionController>();
    String mensajeError = "";
    mensajeError = productController.titulo.value == null ? "El campo titulo es obligatorio" : "";
    mensajeError = productController.descripcion.value == null ? "El campo descripcion es obligatorio" : "";
    mensajeError = productController.images.value == null ? "Las fotos del producto son obligatorias" : "";
     if(mensajeError == ""){
      print("Envio algo");
      enviarProducto();
      return;
     }
    mosrtarAlerta(context, "Formulario invalido", mensajeError);
  }

  void enviarProducto(){
    final productController =  Get.find<PublicacionController>();
    final productService = Get.find<productsService>();

    productService.insertProduct(
      idcategori: 1,
      idSubcategori: 2,
      title: productController.titulo.value!,
      desc: productController.descripcion.value!,
      cantidad: 1,
      precio: 5055,
      estado: productController.estado.value!,
      lat: productController.ubicacion.value!.latitude,
      lng: productController.ubicacion.value!.longitude,
      photos: productController.images.value!
    );
  }
}


class ButtonGpsEnabled extends StatelessWidget {
  const ButtonGpsEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: screenHeight(context) * 0.05),
      child: CustomButton(
        onTap: (){
          final gpsController = Get.find<GpsController>(); 
          gpsController.askGpsAcces();
        },
        btnColor: AppColors.orangeMainColor,
        btnText: "Permisos ubicación",
        radius: 10,
        fontSize: body16,
        width: 500,
      ),
    );
  }
}