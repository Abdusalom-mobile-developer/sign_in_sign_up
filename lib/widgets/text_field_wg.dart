import 'package:flutter/material.dart';

import '../config/colors.dart';

class TextFieldWg extends StatelessWidget {
  final IconData icon;
  final IconData? suffixIcon;
  final String text;

  const TextFieldWg(
      {super.key, required this.icon, required this.text, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightTeal),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(icon),
          iconColor: AppColors.dustyBlue,
          label: Text(text),
          labelStyle: const TextStyle(
            color: AppColors.lightTeal,
          ),
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : const SizedBox(),
          suffixIconColor: AppColors.dustyBlue,
        ),
      ),
    );
  }
}
