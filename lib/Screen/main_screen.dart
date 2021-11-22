import 'package:elancer_project1/Screen/pref/shared_pref_controler.dart';
import 'package:elancer_project1/Screen/widget/catloge.dart';
import 'package:elancer_project1/Screen/widget/catloge_type_medicine.dart';
import 'package:elancer_project1/Screen/widget/drawer.dart';
import 'package:elancer_project1/database/model/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Contact> m=[];
  void addData(){
    m.add(Contact(id: 5, name: 'name', text: 'text', image: 'image'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(onPressed: ()async{
              await SharedPrefController().clear();
              Navigator.pushReplacementNamed(context, '/information_screen');
            },
                icon:Icon(Icons.logout))
          ],
        ),
        drawer: const drawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 55,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: 'Search',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 20.43, left: 16),
                    child: SizedBox(
                        width: 130,
                        height: 24,
                        child: Text(
                          'Catalogues',
                          style: TextStyle(
                              fontFamily: 'SourceCodePro',
                            color: HexColor('#36596A'),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,),
                child: Row(
                  children: [
                    SizedBox(
                      width:391,
                      height: 50,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 16),
                         child: Container(
                           decoration: BoxDecoration(
                               color: HexColor('#FFFFFF'),
                             borderRadius: BorderRadius.circular(15)
                           ),
                             height: 100,
                             width: 170,
                             child: InkWell(

                                   onTap: () {
                                     Navigator.pushNamed(context, '/medicine_screen');
                                 },
                                 child: Catloge( ImageText: 'images/liquid.png',text: 'Medicines',))
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 16),
                         child: Container(
                             decoration: BoxDecoration(
                                 color: HexColor('#FFFFFF'),
                                 borderRadius: BorderRadius.circular(15)
                             ),
                             height: 53,
                             width: 170,
                             child: InkWell(
                               onTap: () {
                                 Navigator.pushNamed(context, '/diseases_screen');
                               },
                                 child: Catloge( ImageText: 'images/e.jpg',text: 'Diseases',))
                         ),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(right: 16),
                         child: Container(
                             decoration: BoxDecoration(
                                 color: HexColor('#FFFFFF'),
                                 borderRadius: BorderRadius.circular(15)
                             ),
                             height: 53,
                             width: 170,
                             child: InkWell(
                               // onTap:() {
                               //   Navigator.pushNamed(context, '/doctors_screen');
                               // },
                                 child: Catloge( ImageText: 'images/docc.jpg',text: 'Doctors',))

                         ),
                       )
                     ],
                      ),

                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*فش طول وعرض زي التميم*/
                   Padding(
                    padding: EdgeInsets.only(top:29,left: 16 ),
                    child: Text(
                      'Kinds of Medicines',
                      style: TextStyle(
                          fontFamily: 'SourceCodePro',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,color: HexColor('#36596A')),
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, '/medicine_screen');
                  },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 23.43),
                        child: SizedBox(
                            height: 18,
                            width: 70,
                            child: Text('View all ',style: TextStyle(fontFamily: 'SourceCodePro',color:Colors.grey,fontSize: 16,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
                        ),
                      )),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,),
                child: Row(
                  children: [
                    /*مشكلة الحجم والطول*/
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 213,
                        maxWidth: 390,

                      ),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context,  '/acmoal_liguids');
                              },
                                child: typeofmedicine(image: 'images/liquid.png',text: 'Acamol',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/capsule_screen');
                                },
                                child: typeofmedicine(image: 'images/capsules.png',text: 'Nifedipine',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/topical_screen');
                                },
                                child: typeofmedicine(image: 'images/topical.png',text: 'Lidocaine',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/suppository_screen');
                                },
                                child: typeofmedicine(image: 'images/ff.png',text: 'Diclofenac',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/drops_screen');
                                },
                                child: typeofmedicine(image: 'images/dr.png',text: 'Gentamicin',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/inhalers_screen');
                                },
                                child: typeofmedicine(image: 'images/in.jpg',text:'SHORT-ACTING',)),

                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/injection_screen');
                              },
                              child: typeofmedicine(image: 'images/image.jpg',text: 'Heparin',)),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*فش طول وعرض زي التميم*/
                  Padding(
                    padding: EdgeInsets.only(top:29,left: 16 ),
                    child: Text(
                      'Kinds of Diseases',
                      style: TextStyle(
                          fontFamily: 'SourceCodePro',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,color: HexColor('#36596A')),
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pushNamed(context, '/diseases_screen');
                  },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 23.43),
                        child: SizedBox(
                            height: 18,
                            width: 61.67,
                            child: Text('View all ',style: TextStyle(fontFamily: 'SourceCodePro',color:Colors.grey,fontSize: 16,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),)
                        ),
                      )),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,),
                child: Row(
                  children: [
                    /*مشكلة الحجم والطول*/
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 213,
                        maxWidth: 390,

                      ),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,'/laryngitis_screen');
                                },
                                child: typeofmedicine(image: 'images/2.png',text: 'Laryngitis',)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/eyes_screen');
                                },
                                child: typeofmedicine(image: 'images/e.jpg',text: 'Cataract',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/eczemadiseases_screen');
                                },
                                child: typeofmedicine(image: 'images/ha.jpg',text: 'Eczema Diseases',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,'/hepatitisB_screen');
                                },
                                child: typeofmedicine(image: 'images/4.jpg',text: 'Hepatitis B ',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/heartAttack_screen');
                                },
                                child: typeofmedicine(image: 'images/5.jpg',text: 'Heart Attack',)),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/arthralgiaDisease_screen');
                                },
                                child: typeofmedicine(image: 'images/7.png',text:'Arthralgia',)),

                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/commonCold_screen');
                              },
                              child: typeofmedicine(image: 'images/o.jpg',text: 'Common Cold',)),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*فش طول وعرض زي التميم*/
                  const Padding(
                    padding: EdgeInsets.only(top:29,left: 16 ),
                    child: Text(
                      'Doctors',
                      style: TextStyle(
                          fontFamily: 'SourceCodePro',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,),
                child: Row(
                  children: [
                    /*مشكلة الحجم والطول*/
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 300,
                        maxWidth: 390,

                      ),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: SizedBox(
                              height: 50,
                              width: 190,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/doctorsGirl_screen');
                                },
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height:200,
                                          width:185,
                                            child: Image.asset('images/d.png',fit: BoxFit.cover)),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12,left: 7,right: 35),
                                          child: Text('Amal Mohammed',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,fontSize: 16),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 55 ),
                                          child: Text('Rafah (3.6 Km)',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 15),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 0,left:7,right: 33 ),
                                          child: Text('In-store shopping.',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w300,fontSize: 15),),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: SizedBox(
                              height: 50,
                              width: 190,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context,'/doctors_screen');
                                },
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height:200,
                                            width:185,

                                            child: Image.asset('images/dd.png',fit: BoxFit.cover)),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 12,left: 7,right: 35),
                                          child: Text('Mohamed Ahmed',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,fontSize: 16),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(right: 55 ),
                                          child: Text('Gaza (3.6 Km)',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 15),),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 0,left:7,right: 33 ),
                                          child: Text('In-store shopping.',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w300,fontSize: 15),),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),



            ],

          ),
        ));
  }
}





