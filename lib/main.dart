import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _names = ['Andrew', 'Bob', 'Charles'];
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: 100,
            child: ListView.builder(
                itemCount : _names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: Text(_names[index]));
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _names.add('Someone($_counter)');
            _counter ++;
          });
        },
        tooltip: 'Add TimeStamp',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
