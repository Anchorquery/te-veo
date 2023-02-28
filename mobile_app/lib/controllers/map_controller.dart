import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapController extends GetxController{

 var isMapInititalized = false.obs;
 var showMyRoute = true.obs;
 final mapCenter = Rxn<LatLng?>();
 
 final markers = Rxn<Map<String, Marker>>();
 List<Marker> markers_ = [];

 GoogleMapController? _mapController;

  MapController(){
    markers.value = {};
  }

 
  void onInitMap( GoogleMapController controller ){

    _mapController = controller;
    isMapInititalized.value = true;
  }

  void moveCamera( LatLng newLocation ){
    final cameraUpdate = CameraUpdate.newLatLng( newLocation );
    _mapController?.animateCamera(cameraUpdate);
  }

  void getVisible() async{
    final LatLngBounds? lats = await _mapController?.getVisibleRegion();
    markers_.forEach((mark) { 
      final visible = lats!.contains(mark.position);
      print(mark.position);
      print(visible);
    });
    
  }

  void setMarkers(List<Marker> markers){
    markers_ = markers;
  }

  @override
  void onClose() {
    super.onClose();
  }
}