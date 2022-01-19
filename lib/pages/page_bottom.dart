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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Simple"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Snack"),
        ],
        onTap: (int index){
          switch(index){
            case 0:
              print("Goto PAge Alerte");
              break;
            case 1:
              print("Goto PAge Simple");
              break;
            case 2:
              print("Goto PAge Snack");
              break;
          }
        },
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
