import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Catloge extends StatelessWidget {
  final String text;
  final String ImageText;


  Catloge({this.text='a',required this.ImageText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height:40 ,
          width: 40,
          child: Image.asset(ImageText)),
      title: Container(
          height: 50,
          width: 62,
          child: Padding(
            padding: const EdgeInsets.only(top: 15,right: 0,left: 0,bottom: 16),
            child: Text(text,style: TextStyle(fontFamily: 'SourceCodePro',color: HexColor('#36596A'),fontSize: 16,fontWeight: FontWeight.w500),),
          )),

    );
  }
}