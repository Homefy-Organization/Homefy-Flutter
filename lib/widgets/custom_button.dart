import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homefy/core/theme/application_theme.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5), // Shadow color
            offset: Offset(10, 8), // Shadow offset (horizontal, vertical)
            blurRadius: 5.0, // Shadow blur radius
            // Spread radius
          ),
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(211, 67)),
            backgroundColor: MaterialStateProperty.all<Color>(
                ApplicationTheme.primaryColor)),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
