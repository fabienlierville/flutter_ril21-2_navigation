import 'package:flutter/material.dart';
import 'package:navigation/pages/page_alert.dart';
import 'package:navigation/pages/page_snack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const PageAlert(),
      debugShowCheckedModeBanner: false,
    );
  }
}
