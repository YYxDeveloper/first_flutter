import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*
  Author: HappyMan
  Date: 2022/02/14
  Topic: FutureBuilder<T> class
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Future<String> _getData = Future<String>.delayed(
      Duration(seconds: 5),
          () => 'Data Loaded',
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Happy Future Builder'),
        ),
        body: FutureBuilder<String>(
            future: _getData,
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                children = [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26),
                    child: Text('Result: ${snapshot.data}'),
                  )
                ];
              } else if (snapshot.hasError) {
                children = [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26),
                    child: Text('Error: ${snapshot.error}'),
                  )
                ];
              } else {
                children = [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26),
                    child: Text('Awaiting result...'),
                  )
                ];
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              );
            }
        ),
      ),
    );
  }
}