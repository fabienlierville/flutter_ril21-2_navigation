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
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            callSnack();
          },
          child: Text("Appuyez moi"),
        ),
      ),
    );
  }

  void callSnack(){
    SnackBar snackBar = SnackBar(
        content: const Text("Impossible d'appeler l'API"),
      duration: Duration(seconds: 4),
      backgroundColor: Colors.black54,
      action: SnackBarAction(
          label: "Clic",
          onPressed: (){
            print("Clic SnackBar");
          },
        textColor: Colors.white,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
