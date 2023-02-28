

import 'package:get/get.dart';
import 'package:te_veo_app/models/models.dart';
import 'package:te_veo_app/services/service_http.dart';

class CategoriasService extends GetxController{

  final categorias = Rxn<List<Categorias>>();
  final subcategorias = Rxn<List<SubCategoria>>([]);
  final categoriaSelected = Rxn<Categorias>();
  
  Future getCategorias() async{

    final resCategorias = await ServiceHttp.serverPostCall("yateveo-mobile-category/ListCategory",{});
    
    if(resCategorias != false ){
      categorias.value = listcategoriasResponseFromJson(resCategorias.body).data;
      categoriaSelected.value = categorias.value![0];
      await subCategorias();
    }
  }

  Future subCategorias() async{
    final resSubCategorias = await ServiceHttp.serverPostCall("yateveo-mobile-subcategory/ListSubCategory",{});
    if(resSubCategorias != false ){
      subcategorias.value = listSubCategoriasResponseFromJson(resSubCategorias.body).data;
    }
  }
} 