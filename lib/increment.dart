import 'package:flutter/material.dart';
import 'package:newapp/threecontainers.dart';

int x = 0;
Color color2 = Colors.black;

class IncrementExemple extends StatefulWidget {
  const IncrementExemple({Key? key}) : super(key: key);

  @override
  State<IncrementExemple> createState() => _IncrementExempleState();
}

class _IncrementExempleState extends State<IncrementExemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          x++;
          color2 = color2 == Colors.black ? Colors.purple : Colors.black;
          print(x);
        });
      }),
      appBar: AppBar(
        title: Text("increment exemple"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: color2,
          width: 200,
          height: 200,
          child: Text(
            "$x",
            style: TextStyle(color: Colors.white, fontSize: 100),
          ),
        ),
      ),
    );
  }
}
