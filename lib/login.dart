import 'package:flutter/material.dart';
import 'package:ui/style.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Generated code for this TextField Widget...
        Padding(
      padding: const EdgeInsets.all(25),
      child: TextFormField(
        obscureText: false,
        decoration: loginTextFieldStyle(),
        style: const TextStyle(
          color: Color(
            0x98FFFFFF,
          ),
          fontSize: 14,
        ),
      ),
    );
  }
}
