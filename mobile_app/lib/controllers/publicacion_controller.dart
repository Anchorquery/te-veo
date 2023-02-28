

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:place_picker/place_picker.dart';
import 'package:te_veo_app/models/categorias_model.dart';

class PublicacionController extends GetxController {

  final categoria =  Rxn<Categorias>();
  final titulo =  Rxn<String>();
  final descripcion =  Rxn<String>();
  final aplicaEstado =  Rxn<bool>(false);
  final estado =  Rxn<int>(1);
  final estadoUsado =  Rxn<String>("");
  final ubicacion =  Rxn<LatLng>();
  final cantidad = Rxn<int>();
  final precio = Rxn<double>();
  final images = Rxn<List<XFile>>([]);
  final img = Rxn<XFile>();

  final isLoading = Rxn<bool>(false);
}