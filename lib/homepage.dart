import 'package:everything/another.dart';
import 'package:everything/nextpage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage("assets/me.png"),
              radius: 50,
            ),
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 80,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnotherPage(),
                  ),
                );
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
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Follow me at",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    print("tapped");
                    final url = "https://www.facebook.com/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
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
    );
  }
}
