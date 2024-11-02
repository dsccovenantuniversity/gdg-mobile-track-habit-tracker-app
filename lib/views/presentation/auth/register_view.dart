import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/app_colors.dart';
import 'package:gdg_habit_tracker_app/shared/utils/assets.dart';
import 'package:gdg_habit_tracker_app/shared/utils/text.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/app_button.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/app_column.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/app_textfield.dart';
import 'package:gdg_habit_tracker_app/shared/widgets/shared.dart';
import 'package:gdg_habit_tracker_app/views/presentation/auth/login_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      isScrollable: true,
      children: [
        addHeight(10),
        Image.asset(registerInPicture),
        addHeight(20),
        Center(
          child: Text.rich(
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
            TextSpan(
              text: "Welcome Back! to",
              children: [
                TextSpan(
                  text: " Lifestyle",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: lightGreen2),
                ),
              ],
            ),
          ),
        ),
        addHeight(30),
        AppTextField(
          controller: emailController,
          labelText: 'Email',
        ),
        AppTextField(
          controller: passwordController,
          labelText: 'Password',
        ),
        AppTextField(
          controller: confirmPasswordController,
          labelText: 'Confirm Password',
        ),
        addHeight(30),
        AppButton(
          onPressed: () {},
          text: 'Sign In',
        ),
        addHeight(10),
        const Center(
            child: AppText(
          text: "or",
          fontSize: 18,
        )),
        addHeight(30),
        AppButton(
          backgroundColor: whiteColor,
          borderColor: lightGreen2,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: Image.asset(
                  google,
                ),
              ),
              addWidth(5),
              const AppText(
                text: "Continue with Google",
                color: blackColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          onPressed: () {},
        ),
        addHeight(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText(
              text: "Already have an account? ",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignInView(),
                ));
              },
              child: const AppText(
                text: "Get in now!",
                color: blueColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
