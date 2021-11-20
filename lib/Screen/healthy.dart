import 'package:elancer_project1/Screen/pref/shared_pref_controler.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HealthyScreen extends StatefulWidget {


  @override
  _HealthyScreenState createState() => _HealthyScreenState();
}

class _HealthyScreenState extends State<HealthyScreen> {
  String goodh="";
  String goodstate="";

  void state(){
    if(SharedPrefController().resultt<=15.0){
      setState(() {
        goodh="Very severe weight loss";
        goodstate='Eating a lot of meat, eggs, bread, tahini, avocado, dates, as well as olive oil. Avoid drinking alcohol and drinks that contribute to burning fat';
      });
    }
    else if (SharedPrefController().resultt>=15.0||SharedPrefController().resultt<=16.0){
      setState(() {
        goodh='Severe weight loss';
        goodstate='Eating a lot of meat, eggs, bread, tahini, avocado, dates, as well as olive oil. Avoid drinking alcohol and drinks that contribute to burning fat';

      });
    } else if (SharedPrefController().resultt>=16.0||SharedPrefController().resultt<=18.5){
      setState(() {
        goodh='Weight loss';
        goodstate='Eat meat, eggs, bread, tahini, avocado, dates, as well as olive oil, taking care not to overeat. Avoid drinking alcohol and drinks that contribute to burning fat.';
      });
    } else if (SharedPrefController().resultt>=18.5||SharedPrefController().resultt<=25){
      setState(() {
        goodh='normal weight';
        goodstate='Eating reasonably and appropriately while not eating too much that causes obesity and using sports';
      });
    } else if (SharedPrefController().resultt>=25||SharedPrefController().resultt<=30){
      setState(() {
        goodh='Increase in weight';
        goodstate='drink a lot of waterAnd use smaller platesAnd reduce your alcohol intakeEat foods rich in fiberand exercise';
      });
    } else if (SharedPrefController().resultt>=30||SharedPrefController().resultt<=35){
      setState(() {
        goodh='first degree obesity';
        goodstate='Eat five small meals a day. Avoid processed foods, reduce sugar consumption, reduce use of artificial sweeteners, avoid saturated fats, and cook at home. Try a plant-based diet.';
      });
    } else if (SharedPrefController().resultt>=35||SharedPrefController().resultt<=40){
      setState(() {
        goodh='second degree obesity';
        goodstate='Commitment to a healthy diet, with various activities, and it is recommended to focus on eating a lot of fruits, vegetables, and whole grains, in addition to drinking plenty of water.';
      });
    } else if (SharedPrefController().resultt>=40){
      setState(() {
        goodh='Too obese';
        goodstate='Drink plenty of water It may sound simple, but drinking water is a great way to avoid adding too many calories to your diet.Use smaller plates Reduce alcohol intake Eat foods rich in fiber Donn\'t forget to exercise';
      });
    }

  }
  @override
  void initState() {
    state();
    // TODO: implement initState
    super.initState();
  }
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

                  Text(
                    'My Profile',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      color: HexColor('#36596A'),
                      fontSize: 34,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                                      height: 70,
                                    ),
                                    Text(
                                      SharedPrefController().namee,
                                      style: TextStyle(
                                        color:  HexColor('#36596A'),
                                        fontSize: 37,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(
                                                'Height',
                                                style: TextStyle(
                                                  color:  HexColor('#36596A'),
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(
                                               SharedPrefController().heightt.toString(),
                                                style: TextStyle(
                                                  color: Colors.grey[700],

                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 8,
                                          ),
                                          child: Container(
                                            height: 50,
                                            width: 3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(100),
                                              color:  HexColor('#36596A'),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Width',
                                              style: TextStyle(
                                                color:  HexColor('#36596A'),
                                                fontSize: 25,
                                              ),
                                            ),
                                             Text(
                                              SharedPrefController().weightt.toString(),
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 8,
                                          ),
                                          child: Container(
                                            height: 50,
                                            width: 3,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(100),
                                                color:  HexColor('#36596A'),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Age',
                                              style: TextStyle(

                                                color:  HexColor('#36596A'),
                                                fontSize: 25,
                                              ),
                                            ),
                                          Text(
                                             SharedPrefController().agee.toString(),
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
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
                                  radius: 85,
                                  backgroundColor: HexColor('#17D4C3'),

                                  child: const CircleAvatar(
                                    backgroundImage: AssetImage('images/a.jpeg'),
                                    radius: 75,
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
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 95),
                            child: Text(
                              'My Healthy',
                              style: TextStyle(fontWeight: FontWeight.w800,
                                color:  HexColor('#36596A'),
                                fontSize: 27,
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2.5,
                          ),
                          const SizedBox(
                            height:10,
                          ),
                          Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:30,
                                  child: Text('Health status :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#36596A')),)),
                              const SizedBox(
                                height:5,
                              ),
                              Container(
                                  height:30,
                                  child: Text(' $goodh',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.grey[700]),)),
                              const Divider(
                                thickness: 2.5,
                              ),
                              const SizedBox(height: 5,),
                              SizedBox(
                                  height:30,
                                  child: Text('Tips :',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: HexColor('#36596A')),)),
                              SizedBox(
                                  height:100,
                                  width: double.infinity,
                                  child: Text(' $goodstate',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700, color: Colors.grey[700]),)),
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
