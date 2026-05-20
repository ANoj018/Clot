import 'package:clot/screens/signin_screen.dart';
import 'package:clot/widgets/customised_button.dart';
import 'package:flutter/material.dart';

class ResetSentScreen extends StatelessWidget {
  const ResetSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/email image.png', scale: 5),
              SizedBox(height: 24),
              Text(
                'We Sent you an Email to reset \n        '
                '        your password.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),

              CustomisedButton(
                width: 159,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SigninScreen()),
                  );
                },
                label: 'Return to Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
