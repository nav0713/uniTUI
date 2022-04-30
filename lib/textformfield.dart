import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Generated code for this TextField Widget...
        Padding(
      padding: const EdgeInsets.all(25),
      child: TextFormField(
        obscureText: false,
        decoration: InputDecoration(
            labelText: 'Email Address',
            labelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            hintText: 'Enter your email...',
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black54,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff3f51b5),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true),
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
