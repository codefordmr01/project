import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Login extends StatefulWidget {
  var txt="";
  Login({Key? key, required this.txt}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          backgroundColor: Colors.black,
          leading:
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop("로그인 페이지에서 넘어온 값");
              },
            ),
        ),
        body: Container(
          child: Center(child: Text(globals.error_code)),
        ),
    );
  }
}
