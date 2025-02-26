import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:style_sync/core/di/service_locator.dart';
import 'package:style_sync/core/theme/theme.dart';
import 'package:style_sync/features/theme_selection/presentation/bloc/theme_cubit.dart';
import 'package:style_sync/features/theme_selection/presentation/pages/theme_selection_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = sl<ThemeCubit>()..getThemeFromPrefs();
    return BlocProvider(
        create: (_) => themeCubit,
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (context, state) {
            return MaterialApp(
              theme: state,
              darkTheme: AppThemes.darkTheme,
              themeMode: ThemeMode.system,
              debugShowCheckedModeBanner: false,
              home: const ThemeSelectionScreen(),
            );
          },
        ));
  }
}
