import 'dart:convert';

ListcategoriasResponse listcategoriasResponseFromJson(String str) => ListcategoriasResponse.fromJson(json.decode(str));

String listcategoriasResponseToJson(ListcategoriasResponse data) => json.encode(data.toJson());

class ListcategoriasResponse {
    ListcategoriasResponse({
        required this.data,
    });

    List<Categorias> data;

    factory ListcategoriasResponse.fromJson(Map<String, dynamic> json) => ListcategoriasResponse(
        data: List<Categorias>.from(json["data"].map((x) => Categorias.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Categorias {
    Categorias({
        required this.idCategory,
        required this.title,
        this.description,
        required this.status,
        this.createAt,
        this.updateAt,
    });

    int idCategory;
    String title;
    dynamic description;
    int status;
    dynamic createAt;
    dynamic updateAt;

    factory Categorias.fromJson(Map<String, dynamic> json) => Categorias(
        idCategory: json["id_category"],
        title: json["title"],
        description: json["description"],
        status: json["status"],
        createAt: json["create_at"],
        updateAt: json["update_at"],
    );

    Map<String, dynamic> toJson() => {
        "id_category": idCategory,
        "title": title,
        "description": description,
        "status": status,
        "create_at": createAt,
        "update_at": updateAt,
    };
}


ListSubCategoriasResponse listSubCategoriasResponseFromJson(String str) => ListSubCategoriasResponse.fromJson(json.decode(str));

String listSubCategoriasResponseToJson(ListSubCategoriasResponse data) => json.encode(data.toJson());

class ListSubCategoriasResponse {
    ListSubCategoriasResponse({
        required this.data,
    });

    List<SubCategoria> data;

    factory ListSubCategoriasResponse.fromJson(Map<String, dynamic> json) => ListSubCategoriasResponse(
        data: List<SubCategoria>.from(json["data"].map((x) => SubCategoria.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SubCategoria {
    SubCategoria({
        required this.idSubcategory,
        required this.idCategory,
        required this.title,
        this.description,
        required this.status,
        this.createAt,
        this.updateAt,
    });

    int idSubcategory;
    int idCategory;
    String title;
    dynamic description;
    int status;
    dynamic createAt;
    dynamic updateAt;

    factory SubCategoria.fromJson(Map<String, dynamic> json) => SubCategoria(
        idSubcategory: json["id_subcategory"],
        idCategory: json["id_category"],
        title: json["title"],
        description: json["description"],
        status: json["status"],
        createAt: json["create_at"],
        updateAt: json["update_at"],
    );

    Map<String, dynamic> toJson() => {
        "id_subcategory": idSubcategory,
        "id_category": idCategory,
        "title": title,
        "description": description,
        "status": status,
        "create_at": createAt,
        "update_at": updateAt,
    };
}
