import 'package:flutter/material.dart';

class PageSimple extends StatefulWidget {
  const PageSimple({Key? key}) : super(key: key);

  @override
  _PageSimpleState createState() => _PageSimpleState();
}

class _PageSimpleState extends State<PageSimple> {
  String choix = "Aucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
      ),
      body: Center(
        child:Column(
          children: [
            Text("Choix de l'utilisateur : ${choix}"),
            ElevatedButton(
              child: Text("Appuyez moi"),
              onPressed: (){
                simple();
              },
            ),
          ],
        )
      ),
    );
  }

  Future<void> simple() async{
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contextDialog){
        return SimpleDialog(
          title: Text("Choississez un moyen de transport", textScaleFactor: 1.2,),
          contentPadding: EdgeInsets.all(5.0),
          children: [
            SimpleDialogOption(
              child: Row(
                children: [
                  Icon(Icons.directions_car),
                  Text("Voiture")
                ],
              ),
              onPressed: (){
                setState(() {
                  choix = "Voiture";
                  Navigator.pop(contextDialog);
                });
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: [
                  Icon(Icons.directions_boat),
                  Text("Bateau")
                ],
              ),
              onPressed: (){
                setState(() {
                  choix = "Bateau";
                  Navigator.pop(contextDialog);
                });
              },
            ),
            SimpleDialogOption(
              child: Row(
                children: [
                  Icon(Icons.airplanemode_active),
                  Text("Avion")
                ],
              ),
              onPressed: (){
                setState(() {
                  choix = "Avion";
                  Navigator.pop(contextDialog);
                });
              },
            ),
          ],
        );
      }
    );
  }
}
