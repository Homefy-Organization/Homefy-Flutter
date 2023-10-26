import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key, required this.labelText, required this.isPassword});
  final String labelText;
  bool isPassword = false;

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
