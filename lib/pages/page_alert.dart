import 'package:flutter/material.dart';

class PageAlert extends StatefulWidget {
  const PageAlert({Key? key}) : super(key: key);

  @override
  _PageAlertState createState() => _PageAlertState();
}

class _PageAlertState extends State<PageAlert> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Appuyez moi"),
          onPressed: (){
            alerte();
          },
        ),
      ),
    );
  }

  Future<void> alerte() async{
    showDialog(
      context: context,
      builder: (BuildContext contextDialog){
        return Text("Coucou");
      }
    );
  }
}
