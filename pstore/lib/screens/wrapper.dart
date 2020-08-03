import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pstore/models/User.dart';
import 'package:pstore/screens/home/home_screen.dart';
import 'package:pstore/screens/login/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // return Authenticate();
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
