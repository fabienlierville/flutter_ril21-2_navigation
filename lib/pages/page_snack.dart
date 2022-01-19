import 'package:flutter/material.dart';

class PageSnack extends StatefulWidget {
  const PageSnack({Key? key}) : super(key: key);

  @override
  _PageSnackState createState() => _PageSnackState();
}

class _PageSnackState extends State<PageSnack> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: const Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text("Appuyez moi"),
        ),
      ),
    );
  }
}
