import 'package:flutter/material.dart';
import 'package:ui/button.dart';
import 'package:ui/login.dart';
import 'package:ui/style.dart';
import 'package:ui/textformfield.dart';

void main() {
  runApp(const MyApp());
}

Map<int, Color> color = {
  50: const Color.fromRGBO(4, 131, 184, .1),
  100: const Color.fromRGBO(4, 131, 184, .2),
  200: const Color.fromRGBO(4, 131, 184, .3),
  300: const Color.fromRGBO(4, 131, 184, .4),
  400: const Color.fromRGBO(4, 131, 184, .5),
  500: const Color.fromRGBO(4, 131, 184, .6),
  600: const Color.fromRGBO(4, 131, 184, .7),
  700: const Color.fromRGBO(4, 131, 184, .8),
  800: const Color.fromRGBO(4, 131, 184, .9),
  900: const Color.fromRGBO(4, 131, 184, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'LexendDeca',
          primaryColor: const Color(0xffFFFFFF),
          primarySwatch: MaterialColor(0xffEC416C, color),
          backgroundColor: Colors.black12),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();
  bool showSuffixIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const InputField(),
              const InputField(),
              TextFormField(
                obscureText: false,
                decoration: loginTextFieldStyle(),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: false,
                controller: _textEditingController,
                onChanged: (value) {
                  setState(() {
                    value.isEmpty
                        ? showSuffixIcon = true
                        : showSuffixIcon = false;
                  });
                },
                decoration: loginTextFieldStyle().copyWith(
                    hintText: "Enter Password...",
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: Visibility(
                        visible:
                            _textEditingController.text.isEmpty ? false : true,
                        child: const Icon(Icons.remove_red_eye))),
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: style(MaterialColor(0xffEC416C, color),
                          Colors.transparent, Colors.white54),
                      child: const Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                          )))),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width * .50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 30,
                        child: Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                      ),
                      Text(
                        "  or login via QR code  ",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 30,
                        child: Divider(
                          color: Colors.grey,
                          height: 2,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.qr_code,
                        color: Color(0xffEC416C),
                      ),
                      onPressed: () {},
                      style: style(
                          Colors.white,
                          MaterialColor(0xffEC416C, color),
                          const Color(0xffEC416C).withOpacity(.4)),
                      label: const Text("Scan QR code",
                          style: TextStyle(
                            color: Color(0xffEC416C),
                          ))))
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
