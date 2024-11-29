//import 'package:myapp/main.dart';
// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
//import 'package:myapp/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(96, 207, 21, 21)),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: true,
      //debugShowMaterialGrid: true,
      home: const MyhomePage(),
    );
    return materialApp;
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Developed by John Doe',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text( 'This is a card with some text in the body.',
                style: TextStyle(fontSize: 16), 
                ),
                const SizedBox(height: 10),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Corrected the syntax error here 
        child: const Text('Close'),
      ),
    );
  }
}

