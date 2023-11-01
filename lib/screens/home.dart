import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const title = 'Home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //White
      color: Color(0xFFFFFFFF),
      child: Scaffold(
        //Transparent
        backgroundColor: Color(0x00000000),
        body: Column(
          children: <Widget> [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      getStudyingFlashcardUI(),
                      getNewFlashcardUI(),
                      Flexible(child: getAllFlashcardUI()),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 60,
              height: 60,
              child: Image.asset('assets/home/userImage.png'),
            ),
          ),
          const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Welcome",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      letterSpacing: 0.3,
                      color: Color(0xFF3A5160), //grey
                    ),
                  ),
                  Text(
                    "User123",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      letterSpacing: 0.3,
                      color: Color(0xFF17262A), //darker
                    ),
                  ),
                ],
              ),
          )
        ],
      ),
    );
  }
  Widget getStudyingFlashcardUI() {
    return Text("Studying");
  }
  Widget getNewFlashcardUI() {
    return Text("New");
  }
  Widget getAllFlashcardUI() {
    return Text("All");
  }
}
