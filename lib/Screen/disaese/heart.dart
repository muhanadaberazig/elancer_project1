import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
class HeartAttack extends StatefulWidget {
  const HeartAttack({Key? key}) : super(key: key);

  @override
  _HeartAttackState createState() => _HeartAttackState();
}

class _HeartAttackState extends State<HeartAttack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child:  Text('Heart Attack',style: TextStyle(color: HexColor('#36596A')),),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10)
                ),
                width: 23,
                height: 26,

                child: Icon(Icons.arrow_back_ios,size: 30,)),
          ),color: HexColor('#36596A'),
        ),
      ),
      body:Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/t.jpg'),
                  fit: BoxFit.fitHeight,
                )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            bottom: 0,
            // left: 300,
            // right: 300,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Type :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor('#36596A')
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Heart disease',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                        ) ,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Disease details :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor('#36596A')
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 120,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('It occurs when a blood clot blocks blood flow in a coronary artery, the blood vessel that delivers blood to part of the heart muscle',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),),
                            )) ,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Symptoms of the disease :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor('#36596A')
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      height: 120,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:8,top:5),
                                  child: Icon(FontAwesomeIcons.solidHandPointRight,color: Colors.teal,size: 20,),
                                ),
                                Text('Constant pain in the upper abdomen',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:8,top:5),
                                  child: Icon(FontAwesomeIcons.solidHandPointRight,color: Colors.teal,size: 20,),
                                ),
                                Text('Chest pains for periods are increasing.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:8,top: 5,),
                                  child: Icon(FontAwesomeIcons.solidHandPointRight,color: Colors.teal,size: 20,),
                                ),
                                Text('Shortness of breath..',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400))
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:8,top: 5,bottom: 5),
                                  child: Icon(FontAwesomeIcons.solidHandPointRight,color: Colors.teal,size: 20,),
                                ),
                                Text('Feeling of impending doom.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400))
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
