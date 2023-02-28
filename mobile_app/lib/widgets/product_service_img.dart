import 'dart:io';

import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  
  final String? url;

  const ProductImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Container(
        width: 80,
        height: 80,
        child:  getImage(url),
        
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    color: Colors.black,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 10,
        offset: Offset(0,5)
      )
    ]

  );

  Widget getImage( String? picture ){
      
    if( picture == null ) {
      return const Image(
          image: AssetImage('assets/no-image.png'),
           fit: BoxFit.cover);
    }

    if( picture.startsWith("http") ) {
      return FadeInImage(
        image: NetworkImage(url!),
        placeholder: const AssetImage("assets/jar-loading.gif"),
        fit: BoxFit.cover,
      );
    }
    
    return Image.file(
      width: 18,
      File(picture),
      fit: BoxFit.contain,
    );
  }
}