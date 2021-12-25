import 'package:boiler_firebase_app/data/sharedpref/shared_preference_helper.dart';


class AppRepository{
// shared pref object
 late final SharedPreferenceHelper _sharedPrefsHelper;

 // constructor
 AppRepository( this._sharedPrefsHelper);


 // Theme: --------------------------------------------------------------------
 Future<void> changeBrightnessToDark(bool value) =>
     _sharedPrefsHelper.changeBrightnessToDark(value);
 bool get isDarkMode => _sharedPrefsHelper.isDarkMode;
}