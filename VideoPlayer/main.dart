import 'package:flutter/material.dart';
import 'package:codeview_example/screens/VideoPlayer.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: VideoPlayerScreen(),
    );
  }
}