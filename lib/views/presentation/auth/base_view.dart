import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/app_colors.dart';
import 'package:gdg_habit_tracker_app/shared/utils/text.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/app_button.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/shared.dart';
import 'package:gdg_habit_tracker_app/views/presentation/auth/login_view.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              lightBlueColor, // Color to the left
              lightGreenColor, // Color to the right
              lightYellowColor, // Color at the bottom
            ],
            stops: [0.1, 0.2, 0.8], // Control where each color stops
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const AppText(
                  text: "Track Your Progress, Build Your Habits",
                  fontSize: 64,
                  fontWeight: FontWeight.w400,
                ),
                addHeight(20),
                const AppText(
                  text: "Your habits, your rules, our support.",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                // const Spacer(),
                addHeight(150),
                AppButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignInView(),
                    ));
                  },
                  text: 'Sign In',
                ),
                addHeight(20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppText(
                      text: "Don't have an account?",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const AppText(
                        text: "Register now",
                        color: blueColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                addHeight(50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
