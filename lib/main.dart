import 'dart:html';

import 'package:example1/payments.dart';
import 'package:example1/transfers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var mainState;

  @override
  void initState() {
    mainState = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('Kaspi')),
      body: Center(child: Text('Hello app!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Платежи'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));
              },
            ),
            ListTile(
              title: const Text('Переводы'),
              onTap: () {
               setState(() {
                  mainState = 2;
                });
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ), title: 'Kaspi');
  }
}



