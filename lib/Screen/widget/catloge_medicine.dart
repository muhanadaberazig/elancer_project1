import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class medicine extends StatelessWidget {
final String text;
final String image;
final String subtext;

medicine({this.text='a',required this.image, this.subtext='a'});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),


      child: Row(
        children: [
          Container(
              height: 90,
              width:81,
              child: Padding(
                padding: const EdgeInsets.only(top: 6,left: 9,bottom: 9),
                child: Image.asset(image),
              )
          ),
          Container(
            height: 65,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(right: 25,top: 3),
              child: Column(
                children: [
                  Container(
                      height: 24,
                      width:180,
                      child: Text(text,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w900,color: HexColor('#36596A')),)),
                  Container(
                      height: 38,
                      width: 200,
                      child: InkWell(
                        onTap: (){},
                          child: Text(subtext,style: TextStyle(fontSize: 14,color: HexColor('#9A9A9A')),)))
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}