import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("La valeur du compteur est : $compteur"),
              ElevatedButton(onPressed: (){
                setState(() {
                  compteur++;
                });
              }, child: Text("Incrémenter")),
              ElevatedButton(onPressed: (){
                setState(() {
                  compteur=0;
                });
              }, child: Text("Réinitialiser")),
               ElevatedButton(onPressed: (){
                setState(() {
                  compteur--;
                });
              }, child: Text("Décrémenter"))
              
            ],
          ),
        ),
      ),
    );
  }
}

