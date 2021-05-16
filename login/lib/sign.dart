import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignPage extends StatefulWidget {
  SignPage({Key key}) : super(key: key);

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: signtextbuild()),
            Expanded(flex: 12, child: picBuild()),
            Expanded(flex: 7, child: textFieldBuild(size)),
            Expanded(flex: 2, child: buildButton(size)),
            Expanded(child: buildrow()),
            Expanded(child: dividerBuild(size)),
            Expanded(flex: 3, child: socialBuilder(size))
          ],
        ),
      ),
    );
  }

  Container socialBuilder(Size size) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: size.height * 0.1,
            child: FloatingActionButton(
              onPressed: () => print('object'),
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/facebook.svg',
                height: size.height * 0.03,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Container(
            alignment: Alignment.center,
            child: FloatingActionButton(
              onPressed: () => print('object'),
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/twitter.svg',
                height: size.height * 0.03,
                color: Colors.deepPurple,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.02,
          ),
          Container(
            alignment: Alignment.center,
            child: FloatingActionButton(
              onPressed: () => print('object'),
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                'assets/google-plus.svg',
                height: size.height * 0.03,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container dividerBuild(Size size) {
    return Container(
      width: size.width * 0.5,
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xFFD9D9D9),
              height: 5,
            ),
          ),
          Text('Or'),
          Expanded(
            child: Divider(
              color: Color(0xFFD9D9D9),
              height: 5,
            ),
          ),
        ],
      ),
    );
  }

  Container buildrow() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Already have a Account?'), Text('Sign In')],
      ),
    );
  }

  Container buildButton(Size size) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.deepPurple,
      ),
      child: FlatButton(
        onPressed: () => print('obsject'),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        textColor: Colors.white,
        child: Text('Sign Up'),
      ),
    );
  }

  Container textFieldBuild(Size size) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 35),
              width: size.width * 0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Colors.grey[400],
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    hintText: 'Peety@gmail.com',
                    hintStyle: TextStyle(color: Colors.deepPurple)),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 35),
              width: size.width * 0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Colors.grey[400],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.deepPurple),
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container picBuild() {
    return Container(
      child: SvgPicture.asset('assets/signup.svg'),
    );
  }

  Container signtextbuild() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Text('Sign Up'),
    );
  }
}
