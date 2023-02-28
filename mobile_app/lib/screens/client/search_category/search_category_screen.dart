import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:get/get.dart';
import 'package:te_veo_app/screens/vendedor/upload_publication/upload_publication_screen.dart';
import 'package:te_veo_app/services/categorias_service.dart';
import 'package:te_veo_app/services/product_service.dart';
import 'package:te_veo_app/widgets/widgets.dart';


class SearchCategoryScreen extends StatefulWidget {
  const SearchCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SearchCategoryScreen> createState() => _SearchCategoryScreenState();
}

class _SearchCategoryScreenState extends State<SearchCategoryScreen> {
  @override
  Widget build(BuildContext context) {

    final categoriasController = Get.put(CategoriasService());
    final productService = Get.put(productsService());
    categoriasController.getCategorias();
    return Scaffold(
      /// appbar
      appBar: const AppBarUplaod(),
      /// body
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// search bar
            SizedBox(height: screenHeight(context) * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(
                      color: AppColors.greyLightColor.withOpacity(0.3),
                      width: 0.5,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 16.0),
                  filled: true,
                  fillColor: AppColors.greyLightColor.withOpacity(0.3),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.greyColor,
                    ),
                  ),
                  hintText: 'Buscar categoria',
                  hintStyle: poppinsLight.copyWith(
                    fontSize: body14,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),

            /// banner
            SizedBox(height: screenHeight(context) * 0.03),
            Container(
              width: screenWidth(context),
              height: screenHeight(context) * 0.2,
              margin: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.01),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius10),
                image: const DecorationImage(
                  image: AssetImage(AppImages.bannerImage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(child: SizedBox()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              'Oferta de 24 horas',
                              style: poppinsLight.copyWith(
                                fontSize: 20,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            Text(
                              '17:09:45',
                              style: poppinsBold.copyWith(
                                fontSize: 24,
                                color: AppColors.greenColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: CustomButton(
                          onTap: () {},
                          height: 40,
                          btnText: 'Ver más',
                          fontSize: 16,
                          radius: 8.0,
                          btnColor: AppColors.orangeMainColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                ],
              ),
            ),

            /// services
            SizedBox(height: screenHeight(context) * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              child:
                  SizedBox(
                    width: screenWidth(context)* 0.5,
                    child: 
                    Obx(() =>

                    categoriasController.categorias.value != null
                    ? AwesomeDropDown(
                          elevation: 0,
                          padding: 5,
                          onDropDownItemClick:(item){
                              categoriasController.categoriaSelected.value =  categoriasController.categorias.value!.where((element) => element.title == item).toList()[0];
                          },
                          dropDownList: categoriasController.categorias.value!.length > 0 ? categoriasController.categorias.value!.map(( cat ) => cat.title ).toList() : ["Sin categorias"],
                          numOfListItemToShow: categoriasController.categorias.value!.length > 0 ? categoriasController.categorias.value!.length : 0,
                          dropDownIcon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.orangeMainColor,
                          ),
                          selectedItem: categoriasController.categoriaSelected.value!.title,
                          selectedItemTextStyle: poppinsRegular.copyWith(
                            fontSize: body15,
                            color: AppColors.greyColor,
                          ),
                          dropDownListTextStyle: poppinsLight.copyWith(
                            fontSize: body14,
                            color: AppColors.greyColor,
                          ),
                        )

                      : const CircularProgressIndicator()
                    )
                  ),
            ),

            /// services items
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              child: 
              Obx(() =>
              categoriasController.subcategorias.value != null 
              ?  Wrap(
                  spacing: 10,
                  children:
                  [   
                    ...categoriasController.subcategorias.value!.where(
                      (sub) => sub.idCategory == categoriasController.categoriaSelected.value!.idCategory
                    )
                    .map(
                      (e) =>  ServiceItem(itemText: e.title, idCategoria: e.idCategory, idSubCategoria: e.idSubcategory)
                      ).toList() 
                  ]
                )
                : const SizedBox()
              ),
            ),

            /// services
            SizedBox(height: screenHeight(context) * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenHeight(context) * 0.03),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Nuevas ofertas',
                    style: poppinsLight.copyWith(
                      fontSize: body18,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                  Text(
                    ' cerca de ti',
                    style: poppinsMedium.copyWith(
                      fontSize: body18,
                      color: AppColors.orangeMainColor,
                    ),
                  ),
                ],
              ),
            ),

            /// near resturants
            const NearResBox(
              nameText: '7 noches 6 días en cartagena',
              descOneText: 'En tienda fisica',
              descTwoText: 'sin devoluciones',
              priceText: '\$800.00',
            ),
            const NearResBox(
              nameText: 'Sofá Nórdico',
              descOneText: 'Medidas: 3x2m',
              descTwoText: 'Gris, Gris Plomo y Nuez.',
              priceText: '\$120.00',
            ),
          ],
        ),
      ),
    );
  }
}
