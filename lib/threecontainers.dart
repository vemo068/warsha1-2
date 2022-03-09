import 'package:flutter/material.dart';

class AlignContainer extends StatelessWidget {
  const AlignContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      height: 200,
      width: 200,
      color: Colors.blue,
      child: Container(
        height: 50,
        width: 50,
        color: Colors.yellow,
      ),
    );
  }
}

class ThreeContainers extends StatelessWidget {
  const ThreeContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          new Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ]);
  }
}

var twentyblackstyle =
    TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold);
var twentywhitestyle = TextStyle(
  color: Colors.white,
  fontSize: 30,
);

var yourgoalsStyle =
    TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold);
var bstyle =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
