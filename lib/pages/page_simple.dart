import 'package:flutter/material.dart';

class PageSimple extends StatefulWidget {
  const PageSimple({Key? key}) : super(key: key);

  @override
  _PageSimpleState createState() => _PageSimpleState();
}

class _PageSimpleState extends State<PageSimple> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
      ),
      body: Center(
        child:Column(
          children: [
            Text("Choix de l'utilisateur : "),
            ElevatedButton(
              child: Text("Appuyez moi"),
              onPressed: (){
                alerte();
              },
            ),
          ],
        )
      ),
    );
  }

  Future<void> alerte() async{
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Color(0xa4521422),
      builder: (BuildContext contextDialog){
        return AlertDialog(
          title: Text("Ceci est une alerte", textScaleFactor: 2,),
          content: Text("Nous avons un prolbème avec l'API ...."),
          contentPadding: EdgeInsets.all(5.0),
          actions: [
            TextButton(
                onPressed: (){
                  print("Annuler");
                  Navigator.pop(contextDialog);
                },
                child: Text("Annuler", style: TextStyle(color: Colors.red),)
            ),
            TextButton(
                onPressed: (){
                  print("Valider");
                  Navigator.pop(contextDialog);
                },
                child: Text("Valider", style: TextStyle(color: Colors.blue),)
            ),
          ],
        );
      }
    );
  }
}
