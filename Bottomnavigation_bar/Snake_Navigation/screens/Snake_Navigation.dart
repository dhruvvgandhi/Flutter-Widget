import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';


class SnakeNavigationBarExampleScreen extends StatefulWidget {
  @override
  _SnakeNavigationBarExampleScreenState createState() =>
      _SnakeNavigationBarExampleScreenState();
}

class _SnakeNavigationBarExampleScreenState
    extends State<SnakeNavigationBarExampleScreen> {

  SnakeShape customSnakeShape = SnakeShape(
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      centered: true);

  SnakeShape snakeShape = SnakeShape.circle;

  ShapeBorder customBottomBarShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );

  ShapeBorder customBottomBarShape1 = BeveledRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );

  ShapeBorder bottomBarShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)));

  int _selectedItemPosition = 2;
  SnakeBarStyle snakeBarStyle = SnakeBarStyle.floating;

  Color backgroundColor = Colors.white;
  Color selectionColor = Colors.black;

  EdgeInsets padding = EdgeInsets.all(12);
  Color containerColor = Color(0xFFFDE1D7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {}),
        title: Text('Go back', style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: AnimatedContainer(
        color: containerColor,
        duration: Duration(seconds: 1),
        child: PageView(
          onPageChanged: _onPageChanged,
          children: <Widget>[
            Center(
              child: Image.asset('lib/assets/flutter1.png')
            ),
            Center(
              child:  Image.asset('lib/assets/flutter2.png')
            ),
            Center(
              child:  Image.asset('lib/assets/flutter3.png')
            ),
            Center(
              child:  Image.asset('lib/assets/flutter2.png')
            ),
          ],
        ),
      ),
        bottomNavigationBar: SnakeNavigationBar(
        style: snakeBarStyle,
        snakeShape: snakeShape,
        snakeColor: selectionColor, //comment if you want to see colors
        backgroundColor: backgroundColor, //comment if you want to see colors
        shape: bottomBarShape,
        padding: padding,
        currentIndex: _selectedItemPosition,
        onPositionChanged: (index) =>
            setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.time_to_leave),
              title: Text('Train')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('calendar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mic),
              title: Text('microphone')),
          ],
      ),
    );
  }

  _onPageChanged(int page) {
    switch (page) {
      case 0:
        setState(() {
          containerColor = Color(0xFFFDE1D7);
          snakeBarStyle = SnakeBarStyle.floating;
          snakeShape = SnakeShape.circle;
          padding = EdgeInsets.all(12).copyWith();
          bottomBarShape = RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)));
        });
        break;
      case 1:
        setState(() {
          containerColor = Color(0xFFE4EDF5);
          snakeBarStyle = SnakeBarStyle.pinned;
          snakeShape = SnakeShape.circle;
          padding = EdgeInsets.zero;
          bottomBarShape = customBottomBarShape;
        });
        break;

      case 2:
        setState(() {
          containerColor = Color(0xFFF4E4CE);
          snakeBarStyle = SnakeBarStyle.pinned;
          snakeShape = SnakeShape.rectangle;
          padding = EdgeInsets.zero;
          bottomBarShape = customBottomBarShape1;
        });
        break;
      case 3:
        setState(() {
          containerColor = Color(0xFFE7EEED);
          snakeBarStyle = SnakeBarStyle.pinned;
          snakeShape = SnakeShape.indicator;
          padding = EdgeInsets.zero;
          bottomBarShape = null;
        });
        break;
    }
  }
}