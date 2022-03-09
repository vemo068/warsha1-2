import 'package:flutter/material.dart';
import 'package:newapp/threecontainers.dart';

class TextFiealdExemple extends StatelessWidget {
  const TextFiealdExemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txtcontrol = TextEditingController();
    txtcontrol.text = "hthth";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyTxtf(
              txtcontrol: txtcontrol,
              txtTitle: "frfrfr",
              type: TextInputType.datetime,
            ),
            MaterialButton(
              onPressed: () {
                print(txtcontrol.text);
              },
              color: Color.fromARGB(255, 18, 59, 94),
              child: Text(
                "ok",
                style: twentywhitestyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyTxtf extends StatelessWidget {
  const MyTxtf({
    Key? key,
    required this.txtcontrol,
    required this.txtTitle,
    this.type = TextInputType.name,
  }) : super(key: key);

  final TextEditingController txtcontrol;
  final String txtTitle;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: txtcontrol,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
          ),
        ),
        label: Text(txtTitle),
      ),
    );
  }
}
