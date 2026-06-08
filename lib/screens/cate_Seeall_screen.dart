import 'package:flutter/material.dart';

class CateSeeallScreen extends StatefulWidget {
  const CateSeeallScreen({super.key});

  @override
  State<CateSeeallScreen> createState() => _CateSeeallScreenState();
}

class _CateSeeallScreenState extends State<CateSeeallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
