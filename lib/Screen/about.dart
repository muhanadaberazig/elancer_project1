import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class AbouteScreen extends StatefulWidget {
  const AbouteScreen({Key? key}) : super(key: key);

  @override
  _AbouteScreenState createState() => _AbouteScreenState();
}

class _AbouteScreenState extends State<AbouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [HexColor('#17D4C3'), HexColor('#1FA0BD')])
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            const SizedBox(
              height: 90,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: HexColor('#b2ae53'),

              child: const CircleAvatar(
                backgroundImage: AssetImage('images/mo.jpeg'),
                radius: 90,
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            const Divider(
              height: 10,
              color: Colors.white30,
              thickness: 0.8,
              indent: 10,
              endIndent: 10,
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              shadowColor: HexColor('#b2ae53'),
              child:  ListTile(
                leading: Icon(Icons.person,color: HexColor('#b2ae53'),),
                title: InkWell(
                  onTap: () => _launchEmail(),
                  child: const Text(
                    'Name :',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                subtitle: Text('Mohanad Abu Razig'),

              ),
            ),
            GestureDetector(
              onTap: () async => {await launch("nmnm8957@gmail.com")},
              child: Card(
                margin: const EdgeInsets.only(bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: HexColor('#b2ae53'),
                child:  ListTile(
                  leading: Icon(Icons.email_sharp,color: HexColor('#b2ae53'),),
                  title: InkWell(
                    onTap: () => _launchEmail(),
                    child: const Text(
                      'Email :',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  subtitle: Text('nmnm8957@gmail.com'),
                  trailing: Icon(
                    Icons.send_sharp,
                    color: HexColor('#b2ae53'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            GestureDetector(
              onTap: () async => {await launch("tel:+972597199343")},
              child: Card(
                margin: const EdgeInsets.only(bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: HexColor('#b2ae53'),
                child:  ListTile(
                  leading: Icon(Icons.call,color: HexColor('#b2ae53'),),
                  title: const Text(
                    'Number :',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      letterSpacing: 1,
                    ),
                  ),
                  subtitle: const Text('+972597199343'),
                  trailing: InkWell(
                    onTap: () => calling(),
                    child: Icon(
                      Icons.phone_android,
                      color:HexColor('#b2ae53'),
                    ),
                  ),
                ),
              ),
            ),
                GestureDetector(
                  onTap: () async => {await launch("https://github.com/muhanadaberazig/elancer_project1")},
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    shadowColor: HexColor('#b2ae53'),
                    child:  ListTile(
                      leading: Icon(Icons.note,color: HexColor('#b2ae53'),),
                      title: const Text(
                        'Project in Githup:',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 22,
                          letterSpacing: 1,
                        ),
                      ),
                      subtitle: const Text('elancer_project1'),
                      trailing: InkWell(
                        onTap: () => git(),
                        child: Icon(
                          Icons.note,
                          color:HexColor('#b2ae53'),
                        ),
                      ),
                    ),
                  ),
                ),

          ]),
        ));
  }
}
_launchEmail() async {
  String email="nmnm8957@gmail.com";
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}
calling()async{
  const url = 'tel:+972597199343';
  if( await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}
git()async{
  const url = 'https://github.com/muhanadaberazig/elancer_project1';
  if( await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}