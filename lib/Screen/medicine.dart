import 'package:elancer_project1/Screen/widget/catloge_medicine.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class medicineScren extends StatefulWidget {
  const medicineScren({Key? key}) : super(key: key);

  @override
  _medicineScrenState createState() => _medicineScrenState();
}

class _medicineScrenState extends State<medicineScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child:  Text('Medicine',style: TextStyle(color: HexColor('#36596A')),),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Icon(Icons.arrow_back_ios,),
            ),color: HexColor('#36596A'),
          ),
        ),

        body:ListView(
          children: [
            Container(
                height:50,
                width: 187,
                child: Padding(
                  padding: const EdgeInsets.only(top:20,left: 20),
                  child: Text('All medicines categories',style: TextStyle(fontSize: 20,color: HexColor('#36596A')),),
                )),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/acmoal_liguids');
                    },
                    child: medicine(image: 'images/liquid.png',text: 'Acamol',subtext: 'Liquids, solutions, syrups, and mixtures are common',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/capsule_screen');
                    },
                    child: medicine(image: 'images/capsules.png',text: 'Nifedipine',subtext: 'a solid dosage form in which the drug is enclosed in a hard or soft soluble container',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/topical_screen');
                    },
                    child: medicine(image: 'images/topical.png',text: 'Lidocaine',subtext: 'Pertaining to a particular surface area.',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/suppository_screen');
                    },
                    child: medicine(image:'images/ff.png',text: 'Diclofenac',subtext: 'a solid, conical mass of medicinal substance',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top:5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/drops_screen');
                    },
                    child: medicine(image: 'images/dr.png',text: 'Gentamicin',subtext: 'any liquid medication applied by means of a dropper',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/inhalers_screen');
                    },
                    child: medicine(image: 'images/in.jpg',text: 'Inhalers',subtext:'device used in inhaling medicinal vapors.')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/injection_screen');
                    },
                    child: medicine(image: 'images/image.jpg',text: 'Heparin',subtext: 'a liquid injected into the body medicinal purposes',)),
              ),
            ),



          ],
        )
    );
  }
}


