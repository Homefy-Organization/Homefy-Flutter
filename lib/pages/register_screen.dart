import 'package:flutter/material.dart';
import 'package:homefy/core/theme/application_theme.dart';
import 'package:homefy/pages/login_screen/login_screen.dart';
import 'package:homefy/widgets/custom_button.dart';
import 'package:homefy/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "Register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          const Text(
            "Sign Up",
            style: TextStyle(fontSize: 50),
          ),
          Image.asset('assets/images/vector1.png'),
          SizedBox(
            height: size.height * 0.05,
          ),
          CustomTextField(
            labelText: 'Username',
            isPassword: false,
          ),
          CustomTextField(
            labelText: 'Email Address',
            isPassword: false,
          ),
          CustomTextField(
            labelText: 'Password',
            isPassword: true,
          ),
          CustomTextField(
            labelText: 'Confirm Password',
            isPassword: true,
          ),
          Spacer(),
          CustomButton(
            text: 'Sign UP',
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  indent: 50,
                  height: 1,
                  color: ApplicationTheme.primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  'OR Sign up with',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  height: 1,
                  color: ApplicationTheme.primaryColor,
                  indent: 5,
                  endIndent: 40,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/facebook.png'),
              Image.asset('assets/images/google.png'),
              Image.asset('assets/images/twitter.png'),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text('Sign in'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
