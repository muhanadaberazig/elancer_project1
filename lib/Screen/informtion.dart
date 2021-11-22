import 'package:elancer_project1/Screen/pref/shared_pref_controler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  num height = 170;
  num weight = 50;
  num age = 15;
  num result = 0;

  late TextEditingController _emailEditingController;
  late TextEditingController _nameEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    // _height=TextEditingController() as int;
    // _weight=TextEditingController() as int;
    // _age=TextEditingController() as int;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Information',
            style: TextStyle(
              fontFamily: 'SourceCodePro',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: HexColor('#36596A'),
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: TextField(
              controller: _nameEditingController,
              keyboardType: TextInputType.name,
              // obscureText: obscureText,
              // keyboardType: keyboardType,
              decoration: InputDecoration(
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: border(),
                  focusedBorder: border(borderColor: Colors.blue)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: TextField(
              controller: _emailEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: border(),
                  focusedBorder: border(borderColor: Colors.blue)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            width: 400,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: HexColor('#17D4C3'),
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Text(
                    'SELECT HEIGHT',
                    style: TextStyle(fontFamily: 'SourceCodePro',fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'CM',
                      style:
                          TextStyle(fontFamily: 'SourceCodePro',fontWeight: FontWeight.w600, fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 16.0),
                    thumbColor: Colors.teal,
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 32.0),
                    activeTrackColor: Colors.white,
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                'Weight',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro', fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                buttonw(
                                  butoomicon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                buttonw(
                                  butoomicon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor('#17D4C3'),
                        ))),
                Expanded(
                    child: Container(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                'Age',
                                style: TextStyle(
                                    fontFamily: 'SourceCodePro', fontWeight: FontWeight.w800, fontSize: 18),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                buttonw(
                                  butoomicon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                buttonw(
                                  butoomicon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#17D4C3'))))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            child: MaterialButton(
              onPressed: () {
                print(weight);
                print(height);
                setState(() {
                  // num heightSuare = height * height;  // 190*190 = 36100
                  // heightSuare = heightSuare / 100;
                  // result = heightSuare / weight;
                  result = weight / pow(height / 100, 2);
                });
                print(result.round());
                performLogin();
              },
              height: 50.0,
              child: Text(
                'Next',
                style: TextStyle(fontFamily: 'SourceCodePro',color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  void performLogin() {
    if (checkdata()) {
      login();
    }
  }

  bool checkdata() {
    if (_emailEditingController.text.isNotEmpty &&
        _nameEditingController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  void login() async {
    //TODO
    await SharedPrefController().save(
        email: _emailEditingController.text,
        name: _nameEditingController.text,
        weight: weight.toDouble(),
        age: age.toInt(),
        height: height.toDouble(),
        result: result.toDouble());
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/main_screen');
    });
  }
}

class buttonw extends StatelessWidget {
  buttonw({required this.butoomicon, required this.onPress});

  final IconData butoomicon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(butoomicon),
      onPressed: onPress,
      fillColor: Colors.teal,
      constraints: BoxConstraints.tightFor(width: 44.0, height: 44.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );
  }
}

OutlineInputBorder border({Color borderColor = Colors.grey}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: borderColor,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}
