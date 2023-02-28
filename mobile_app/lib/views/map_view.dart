import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:te_veo_app/controllers/map_controller.dart';


class MapView extends StatelessWidget {
 
  final LatLng initialLocation;
  final Set<Polyline> polylines;
  final Set<Marker> markers;
  final void Function(LatLng)? onTap;

  const MapView({super.key, required this.initialLocation, required this.polylines, required this.markers, this.onTap});

  @override
  Widget build(BuildContext context) {

    final mapController = Get.find<MapController>( );
    final CameraPosition initialCameraPosition = CameraPosition(
          target: initialLocation,
          zoom: 15);

    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Listener(
        onPointerMove: ( pointerMoveEvent ) => print("paso"),
        child: GoogleMap(
                initialCameraPosition: initialCameraPosition,
                compassEnabled: false,
                myLocationEnabled: true,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                onMapCreated: (controller) {
                   mapController.onInitMap(controller);
                   mapController.setMarkers( markers.toList() );
                },
                polylines: polylines,
                markers: markers,
                onCameraMove: (position) => mapController.mapCenter.value = position.target,
                onTap:onTap
                //markers
                // cuando se mueve el mapa
        ),
      ),
    );
  }
}