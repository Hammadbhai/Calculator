// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';

class Gstbutton extends StatelessWidget {

  final String gstbtntext;


  const Gstbutton({
    required this.gstbtntext,
  });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      height: 50,
      width: 90,


      child: SizedBox(
        // ignore: deprecated_member_use
        child: FlatButton(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

          color: Color(0xFF07080a),


          onPressed: ()=>{}, 
          child: Text(gstbtntext, style: TextStyle(color: Color(0xFFB454FF)),)),
      ),


      
    );
  }
}