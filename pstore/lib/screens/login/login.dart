import 'package:flutter/material.dart';
import 'package:pstore/screens/login/animation/fade.dart';
import 'package:pstore/services/auth.dart';

class LoginPage extends StatefulWidget {
  final Function toggleView;
  LoginPage({this.toggleView});
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();
  // text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(
                                top: 130,
                                // left: 5,
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Usuário",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                      onChanged: (val) {
                                        setState(() => email = val);
                                      }),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Senha",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                      onChanged: (val) {
                                        setState(() => password = val);
                                      }),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            child: Center(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () async {
                                  //
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ])),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 300, minHeight: 50),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login via Google",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            child: Center(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () async {
                                  //
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ])),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 300, minHeight: 50),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login via Email",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            child: Center(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () async {
                                  dynamic result = await _auth.signInAnon();
                                  if (result == null) {
                                    print('error sign in');
                                  } else {
                                    print('signed in');
                                    print(result.uid);
                                  }
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ])),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 300, minHeight: 50),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login Anônimo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            child: Center(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65),
                                ),
                                padding: EdgeInsets.all(0.0),
                                onPressed: () {
                                  widget.toggleView();
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(143, 148, 251, 1),
                                        Color.fromRGBO(143, 148, 251, .6),
                                      ])),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: 300, minHeight: 50),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Criar Conta",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        1.5,
                        Text(
                          "Esqueceu a Senha?",
                          style: TextStyle(
                              color: Color.fromRGBO(143, 148, 251, 1)),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // FadeAnimation(
                      //   1.5,
                      //   Text(
                      //     "Não Possuo Conta !",
                      //     style: TextStyle(
                      //         color: Color.fromRGBO(143, 148, 251, 1)),
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
