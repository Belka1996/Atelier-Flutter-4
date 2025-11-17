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
  double degre = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StatefulWidget"),
          backgroundColor: const Color.fromARGB(255, 37, 185, 26),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Atelier Flutter 4 - StatefulWidget",
              style: TextStyle(
                fontSize: 24,
                fontWeight : FontWeight.bold,
                color: Colors.red,
              ),
              ),
              const SizedBox(height: 10),
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
                  degre = 0;
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
          SizedBox(height: 30),
          const Text("Merci de choisir le degré de rotation",
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
          ),
          Slider(
            value: degre, 
            min: 0, 
            max: 360, 
            onChanged: (value){
              setState(() {
                degre = value;
              });
            },
            ),
            Text(
              "Le degré choisi est : ${degre.toStringAsFixed(0)}",
              style: TextStyle(fontSize: 18, color: Colors.red),
            )
          ],
          ),
        ),
      ),
    );
  }
}

