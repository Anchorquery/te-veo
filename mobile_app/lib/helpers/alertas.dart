import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


mosrtarAlerta( BuildContext context, String titulo, String? subtitulo) {

  if( Platform.isAndroid ){
    return showDialog(context: context,
      builder: (_)=> AlertDialog(
        title: Text( titulo ),
        content: subtitulo != null ? Text( subtitulo ) : null,
        actions: [
          MaterialButton(
            child: Text("Ok"),
            elevation: 5,
            textColor: Colors.blue,
            onPressed: () => Navigator.pop(context)
          )
        ],
      )
    );
  }


  showCupertinoDialog(context: context,
  builder: (_) => CupertinoAlertDialog(
      title: Text( titulo ),
      content: subtitulo != null ? Text( subtitulo ) : null,
      actions: [
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Text("Ok"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    )
  );
}