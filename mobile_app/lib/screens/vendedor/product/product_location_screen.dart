import 'dart:async';

import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/models/core/credentials.dart';
import 'package:te_veo_app/screens/client/search_category/search_category_screen.dart';

import 'package:te_veo_app/widgets/widgets.dart';

class ProductLocationScreen extends StatefulWidget {
  const ProductLocationScreen({Key? key}) : super(key: key);

  @override
  State<ProductLocationScreen> createState() => _ProductLocationScreenState();
}

class _ProductLocationScreenState extends State<ProductLocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    initMarkers();
  }

  static const CameraPosition _me =
      CameraPosition(target: LatLng(10.488295, -66.828962));

  void initMarkers() async {
    BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(30, 30)), AppImages.eyeMarkerImage);

    _markers.add(Marker(
        markerId: const MarkerId('1'),
        position: const LatLng(10.488295, -66.828962),
        icon: customIcon));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      /// body
      body: Stack(
        children: [
          SafeArea(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _me,
              markers: _markers,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: screenWidth(context),
                padding: const EdgeInsets.all(24.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.0),
                    topLeft: Radius.circular(16.0),
                  ),
                  color: AppColors.orangeMainColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// top texts
                    Text(
                      'Ubicación del producto',
                      style: poppinsSemiBold.copyWith(
                        fontSize: body18,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    /// dropdown
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: PlacesAutocompleteField(
                            apiKey: CredentialsApp.mapsApi,
                          ),
                          // child: AwesomeDropDown(
                          //   dropDownList: const [
                          //     "The Lighthouse",
                          //     "Classic Rose",
                          //     "Frewen Insurance Agency Inc",
                          //     "The Lighthouse",
                          //     "Classic Rose",
                          //     "Frewen Insurance Agency Inc",
                          //   ],
                          //   numOfListItemToShow: 4,
                          //   dropDownIcon: const Icon(
                          //     Icons.keyboard_arrow_down,
                          //     color: AppColors.whiteColor,
                          //   ),
                          //   dropDownBGColor: AppColors.orangeMainColor,
                          //   dropDownOverlayBGColor: AppColors.orangeDarkColor,
                          //   padding: 10,
                          //   selectedItem: 'Nirmala girls 4423',
                          //   selectedItemTextStyle: poppinsRegular.copyWith(
                          //     fontSize: body16,
                          //     color: AppColors.whiteColor,
                          //   ),
                          //   dropDownListTextStyle: poppinsLight.copyWith(
                          //     fontSize: 10.0,
                          //     color: AppColors.whiteColor,
                          //   ),
                          // ),
                        ),
                        Container(
                          height: 30.0,
                          width: 30.0,
                          padding: const EdgeInsets.all(6.0),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.orangeDarkColor,
                                blurRadius: 8.0,
                              ),
                            ],
                          ),
                          child: Image.asset(
                            AppImages.mapaImage,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight(context) * 0.12),

                    /// top texts
                    Text(
                      'Punto de referencia ',
                      style: poppinsSemiBold.copyWith(
                        fontSize: body18,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    SizedBox(height: screenHeight(context) * 0.006),

                    /// field
                    TextFormField(
                      minLines: 4,
                      maxLines: 4,
                      style: poppinsLight.copyWith(
                        fontSize: 10.0,
                        color: AppColors.whiteColor,
                      ),
                      decoration: InputDecoration(
                        hintText:
                            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod '
                            'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, '
                            'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                            '\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum ',
                        hintStyle: poppinsLight.copyWith(
                          fontSize: 10.0,
                          color: AppColors.whiteColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(radius10),
                        ),
                      ),
                    ),

                    /// btn
                    SizedBox(height: screenHeight(context) * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenHeight(context) * 0.13),
                      child: CustomButton(
                        height: 40,
                        onTap: () => const SearchCategoryScreen(),
                        btnColor: AppColors.whiteColor,
                        btnText: 'Siguiente',
                        radius: 10,
                        fontSize: body18,
                        btnTextColor: AppColors.orangeMainColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
