import 'package:clot/constants/app_constants.dart';
import 'package:clot/screens/signin_screen.dart';
import 'package:clot/widgets/customised_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  String selectGender = '';
  String? selectedAge;

  final List<String> ageRanges = [
    '13-17',
    '18-24',
    '25-34',
    '35-44',
    '45-54',
    '55+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 123, left: 18, right: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tell us About yourself', style: AppConstants.kFont),
                SizedBox(height: 40),
                Text('Who do you shop for ?', style: TextStyle(fontSize: 16)),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomisedButton(
                      onTap: () {
                        setState(() {
                          selectGender = 'Men';
                        });
                      },
                      label: 'Men',
                      width: 150,
                      isSelected: selectGender == 'Men',
                    ),
                    CustomisedButton(
                      onTap: () {
                        setState(() {
                          selectGender = 'Women';
                        });
                      },
                      label: 'Women',
                      width: 150,
                      isSelected: selectGender == 'Women',
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text('How Old are you ?', style: TextStyle(fontSize: 16)),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedAge,
                      hint: Text('Age Range'),
                      icon: Icon(Icons.keyboard_arrow_down),
                      isExpanded: true,
                      items: ageRanges.map((String age) {
                        return DropdownMenuItem<String>(
                          value: age,
                          child: Text(age),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedAge = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 300),
                CustomisedButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
                    );
                  },
                  label: 'Finish',
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
