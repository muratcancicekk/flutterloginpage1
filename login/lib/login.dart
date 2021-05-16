import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/LoginPage.dart';
import 'package:login/sign.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WELCOME TO EDU',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              decoration: TextDecoration.none),
        ),
        SizedBox(
          height: size.height * 0.08,
        ),
        SvgPicture.asset('assets/chat.svg'),
        SizedBox(
          height: size.height * 0.03,
        ),
        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.deepPurple,
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: FlatButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginPage1();
                  })),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.grey,
                  border: Border.all(color: Colors.blueAccent),
                ),
                child: FlatButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return SignPage();
                  })),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
