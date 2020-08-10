import 'package:flutter/material.dart';
import 'package:codeview_example/screens/Bubbled_Nav_Bar.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: MyHomePage(title: 'Bubble Bottom Bar Demo'),
    );
  }
}
