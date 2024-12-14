import 'package:flutter/material.dart';

import '../config/colors.dart';

class ButtonImageWg extends StatelessWidget {
  const ButtonImageWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.mintGreen,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Image.asset(
              "assets/images/google.png",
              height: 20,
              width: 20,
            ),
            const Text(
              "Log In using Google",
              style: TextStyle(
                  color: AppColors.darkTeal,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
