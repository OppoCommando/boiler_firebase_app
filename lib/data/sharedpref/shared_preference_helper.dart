import 'package:boiler_firebase_app/constants/app_shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
// shared pref instance
  late final SharedPreferences _sharedPreference;

  SharedPreferenceHelper(this._sharedPreference);

  // Theme:------------------------------------------------------
  bool get isDarkMode {
    return _sharedPreference.getBool(AppPreference.is_dark_mode) ?? false;
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.setBool(AppPreference.is_dark_mode, value);
  }

  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.getBool(AppPreference.is_logged_in) ?? false;
  }

  Future<bool> saveIsLoggedIn(bool value) async {
    return _sharedPreference.setBool(AppPreference.is_logged_in, value);
  }
}