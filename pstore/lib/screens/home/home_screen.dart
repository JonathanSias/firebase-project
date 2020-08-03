import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pstore/constants.dart';
import 'package:pstore/screens/home/components/body.dart';
import 'package:pstore/services/auth.dart';

class HomeScreen extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text('sair'),
          onPressed: () async {
            await _auth.signOut();
          },
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
