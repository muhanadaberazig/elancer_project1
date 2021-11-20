

import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey{
  loggedIn,email,name,height,weight,age,result

}
class SharedPrefController{
  //SINGLETON
  /* لانشاء class ينشئ مرة واحده */
  /*أنشئت object من داخل الclass لانو بنغعش اعمل من برا class */
  static final SharedPrefController _instance=SharedPrefController._internal();
  /*بنسكر مداخل الclass*/
  SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;
  /*انشئت factory  لتعامل مع ال class من الخارج*/
  factory SharedPrefController(){
    return _instance;
  }
  Future <void> initSharePref() async{
    _sharedPreferences=await SharedPreferences.getInstance();
  }
  /*  لحفظ البيانات*/
  Future<void> save({required String email,required String name,required double height,required double weight,required int age,required double result})async {
    await _sharedPreferences.setBool(PrefKey.loggedIn.toString(), true);
    await _sharedPreferences.setString(PrefKey.email.toString(), email);
    await _sharedPreferences.setString(PrefKey.name.toString(), name);
    await _sharedPreferences.setDouble(PrefKey.height.toString(), height);
    await _sharedPreferences.setDouble(PrefKey.weight.toString(), weight);
    await _sharedPreferences.setInt(PrefKey.age.toString(), age.toInt());
    await _sharedPreferences.setDouble(PrefKey.result.toString(), result);

  }

  bool get loggedIn=>_sharedPreferences.getBool(PrefKey.loggedIn.toString())??false;
  String get emaill=>_sharedPreferences.getString(PrefKey.email.toString())??'No Email';
  String get namee=>_sharedPreferences.getString(PrefKey.name.toString())??'No name';
  double get heightt=>_sharedPreferences.getDouble(PrefKey.height.toString())??10.0;
  double get weightt=>_sharedPreferences.getDouble(PrefKey.weight.toString())??10.0;
  int get agee=>_sharedPreferences.getInt(PrefKey.age.toString())??10;
  double get resultt=>_sharedPreferences.getDouble(PrefKey.result.toString())??10.0;
  /*لحدف تسجيل الدخول لما نحط خروج*/
  // Future<bool> remove(String Key) async{
  //   return await _sharedPreferences.remove(key);
  // }
  /*لتغيير قيمة اللغة في Provider*/
  // Future<bool> changeLanguage({required String langauge})async{
  //
  //   return await _sharedPreferences.setString(PrefKey.langauge.toString(), langauge);
  // }
  // /*بدي اقرا القيمة*/
  // String get langage=>_sharedPreferences.getString(PrefKey.langauge.toString())??'en';
  /*مسح القيم كلها*/
Future<bool> clear()async{
  return await _sharedPreferences.clear();
}
}