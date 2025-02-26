import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:style_sync/features/theme_selection/presentation/bloc/theme_cubit.dart';
import 'package:style_sync/features/theme_selection/presentation/widgets/app_button.dart';

class ThemeSelectionScreen extends StatelessWidget {
  const ThemeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    final themeCubit = context.read<ThemeCubit>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Themes Demo'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              onPressed: () => themeCubit.setLightTheme(),
              title: 'Light Mode',
              bgColor: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(width: width * 0.03),
            AppButton(
              onPressed: () => themeCubit.setDarkTheme(),
              title: 'Dark Mode',
              bgColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
