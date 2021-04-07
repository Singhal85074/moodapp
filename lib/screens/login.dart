import 'package:facemood/screens/otplogin.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background.png"),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/light-1.png"),
                      )),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/light-2.png"),
                      )),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/clock.png"),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                Text(
                  "Listen to songs",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "IndieFlower",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7868e6),
                  ),
                ),
                Text(
                  "Based on your Mood",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "IndieFlower",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7868e6),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: height * 0.1,
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF7868e6)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xFF7868e6))))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text("Enter Mobile Number"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
