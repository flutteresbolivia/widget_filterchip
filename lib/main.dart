import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSelectedRed = false;
  bool isSelectedOrange = true;
  bool isSelectedYellow = true;
  TextStyle style = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Wrap(
            spacing: 5,
            children: <Widget>[
              FilterChip(
                padding: EdgeInsets.all(10),
                checkmarkColor: Colors.white,
                label: Text("Rojo", style: style),
                selected: isSelectedRed,
                selectedColor: Colors.red,
                backgroundColor: Colors.grey,
                onSelected: (value) {
                  setState(() {
                    isSelectedRed = value;
                  });
                },
              ),
              FilterChip(
                padding: EdgeInsets.all(10),
                checkmarkColor: Colors.white,
                label: Text("Naranja", style: style),
                selected: isSelectedOrange,
                selectedColor: Colors.orange,
                backgroundColor: Colors.grey,
                onSelected: (value) {
                  setState(() {
                    isSelectedOrange = value;
                  });
                },
              ),
              FilterChip(
                padding: EdgeInsets.all(10),
                checkmarkColor: Colors.black,
                label: Text("Amarrillo", style: style),
                selected: isSelectedYellow,
                selectedColor: Colors.yellow,
                backgroundColor: Colors.grey,
                onSelected: (value) {
                  setState(() {
                    isSelectedYellow = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
