import 'package:flutter/material.dart';
import 'package:pstore/screens/login/login.dart';
import 'package:pstore/screens/login/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Register(),
      // child: LoginPage(),
    );
  }
}
