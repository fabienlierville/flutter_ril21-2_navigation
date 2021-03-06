import 'package:flutter/material.dart';
import 'package:navigation/pages/page_alert.dart';
import 'package:navigation/pages/page_bottom.dart';
import 'package:navigation/pages/page_simple.dart';
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
      home: const PageBottom(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/alert': (c) => PageAlert(),
        '/bottom': (c) => PageBottom(),
        '/simple': (BuildContext c) { return PageSimple();},
        '/snack': (BuildContext context) => PageSnack(),
      },
    );
  }
}
