import 'package:flutter/material.dart';
import 'package:homefy/core/theme/application_theme.dart';
import 'package:homefy/pages/register_screen.dart';
import 'package:homefy/widgets/custom_button.dart';
import 'package:homefy/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "Login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool isRemember = true;

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            const Text(
              "Login",
              style: TextStyle(fontSize: 50),
            ),
            Image.asset('assets/images/vector1.png'),
            SizedBox(
              height: size.height * 0.05,
            ),
            CustomTextField(
              isEmail: true,
              labelText: 'Email Address',
              isPassword: false,
            ),
            CustomTextField(
              labelText: 'Password',
              isPassword: true,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isRemember = !isRemember;
                    });
                  },
                  child: Icon(
                    isRemember ? Icons.toggle_off_sharp : Icons.toggle_on_sharp,
                    size: 70,
                    color: isRemember
                        ? ApplicationTheme.primaryColor
                        : Colors.grey,
                  ),
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('Forget Password?'),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
                text: 'Login',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {});
                  }
                }),
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
                    'OR Login with',
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t  have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
