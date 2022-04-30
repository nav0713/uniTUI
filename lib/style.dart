import 'package:flutter/material.dart';

InputDecoration loginTextFieldStyle() {
  return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      prefixIcon: const Icon(
        Icons.person,
      ),
      labelText: 'Email Address',
      hintText: 'Enter your email...',
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xffEC416C),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      filled: false);
}
