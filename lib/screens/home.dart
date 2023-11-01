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
    return Text("App Bar");
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
