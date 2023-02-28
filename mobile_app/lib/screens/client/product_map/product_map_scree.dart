import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:te_veo_app/constants/constants.dart';
import 'package:te_veo_app/controllers/map_controller.dart';
import 'package:te_veo_app/helpers/helpers.dart';
import 'package:te_veo_app/views/map_view.dart';
import 'package:te_veo_app/widgets/appBarUpload.dart';

class ProductMapScreen extends StatefulWidget {

  final List<LatLng> locations;
  const ProductMapScreen({super.key, required this.locations});

  @override
  State<ProductMapScreen> createState() => ProductMapScreenState();
}

class ProductMapScreenState extends State<ProductMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  final LatLng _me = const LatLng(10.5068033, -66.8511074);
  final Set<Marker> _markers = {};
  bool showData = false;
  String infoData = "";
  List<LatLng> locations_borrar = [

    /// CHILE
    const LatLng(-33.45095569652899, -70.66116772592068),
    const LatLng(-33.44475531073531, -70.67448321729898),
    const LatLng(-33.45396285269405, -70.67492477595806),
    const LatLng(-33.452561111292816, -70.66951744258404),
    const LatLng(-33.44204439101759, -70.66349688917398),
    const LatLng(-33.428158281710274, -70.63603817965341),
    const LatLng(-33.4488897, -70.6692655),
  ];
  //todo borrar luego con propuesta de negocio
  List<LatLng> reallocations = [];

  @override
  void initState() {
    super.initState();
    // initLocation();
    reallocations = widget.locations!; 
    initMarkers();
    
  }

  @override
  Widget build(BuildContext context) {

    final mapController = Get.put(MapController());
    return Scaffold(
      appBar: AppBarUplaod(),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          MapView(initialLocation: LatLng(-33.45095569652899, -70.66116772592068), polylines: {}, markers: _markers),
          showData
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    width: Get.width,
                    height: Get.height * 0.3,
                    decoration: const BoxDecoration(
                        color: AppColors.orangeMainColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Column(
                      children: [
                        const Text(
                          'DESCRIPCION DEL PRODUCTO',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          infoData,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                )
              : //SizedBox()

              //  Positioned(
              //   width: screenWidth(context),
              //   height: 120,
              //   top: screenHeight(context) - 90,
              //    child: BottomNavigationBar(
              //     currentIndex: 2,
              //     selectedItemColor: AppColors.orangeMainColor,
              //     unselectedItemColor: AppColors.blackTextColor,
              //     items: [
              //       BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg", color: AppColors.blackTextColor , width: 28,), label: ""),
              //       BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/location_pen.svg", width: 28,), label: ""),
              //       BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/message.svg", width: 28,), label: ""),
              //       BottomNavigationBarItem(icon: Image.asset("assets/icons/person.png" , width: 32,), label: "")
              //     ],
              //    ),
              //  ) 
              Positioned(
                top: 40,
                child: FloatingActionButton(
                  onPressed: () async {
                    mapController.getVisible();
                    //  final BitmapDescriptor markerIcon = await getBytesFromAsset('assets/images/bigCircleEye.png', 100);
                    // _markers.add(
                    //   Marker(
                        
                    //     markerId: MarkerId("mirpeuba"),
                    //     position: LatLng(-33.460623, -70.662442),
                    //     icon: markerIcon
                    //   )
                    // );
                    // setState(() {
                      
                    // });
                }),
              )
        ],
      ),
    );
  }



  void initMarkers() async {

    for (var element in widget.locations)  { 
        final BitmapDescriptor markerIcon = await getBytesFromAsset('assets/images/bigCircleEye.png', 100);
        
        _markers.add(
        Marker(
            markerId: MarkerId('${element.latitude.toString()}'),
            position: element,
            icon: markerIcon,
            onTap: () {
              setState(() {
                showData = true;
                infoData =
                    "Descripcion y detalles del producto nro , que se encuentra ubicado en el punto latitd: ${element.latitude} - longitud: ${element.longitude}";
              });
            }),
      );

    }
    setState(() {
      
    });

  }
}
