import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                gradient: LinearGradient(
                    colors: [HexColor('#17D4C3'), HexColor('#1FA0BD')])),
            child: SvgPicture.asset('images/w.svg'),
          ),
          SizedBox(height: 20,),
          ListTile(
            tileColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Future.delayed(Duration(microseconds: 500), () {
                Navigator.pushNamed(context, '/medicine_screen');
              });
            },
            leading:Container(
              height: 50,
                child: Image.asset('images/liquid.png')),
            title: Text('Medicine',style: TextStyle(fontFamily: 'SourceCodePro',fontWeight: FontWeight.bold,fontSize: 18)),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 20,),
          ListTile(
            tileColor: Colors.white,
            onTap: () {
              Navigator.pop(context);
              Future.delayed(Duration(microseconds: 500), () {
                Navigator.pushNamed(context, '/diseases_screen');
              });
            },
            leading:Container(
                height: 50,
                child: Image.asset('images/e.jpg')),
            title: Text('Diseases',style: TextStyle(fontFamily: 'SourceCodePro',fontWeight: FontWeight.bold,fontSize: 18)),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          SizedBox(height: 20,),


          Divider(
            endIndent: 10,
            indent: 10,
            thickness: 3,
            color: Colors.teal,
          ),
          ListTile(
            tileColor: Colors.transparent,
              onTap: () {
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.pushNamed(
                      context, '/aboute_screen');
                });
              },
              leading: Icon(Icons.info,size: 40, color: HexColor('#17D4C3'),),
              title: Text('About',style: TextStyle(fontFamily: 'SourceCodePro',fontWeight: FontWeight.bold,fontSize: 18)),
          ),
          SizedBox(height: 10,),
          ListTile(
            tileColor: Colors.transparent,
            onTap: () {
              Future.delayed(Duration(seconds: 1), () {
                Navigator.pushNamed(
                    context, '/healthy_screen');
              });
            },
            leading: Icon(FontAwesomeIcons.personBooth,size: 40, color: HexColor('#17D4C3'),),
            title: Text('Healthy',style: TextStyle(fontFamily: 'SourceCodePro',fontWeight: FontWeight.bold,fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
