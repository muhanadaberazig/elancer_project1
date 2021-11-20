import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class OutBordingScreen extends StatefulWidget {
  const OutBordingScreen({Key? key}) : super(key: key);

  @override
  _OutBordingScreenState createState() => _OutBordingScreenState();
}

class _OutBordingScreenState extends State<OutBordingScreen> {
  late PageController _pageController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 153),
              child: Image.asset('images/Group 45.png'),
            ),
            SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(top: 44.44, right: 45, left: 44),
              child: Text('Get connect our best Doctors',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6, right: 20, left: 20),
              child: Text(
                  'Get the most famous international medicines and know the diseases',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 73, right: 24, left: 24),
              child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushReplacementNamed(context, '/information_screen');
                  },
                style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ) ),
                    child:const SizedBox(
                      height: 60,
                      width: 327,
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Next',
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,fontStyle: FontStyle.normal, ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  )),

          ],
        ),
      ),
    ));
  }
}