import 'package:flutter/material.dart';
import 'package:newapp/doctor_model.dart';
import 'package:newapp/dr_page.dart';
import 'package:newapp/drs_page.dart';
import 'package:newapp/pages.dart';
import 'package:newapp/threecontainers.dart';
import 'package:newapp/txtfieald.dart';

import 'increment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}
