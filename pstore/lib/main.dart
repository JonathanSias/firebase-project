import 'package:provider/provider.dart';
import 'package:pstore/models/User.dart';
import 'package:pstore/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:pstore/services/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        // hide debug banner
        debugShowCheckedModeBanner: false,
        //
        home: Wrapper(),
      ),
    );
  }
}
