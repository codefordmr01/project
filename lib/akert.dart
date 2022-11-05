import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'globals.dart' as globals;

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {

  RouteArguments routeArguments = RouteArguments("", "");

  @override
  Widget build(BuildContext context) {

    RouteArguments routeArguments = ModalRoute.of(context)!.settings.arguments as RouteArguments;

    return Scaffold(
      appBar:
        AppBar(
          backgroundColor: Colors.black,
          leading:
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
        ),
        body: Container(
    child: Center(child: Text(routeArguments.title)),
        ),
    );
  }
}
