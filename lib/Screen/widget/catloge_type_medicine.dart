
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class typeofmedicine extends StatelessWidget {
  final String image;
  final String text;
  final String subtext;
  final String hinttext;


  typeofmedicine(
      {required this.image,
      this.text = 'a',
      this.subtext = 'b',
      this.hinttext = 'c'});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
      height: 213,
      width: 180,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.57, right: 7, left: 5),
            child: Container(
                /*الحواف مش زابطه*/
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Image.asset(image,width: 100,height: 110,)),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 35),
            child:  Text(
              text,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w900,
                  fontSize: 15,color: HexColor('#36596A')),
            ),
          ),

        ],
      ),
    ));
  }
}
