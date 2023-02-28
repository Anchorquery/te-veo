import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _token = '';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get token {
    return _prefs.getString('token') ?? _token;
  }

  static set token( String token) {
    _token = token;
    _prefs.setString("token", token);
    
  }

  static void setidUser( int idUser ){
    _prefs.setInt("idUser", idUser);
    print("ya lo guardo ${_prefs.getInt('idUser') }");
  }

  static int? getidUser(){
    return _prefs.getInt('idUser');
  }


  
}
