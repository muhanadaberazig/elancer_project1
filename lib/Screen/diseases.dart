import 'package:elancer_project1/Screen/widget/catloge_medicine.dart';

import 'package:elancer_project1/database/model/contact.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class DiseasesScreen extends StatefulWidget {
  const DiseasesScreen({Key? key}) : super(key: key);

  @override
  _DiseasesScreenState createState() => _DiseasesScreenState();
}
List<Contact> faverat=[];
class _DiseasesScreenState extends State<DiseasesScreen> {
  List<Contact> disease=[];

  void addData(){
    disease.add(Contact(id: 0, name: 'Laryngitis', text: 'Inflammation of the membranes lining the nose', image: 'images/2.png'));
    disease.add(Contact(id: 1, name: 'Cataract', text: 'A disease that affects the eye from the inside', image: 'images/e.jpg'));
    disease.add(Contact(id: 2, name: 'Eczema Diseases', text: 'A disease that affects the outer skin of a person', image: 'images/ha.jpg'));
    disease.add(Contact(id: 3, name: 'Hepatitis B  ', text: 'Diseases related to digestion, specifically the large intestine, small intestine, stomach, esophagus, and rectum', image: 'images/4.jpg'));
    disease.add(Contact(id: 4, name: 'Heart Attack', text: 'A group of diseases that affect the heart', image: 'images/5.jpg'));
    disease.add(Contact(id: 5, name: 'Arthralgia', text: 'All orthopedic disorders', image: 'images/7.png'));
    disease.add(Contact(id: 6, name: 'Common Cold', text: 'A group of lung and bronchial diseases', image: 'images/o.jpg'));

  }
  @override
  void initState() {
    // TODO: implement initState
    addData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 30),
            child:  Text('Diseases',style: TextStyle(color: HexColor('#36596A')),),
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
                  child: Text('All Diseases categories',style: TextStyle(fontSize: 20,color: HexColor('#36596A')),),
                )),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context,'/laryngitis_screen');
                    },
                    child: medicine(text: 'Laryngitis',subtext: 'Inflammation of the membranes lining the nose', image: 'images/2.png',)),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/eyes_screen');
                    },
                    child: medicine(text: 'Cataract', subtext: 'A disease that affects the eye from the inside', image: 'images/e.jpg')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/eczemadiseases_screen');
                    },
                    child: medicine(text: 'Eczema Diseases', subtext: 'A disease that affects the outer skin of a person', image: 'images/ha.jpg')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/hepatitisB_screen');
                    },
                    child: medicine(text:  'Hepatitis B  ', subtext: 'Diseases related to digestion, specifically the large intestine, small intestine, stomach, esophagus, and rectum', image: 'images/4.jpg')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top:5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/heartAttack_screen');
                    },
                    child: medicine(text:  'Heart Attack', subtext: 'A group of diseases that affect the heart', image: 'images/5.jpg')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/arthralgiaDisease_screen');
                    },
                    child: medicine(text: 'Arthralgia', subtext: 'All orthopedic disorders', image: 'images/7.png')),
              ),
            ),
            Container(
              height: 100,
              width: 294,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 17,top: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/commonCold_screen');
                    },
                    child: medicine(text:  'Common Cold', subtext: 'A group of lung and bronchial diseases', image: 'images/o.jpg',)),
              ),
            ),



          ],
        )
    );
  }
}
