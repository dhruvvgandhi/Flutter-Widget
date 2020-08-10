import 'package:fl_radial_menu/fl_radial_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final items = [
    RadialMenuItem(Icon(Icons.camera, color: Colors.white), Colors.red,
            () => print('red')),
    RadialMenuItem(Icon(Icons.calendar_today, color: Colors.white), Colors.green,
            () => print('green')),
    RadialMenuItem(Icon(Icons.phone_paused, color: Colors.white), Colors.blue,
            () => print('blue')),
    RadialMenuItem(Icon(Icons.music_note, color: Colors.white), Colors.yellow,
            () => print('yellow')),
    RadialMenuItem(Icon(Icons.time_to_leave, color: Colors.white), Colors.purple,
            () => print('purple')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
              RadialMenu(items, fanout: Fanout.bottomRight),
              Divider(),
              RadialMenu(items, fanout: Fanout.bottom),
              Divider(),
              RadialMenu(items, fanout: Fanout.bottomLeft),
              Divider(),
              RadialMenu(items, fanout: Fanout.right),
              Divider(),
              RadialMenu(items),
              Divider(),
              RadialMenu(items, fanout: Fanout.left),
              Divider(),
              RadialMenu(items, fanout: Fanout.topRight),
              Divider(),
              RadialMenu(items, fanout: Fanout.top),
              Divider(),
              RadialMenu(items, fanout: Fanout.topLeft),
            ]),
      ),
    );
  }
}