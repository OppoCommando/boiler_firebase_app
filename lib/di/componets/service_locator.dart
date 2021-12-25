import 'package:boiler_firebase_app/data/repository/app_repository.dart';
import 'package:boiler_firebase_app/data/sharedpref/shared_preference_helper.dart';
import 'package:boiler_firebase_app/di/module/local_module.dart';
import 'package:boiler_firebase_app/stores/theme/theme_store.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
Future<void> setupLocator() async {

  getIt.registerSingletonAsync<SharedPreferences>(() => LocalModule.provideSharedPreferences());

  // singletons:----------------------------------------------------------------
  getIt.registerSingleton(SharedPreferenceHelper(await getIt.getAsync<SharedPreferences>()));
  //getIt.registerSingleton<Dio>(NetworkModule.provideDio(getIt<SharedPreferenceHelper>()));

  // repository:----------------------------------------------------------------
  getIt.registerSingleton(AppRepository(
    getIt<SharedPreferenceHelper>(),
  ));

  // stores:--------------------------------------------------------------------
  getIt.registerSingleton(ThemeStore(getIt<AppRepository>()));
}
