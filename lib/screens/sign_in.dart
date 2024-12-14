import 'package:flutter/material.dart';
import 'package:sign_up_sign_in/config/colors.dart';
import 'package:sign_up_sign_in/widgets/button_image_wg.dart';
import 'package:sign_up_sign_in/widgets/button_wg.dart';
import 'package:sign_up_sign_in/widgets/text_field_wg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 110, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              const Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 32,
                  color: AppColors.darkTeal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Enter your credential to continue",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.lightTeal,
                ),
              ),
              const TextFieldWg(icon: Icons.person, text: "Email or Username"),
              const TextFieldWg(
                  icon: Icons.lock,
                  text: "Password",
                  suffixIcon: Icons.remove_red_eye),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.darkTeal,
                  ),
                ),
              ),
              ButtonWg(
                text: "Log In",
                backgroundColor: AppColors.amber,
                textColor: AppColors.black,
                onPressed: () {},
              ),
              ButtonWg(
                  text: "Log In using Apple",
                  backgroundColor: AppColors.black,
                  icon: Icons.apple,
                  textColor: AppColors.white,
                  onPressed: () {}),
              const ButtonImageWg(),
              SizedBox(
                height: 230,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.darkTeal,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.darkTeal,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
