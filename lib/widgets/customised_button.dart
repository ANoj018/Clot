import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class CustomisedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final double width;
  final bool isSelected;

  CustomisedButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.width,
    this.isSelected = false,
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
          color: isSelected ? Color(0xffF4F4F4) : AppColor.themeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(color: isSelected ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
