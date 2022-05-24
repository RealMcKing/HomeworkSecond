import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Counter'),
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
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tap to "-" decrement',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      color: Colors.redAccent,
                      onPressed: () {
                        _decrementCounter();
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.black,
                      )),
                  Text(
                    '$_counter',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  IconButton(
                      onPressed: () {
                        _incrementCounter();
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
            const Text('Tap to "+" increment',
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
