import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class AcamolMedicine extends StatefulWidget {
  const AcamolMedicine({Key? key}) : super(key: key);

  @override
  _AcamolMedicineState createState() => _AcamolMedicineState();
}

class _AcamolMedicineState extends State<AcamolMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child:  Text('Acomal',style: TextStyle(color: HexColor('#36596A')),),
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
                        child:Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('liquid medicine',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                            )) ,
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
                              child: Text('It is a very old drug and one of the best selling in the world. It is used to relieve pain and reduce fever. Its brand names are Asacol and Dexamol',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),),
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
                              child: Text('Acmol is a fast-acting drug. It is safe to use for all ages - As long as the usual dose is taken, without exceeding the maximum dose.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
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
