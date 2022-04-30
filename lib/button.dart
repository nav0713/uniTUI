import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: style(MaterialColor(0xffEC416C, color), Colors.transparent,
            Colors.transparent),
        child: const Text("Login",
            style: TextStyle(
              color: Colors.white,
            )));
  }
}

ButtonStyle style(Color background, Color borderColor, Color overlay) {
  return ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(background),
      overlayColor: MaterialStateProperty.all<Color>(overlay),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(
                width: 2,
                color: borderColor,
              ))));
}
