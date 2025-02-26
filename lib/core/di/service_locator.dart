import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:style_sync/features/theme_selection/presentation/bloc/theme_cubit.dart';

final sl = GetIt.instance;

Future<void> setUpLocator() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(prefs);

  sl.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
}
