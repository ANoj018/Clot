import 'package:clot/screens/forgotpassword_screen.dart';
import 'package:clot/screens/home_screen.dart';
import 'package:clot/widgets/customised_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasssigninScreen extends StatefulWidget {
  const PasssigninScreen({super.key});

  @override
  State<PasssigninScreen> createState() => _PasssigninScreenState();
}

class _PasssigninScreenState extends State<PasssigninScreen> {
  final _formKey = GlobalKey<FormState>();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 123),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xfff272727),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF4F4F4),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xff27272780)),
                        ),

                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Please enter password";
                          }
                          if (val.length <= 5) {
                            return 'PLease enter more than 5 characters';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                CustomisedButton(
                  width: double.infinity,

                  label: 'Continue',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }
                  },
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: 'Forgot Password? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Reset',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotpasswordScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
