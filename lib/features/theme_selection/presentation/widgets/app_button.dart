import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color? bgColor;
  final String title;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    this.bgColor,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),
          ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
