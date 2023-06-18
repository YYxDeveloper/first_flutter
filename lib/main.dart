import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switchValue = false;
  String _displayText = 'Switch is OFF';
  // setState appBarTitle
  String appBarTitle = 'Old Title';

  void changeTitle(bool theValue) {
    setState(() {
      appBarTitle = theValue ? 'New Title' : 'Old Title';
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(_displayText),
              Switch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                    _displayText = value ? 'Switch is ON' : 'Switch is OFF';

                    // appBarTitle
                    changeTitle(value);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}