import 'package:flutter/material.dart';
import 'package:navigation/pages/page_bottom.dart';

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
        actions: [
          TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return PageBottom();
                    })
                );
              },
              child: Text("Bottom")
          )
        ],
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
