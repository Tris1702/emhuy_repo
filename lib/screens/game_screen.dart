import 'package:flutter/material.dart';
import 'package:vietcard/entity/card.dart';
import 'package:vietcard/screens/study_screen.dart';

class GamePage extends StatefulWidget {
  static const title = 'Game';

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GamePage.title),
      ),
    );
  }
}
