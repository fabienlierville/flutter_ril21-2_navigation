import 'package:flutter/material.dart';

class PageBottom extends StatefulWidget {
  const PageBottom({Key? key}) : super(key: key);

  @override
  _PageBottomState createState() => _PageBottomState();
}

class _PageBottomState extends State<PageBottom> {
  String choix = "Aucun";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child:Column(
          children: [
            Text("Choix de l'utilisateur : ${choix}"),
            ElevatedButton(
              child: Text("Appuyez moi"),
              onPressed: (){
                bottom();
              },
            ),
          ],
        )
      ),
    );
  }

  Future<void> bottom() async{
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (BuildContext contextDialog){
        return Column(
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
