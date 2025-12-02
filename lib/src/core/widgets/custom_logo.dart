import 'package:al_mushrif/src/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppSizes.h200,
      child: Image.asset(
        "assets/png/logo.png",
      ),
    );
  }
}