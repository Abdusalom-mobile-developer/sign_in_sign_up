import 'package:flutter/material.dart';
import 'package:sign_up_sign_in/config/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
    
    );
  }
}
