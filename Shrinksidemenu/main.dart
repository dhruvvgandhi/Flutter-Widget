import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:codeview_example/screens/Shrinksidemenu.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      materialApp: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.green),
        home:MyHomePage(title: 'Liquid Ui Shrink SideMenus'),
      )
    );
  }
}
