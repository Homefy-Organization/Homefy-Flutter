import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {required this.labelText,
      required this.isPassword,
      this.isEmail = false});
  final String labelText;
  bool isPassword = false;
  final bool isEmail;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPwd = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
      child: TextFormField(
        validator: (String? value) {
          if (widget.isEmail) {
            final emailRegExp =
                RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,4})$');
            if (!emailRegExp.hasMatch(value!)) {
              return 'Please enter a valid email address';
            } else if (value.isEmpty) {
              return 'Enter some text please';
            }
          } else if (widget.isPassword && value!.length < 8) {
            return 'Password must be at least 8 characters';
          }

          return null;
        },
        keyboardType: TextInputType.emailAddress,
        obscureText: widget.isPassword && !showPwd,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            label: Text(
              widget.labelText,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPwd = !showPwd;
                      });
                    },
                    icon:
                        Icon(showPwd ? Icons.visibility : Icons.visibility_off))
                : null),
      ),
    );
  }
}
