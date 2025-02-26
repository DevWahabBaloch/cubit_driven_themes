import 'package:flutter/material.dart';
import 'package:style_sync/core/di/service_locator.dart';
import 'package:style_sync/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  runApp(const MyApp());
}
