import 'package:flutter/material.dart';
class catlogeLiquidsMedicine extends StatelessWidget {
 final String image;
 final String text;


 catlogeLiquidsMedicine({required this.image, this.text='q'});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
              height: 120,
              width: 100,
              child: Image.asset(image)),
          Text(text,style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),)
        ],
      ),
    );
  }
}