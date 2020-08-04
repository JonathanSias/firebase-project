import 'package:flutter/material.dart';
import 'package:pstore/screens/login/login.dart';
import 'package:pstore/screens/login/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn == true) {
      return Container(
        child: LoginPage(toggleView: toggleView),
      );
    } else {
      return Container(
        child: Register(toggleView: toggleView),
      );
    }
  }
}
