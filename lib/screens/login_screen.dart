import 'package:flutter/material.dart';
import 'package:vietcard/entity/card.dart';
import 'package:vietcard/screens/study_screen.dart';

class LoginPage extends StatefulWidget {
  static const title = 'Login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LoginPage.title),
      ),
    );
  }
}
