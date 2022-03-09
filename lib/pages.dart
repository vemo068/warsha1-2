// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newapp/threecontainers.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "1",
              style: TextStyle(fontSize: 200),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text(
                "Other page",
                style: twentywhitestyle,
              ),
              onPressed: () {
                movetoPage(context, Page2());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Text(
              "2",
              style: TextStyle(fontSize: 200),
            ),
            InkWell(
              onTap: () {
                print("jjj");
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, border: Border.all(color: Colors.white)),
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  'gggg',
                  style: twentywhitestyle,
                ),
              ),
            ),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Other page",
                  style: twentywhitestyle,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alrt();
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class alrt extends StatelessWidget {
  const alrt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("hello"),
      actions: [
        TextButton(
          child: Text('close'),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

//عملية الذهاب من صفحة لأخرى
void movetoPage(BuildContext context, Widget page)
//تستقبل 2 بارامتر الصفحة لي راح نروحولها والكونتاكست
//الكونتاكست باختصار هو البلاصة لي راك فيها أي ويدجت فيها كونتاكست تقله بلي راني في الويدجت هذي

{
  //عملية استبدال الصفحة الحالية بأخرى
  Navigator.push(context, MaterialPageRoute(builder: (_) {
    //ارجاع الصفحة الجديدة
    return page;
  }));
}

void returnToPage(BuildContext context) {
  Navigator.pop(context);
}
