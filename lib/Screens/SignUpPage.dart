import 'package:flutter/material.dart';
import 'package:crud_app/Services/Constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  icon: Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                  hintText: 'UserName ',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: 'Email ',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  print(value);
                },
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  icon: Icon(
                    Icons.security,
                    color: Colors.white,
                  ),
                  hintText: 'PassWord ',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: FlatButton(
                onPressed: () {},
                textColor: Colors.white,
                child: Text(
                  'Sign Up ',
                  style: KTextStyle,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                textColor: Colors.white,
                child: Text(
                  'Return',
                  style: KTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
