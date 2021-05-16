import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage1 extends StatefulWidget {
  LoginPage1({Key key}) : super(key: key);

  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(
              flex: 2,
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none),
              ),
            ),
            Expanded(
              flex: 12,
              child: SvgPicture.asset(
                'assets/login.svg',
                height: size.height * 0.35,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.person,
                      color: Colors.deepPurpleAccent,
                    ),
                    hintText: 'Your Email.',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: Colors.deepPurpleAccent,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.deepPurpleAccent,
                    ),
                    hintText: 'Password.',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.grey,
                ),
                child: FlatButton(
                  onPressed: () => print('object'),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text('Login'),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an Account?',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
