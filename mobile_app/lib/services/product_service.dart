import 'dart:convert';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:te_veo_app/models/models.dart';
import 'package:te_veo_app/services/service_http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;




class productsService extends GetxController{

  final products = Rxn<List<ProductsModel>>([]);
  final productSelected = Rxn<ProductsModel>();
  

  Future getProducts({ int? categoria, int? subcategoria }) async{

    products.value = [];

    final resProducts = await ServiceHttp.post(
      "/ListarProducto",
      {
      "id_category": categoria,
      "id_subcategory": subcategoria
      });
    
    if(resProducts != false ){
      products.value  =  listProductsFromJson(  resProducts.data );
    }
  }

  Future<String?> insertProduct(
    {required int idcategori,required int idSubcategori, required String title, required String desc, int cantidad = 1,
    required double precio, int estado = 1, required double lat, required double lng, required List<XFile> photos}
  ) async {


    final url =
        Uri.parse("http://3.214.121.231/bk/api/v1/yateveo-mobile-product/InsertProducto");
     final imageRequest = http.MultipartRequest('POST', url)
          ..fields["id_subcategory"] =  "1"
          ..fields["title"] =  title
          ..fields["description"] =  desc
          ..fields["quantity"] =     cantidad.toString()
          ..fields["price"]      =  estado.toString()
          ..fields["x_latitude"] =  lat.toString()
          ..fields["y_latitude"] =  lng.toString();




    for (XFile photo  in photos) {
        final file = await http.MultipartFile.fromPath('file', photo.path);
        imageRequest.files.add(file);
    }
    
  
    

    final streamResponse = await imageRequest.send();
    final resp = await http.Response.fromStream(streamResponse);

    print("creando peticion");
    FormData formData = FormData({
      "id_subcategory": 1,
      "title": title,
      "description" : desc,
      "quantity"    : cantidad,
      "price"       : estado,
      "x_latitude" : lat,
      "y_latitude" : lng
    });


        

    final res = await ServiceHttp.postFormData("/InsertProducto",formData);
    print(res);


  }
} 