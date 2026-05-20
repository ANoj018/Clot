import 'package:clot/constants/app_constants.dart';
import 'package:clot/widgets/customised_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String selectGender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 123, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tell us About yourself', style: AppConstants.kFont),
              SizedBox(height: 40),
              Text('Who do you shop for ?', style: TextStyle(fontSize: 16)),
              SizedBox(height: 15),
              Row(
                children: [
                  CustomisedButton(onTap: () {}, label: 'Men', width: 100),
                  SizedBox(width: 30),
                  CustomisedButton(onTap: () {}, label: 'Women', width: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
