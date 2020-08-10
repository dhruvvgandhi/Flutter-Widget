import 'package:flutter/material.dart';
import 'package:codeview_example/screens/Iconexample.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CodeView Example'),
        ),
        body: WidgetWithCodeView(
            child: Iconexample(),
            sourceFilePath: 'lib/screens/Iconexample.dart'),
      ),
    );
  }
}
