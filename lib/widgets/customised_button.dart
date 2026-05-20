import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class CustomisedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double width;

  CustomisedButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColor.themeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(label, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
