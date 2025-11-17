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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Atelier Flutter 4 - StatefulWidget",
              style: TextStyle(
                fontSize: 24,
                fontWeight : FontWeight.bold,
              ),
              ),
              Text(
                "La valeur du compteur est : $compteur",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  compteur--;
                });
              }, 
              icon: Icon(Icons.remove),
              ),
              SizedBox(width: 10),
              IconButton(onPressed: (){
                setState(() {
                  compteur = 0;
                });
              }, 
              icon: Icon(Icons.refresh),
              ),
              SizedBox(width: 10),
              IconButton(onPressed: (){
                setState(() {
                  compteur++;
                });
              }, 
              icon: Icon(Icons.add),
              ),
            ],
          ),
          ],
          ),
        ),
      ),
    );
  }
}

