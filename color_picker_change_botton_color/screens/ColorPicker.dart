import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  Color currentColor = Colors.limeAccent;

  void changeColor(Color color) => setState(() => currentColor = color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 3.0,
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              titlePadding: const EdgeInsets.all(0.0),
                              contentPadding: const EdgeInsets.all(0.0),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: currentColor,
                                  onColorChanged: changeColor,
                                  colorPickerWidth: 300.0,
                                  pickerAreaHeightPercent: 0.7,
                                  enableAlpha: true,
                                  displayThumbColor: true,
                                  showLabel: true,
                                  paletteType: PaletteType.hsv,
                                  pickerAreaBorderRadius: const BorderRadius.only(
                                    topLeft: const Radius.circular(2.0),
                                    topRight: const Radius.circular(2.0),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('Change me'),
                      color: currentColor,
                      textColor: Colors.black54
                    ),
                  ],
                ),
          ),
    );
  }
}