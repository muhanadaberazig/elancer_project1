import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class SHORTActingMedicine extends StatefulWidget {
  const SHORTActingMedicine({Key? key}) : super(key: key);

  @override
  _SHORTActingMedicineState createState() => _SHORTActingMedicineState();
}

class _SHORTActingMedicineState extends State<SHORTActingMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child:  Text('SHORTActing',style: TextStyle(color: HexColor('#36596A')),),
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
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/n.jpg'),
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
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
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
                          child: Text('Inhalers medicine',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                        ) ,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Deatails Produect :',
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
                              child: Text('Fast-acting anti-diabetic pancreatic hormone',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15.5),),
                            )) ,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Notes :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: HexColor('#36596A')
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      height: 120,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Container(

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Via the intravenous route, the insulin half-life is very short, approximately 5 minutes, and the effect disappears within 30 minutes of injection.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                            )) ,
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
