import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screen/about.dart';
import 'Screen/disaese/arthralgia.dart';
import 'Screen/disaese/commoncold.dart';
import 'Screen/disaese/eczema.dart';
import 'Screen/disaese/heart.dart';
import 'Screen/disaese/hepatitis.dart';
import 'Screen/disaese/laryngitis.dart';
import 'Screen/disaese/trachoma.dart';

import 'Screen/doctors/doctorgirl.dart';
import 'Screen/doctors/doctors.dart';
import 'Screen/nifedipine.dart';

import 'Screen/diseases.dart';
import 'Screen/healthy.dart';
import 'Screen/informtion.dart';
import 'Screen/inhalers.dart';
import 'Screen/heparin.dart';
import 'Screen/acomal_medicine.dart';
import 'Screen/lunch_screen.dart';
import 'Screen/main_screen.dart';
import 'Screen/medicine.dart';
import 'Screen/out_bording_screen.dart';
import 'Screen/diclofenac.dart';
import 'Screen/lidocaine_medicine.dart';
import 'Screen/pref/shared_pref_controler.dart';
import 'Screen/widget/gentamicin.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initSharePref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(921,375),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:'/lunch_screen' ,
        routes: {
          '/lunch_screen':(context)=>LunchScreen(),
          '/bording_screen':(context)=>OutBordingScreen(),
          '/main_screen':(context)=>MainScreen(),
          '/medicine_screen':(context)=> medicineScren(),
          '/diseases_screen':(context)=>DiseasesScreen(),
          '/doctors_screen':(context)=>DoctorsScreen(),
          '/doctorsGirl_screen':(context)=>DoctorsGirlScreen(),
         '/acmoal_liguids':(context)=> AcamolMedicine(),
          '/aboute_screen':(context)=>AbouteScreen(),
          '/information_screen':(context)=>InformationScreen(),
          '/capsule_screen':(context)=>NifedipineMedicine(),
          '/topical_screen':(context)=>LidocaineMedicine(),
          '/drops_screen':(context)=>GentamicinMedicine(),
          '/inhalers_screen':(context)=>SHORTActingMedicine(),
          '/suppository_screen':(context)=>DiclofenacMedicine(),
          '/injection_screen':(context)=>HeparinMedicine(),
          '/eyes_screen':(context)=>EyesDiseases(),
          '/laryngitis_screen':(context)=>LaryngitisDiseases(),
          '/heartAttack_screen':(context)=>HeartAttack(),
          '/eczemadiseases_screen':(context)=>EczemaDiseases(),
          '/hepatitisB_screen':(context)=>HepatitisB(),
          '/arthralgiaDisease_screen':(context)=>ArthralgiaDisease(),
          '/commonCold_screen':(context)=>CommonCold(),
        '/healthy_screen':(context)=>HealthyScreen()
        }
      ),
    );
  }
}
// child: Text('',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),),
