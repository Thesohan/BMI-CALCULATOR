import 'package:bmi/screens/Input_page.dart';
import 'package:bmi/screens/result_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

      
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),

      routes: {
        'result':(context)=>ResultPage(),
      },
    );
  }
}
