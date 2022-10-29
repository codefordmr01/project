import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '앱 상단 텍스트 변경'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  var val = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫번째 플루터 프로젝트"),
      ),
      body: Column(
        children: [
          Checkbox(
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              }),
          Switch(
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              }),
        ],
      ),
    );
  }
}
