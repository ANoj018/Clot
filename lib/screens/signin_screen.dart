import 'package:clot/constants/app_color.dart';
import 'package:clot/screens/createAccount_screen.dart';
import 'package:clot/screens/passSignin_screen.dart';
import 'package:clot/widgets/customised_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(23),
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
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffF4F4F4),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Color(0xff27272780)),

                        // prefixIcon: Icon(Icons.email),

                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(4),
                        //   // borderSide: BorderSide(color: AppColor.themeColor),
                        // ),
                      ),

                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Please enter email";
                        }

                        if (val.length <= 5) {
                          return "please enter more than 5 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              CustomisedButton(
                width: double.infinity,

                label: 'Continue',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasssigninScreen(),
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 16),

              Row(
                children: [
                  Text(
                    'Don\'t have an Account ?',
                    style: TextStyle(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateaccountScreen(),
                        ),
                      );
                    },
                    child: Text(
                      '  Create one',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: AppColor.themeColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),

              Container(
                height: 49,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    horizontalTitleGap: 20,
                    leading: Image.asset(
                      'assets/icons/Apple svg.png',
                      height: 80,
                    ),
                    title: Text(
                      'Sign with Apple',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),

              Container(
                height: 49,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    horizontalTitleGap: 20,
                    leading: Image.asset(
                      'assets/icons/Google - png 0.png',
                      height: 80,
                    ),
                    title: Text(
                      'Sign with Google',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 12.5),
              Container(
                height: 49,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 48.6),
                  child: ListTile(
                    horizontalTitleGap: 20,
                    leading: Image.asset(
                      'assets/icons/Facebook - png 0.png',
                      height: 80,
                    ),
                    title: Text(
                      'Sign with Facebook',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
