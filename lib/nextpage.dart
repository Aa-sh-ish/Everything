import 'package:everything/another.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int roll = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask me Everything"),
        centerTitle: true,
        //   backgroundColor: Color.fromARGB(255, 45, 188, 231),
      ),
      backgroundColor: Colors.blue[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    var rnd = Random();
                    roll = rnd.nextInt(5) + 1;
                  },
                );
              },
              child: Image.asset(
                "assets/ball$roll.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Next Progess",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                  side: BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                  fixedSize: Size(350, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: Colors.white12),
            ),
          ],
        ),
      ),
    );
  }
}
