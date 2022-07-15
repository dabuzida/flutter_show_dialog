import 'package:flutter/material.dart';
import 'package:flutter_show_dialog/alert_dialogg.dart';
import 'package:flutter_show_dialog/show_dialogg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowDialog',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('ShowDialog'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const ShowDialogg(),
      ),
    );
  }
}
