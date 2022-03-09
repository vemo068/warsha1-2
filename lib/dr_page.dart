import 'package:flutter/material.dart';
import 'package:newapp/doctor_model.dart';
import 'package:newapp/threecontainers.dart';

class DrPage extends StatelessWidget {
  final Doctor drp;
  const DrPage({Key? key,required this.drp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 209, 235),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios))
              ],
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(113, 255, 255, 255)),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(drp.imgProfile),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
             drp.name,
              style: twentyblackstyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "speciality:",
                  style: bstyle,
                ),
                Text(
                  drp.speciality,
                  style: bstyle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "years of experience:",
                  style: bstyle,
                ),
                Text(
                 "${drp.expYears}",
                  style: bstyle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
