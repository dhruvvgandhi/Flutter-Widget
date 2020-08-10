import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomePage extends StatelessWidget{
  final scratchKey = GlobalKey<ScratcherState>();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Scratcher'),),
     body: Center(
       child: Column(
           children:<Widget>[
             SizedBox(height: 50,),
             Scratcher(
               key: scratchKey,
                 child: FlutterLogo(size: 150.0,),
               color: Colors.grey,
               brushSize: 30.0,
               threshold: 50.0,
           ),
           RaisedButton(
             child: const Text('Reset'),
             onPressed: () {
               scratchKey.currentState.reset(duration: Duration(milliseconds: 1000));
             },
           )]),
     ),
   );
  }
}