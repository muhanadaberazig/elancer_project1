import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor('#17D4C3'), HexColor('#1FA0BD')
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: IconButton(
                        icon:Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Icon(Icons.arrow_back_ios,size: 30,color: HexColor('#36596A'),),
                        ) ,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 45,),

                SizedBox(
                  height: height * 0.40,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidth = constraints.maxWidth;
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: innerHeight * 0.70,
                              width: innerWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    'Mohammed Ahmed',
                                    style: TextStyle(
                                      color:  HexColor('#36596A'),
                                      fontSize: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'doctorsMoha@gmail.com',
                                    style: TextStyle(
                                      color:  HexColor('#36596A'),
                                      fontSize:25,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: CircleAvatar(
                                radius: 90,
                                backgroundColor: HexColor('#1FA0BD'),

                                child: const CircleAvatar(
                                  backgroundImage: AssetImage('images/dd.png'),
                                  radius: 80,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Text(
                            'Doctor Details ',
                            style: TextStyle(fontWeight: FontWeight.w800,
                              color: HexColor('#1FA0BD'),
                              fontSize: 27,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height:25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height:30,
                                    child: Text('Degree : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#1FA0BD')),)),
                                Container(
                                    height:30,
                                    child: Text('professor of pharmacy',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: HexColor('#36596A')),)),
                              ],
                            ),
                            const SizedBox(
                              height:10,
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                    height:30,
                                    child: Text('Address : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#1FA0BD')),)),
                                Container(
                                    height:30,
                                    child: Text('Palestine_Gaza',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: HexColor('#36596A')),)),
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                    height:30,
                                    child: Text('To Communicate: : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#1FA0BD')),)),
                                Container(
                                    height:30,
                                    child: Text('+9725658665',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: HexColor('#36596A')),)),
                              ],
                            ),
                            const Divider(
                              thickness: 2.5,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Container(
                                    height:30,
                                    child: Text('Workplace : ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#1FA0BD')),)),
                                Container(
                                    height:30,
                                    child: Text('Gaza _ Al Wahda Street',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: HexColor('#36596A')),)),
                              ],
                            ),
                            const SizedBox(height: 15,),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
