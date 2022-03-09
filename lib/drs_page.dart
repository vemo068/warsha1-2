import 'package:flutter/material.dart';
import 'package:newapp/doctor_model.dart';
import 'package:newapp/dr_page.dart';
import 'package:newapp/threecontainers.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Doctors",
          style: twentyblackstyle,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 193, 216, 235),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView.builder(
          itemCount: doctors.length,
          itemBuilder: (BuildContext ct, int i) {
            return MyListtile(
              dr: doctors[i],
            );
          },
        ),
      )),
    );
  }
}

class MyListtile extends StatelessWidget {
  final Doctor dr;
  const MyListtile({
    Key? key,
    required this.dr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DrPage(drp: dr);
        }));
      }),
      minVerticalPadding: 8,
      tileColor: Colors.white,
      title: Text(
        dr.name,
        style: bstyle,
      ),
      subtitle: Text(
        dr.speciality,
      ),
      leading: Image(
        image: AssetImage(dr.imgProfile),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
