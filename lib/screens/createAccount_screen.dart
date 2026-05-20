import 'package:clot/screens/signin_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/customised_button.dart';
import 'forgotpassword_screen.dart';

class CreateaccountScreen extends StatefulWidget {
  const CreateaccountScreen({super.key});

  @override
  State<CreateaccountScreen> createState() => _CreateaccountScreenState();
}

class _CreateaccountScreenState extends State<CreateaccountScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 123),
                child: Text(
                  'Create Account',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
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
                      controller: firstnameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Color(0xff27272780)),
                      ),

                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Please enter first name";
                        }
                        if (val.length <= 3) {
                          return 'PLease enter more than 3 characters';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: lastnameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Color(0xff27272780)),
                      ),

                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Please enter your last name";
                        }
                        if (val.length <= 5) {
                          return 'PLease enter more than 5 characters';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        hintText: 'email address',
                        hintStyle: TextStyle(color: Color(0xff27272780)),
                      ),

                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Please enter email";
                        }
                        if (val.length <= 5) {
                          return 'PLease enter more than 5 characters';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),

                    TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,

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
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => SigninScreen()),
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
    );
  }
}
