import 'package:everything/nextpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/me.png"),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Aashish Lamsal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "I Store Everything Here",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 6,
                          fontFamily: "SourceSansPro",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Column(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NextPage()));
                        },
                        child: Text(
                          "See my progress",
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Column(
                    children: [
                      Text(
                        "Follow me at",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.tiktok,
                          size: 30,
                          color: Color(0xff80557f),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.inbox,
                          size: 30,
                          color: Color(0xffed855f),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bubble_chart_outlined,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
