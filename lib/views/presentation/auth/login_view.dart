import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/assets.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/app_column.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return AppColumn(children: [Image.asset(signInPicture)]);
  }
}
