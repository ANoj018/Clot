import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onTap;

  const ContinueButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.themeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('Continue', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
