import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/theme_data.dart';
import 'package:gdg_habit_tracker_app/views/presentation/auth/base_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: BaseView()),
    );
  }
}
