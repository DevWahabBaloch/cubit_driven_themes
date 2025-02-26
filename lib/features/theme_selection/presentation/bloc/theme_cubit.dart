import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:style_sync/core/theme/theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  final SharedPreferences prefs = GetIt.instance<SharedPreferences>();
  ThemeCubit() : super(AppThemes.lightTheme);

  Future<void> savedThemeToPrefs({required Brightness brightness}) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    log('themeIndex: $themeIndex');
    await prefs.setInt('theme_index', themeIndex);
  }

  Future<void> getThemeFromPrefs() async {
    final savedThemeIndex = prefs.getInt('theme_index') ?? 0;
    log('savedThemeIndex: $savedThemeIndex');
    final savedTheme = savedThemeIndex == 0 ? AppThemes.lightTheme : AppThemes.darkTheme;
    log('savedTheme: $savedTheme');
    emit(savedTheme);
  }

  void setLightTheme() {
    emit(AppThemes.lightTheme);
    savedThemeToPrefs(brightness: Brightness.light);
    log('Light Mode Activated');
  }

  void setDarkTheme() {
    emit(AppThemes.darkTheme);
    savedThemeToPrefs(brightness: Brightness.dark);
    log('Dark Mode Activated');
  }
}
