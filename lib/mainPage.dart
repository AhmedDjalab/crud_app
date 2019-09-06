import 'package:flutter/material.dart';
import 'package:crud_app/Services/Constants.dart';
import 'package:crud_app/Screens/SignInPage.dart';
import 'package:crud_app/Screens/SignUpPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('this is CRUD Main Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignInPage();
                    }));
                  },
                  child: Text(
                    'Sign In ',
                    style: KTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  },
                  textColor: Colors.white,
                  child: Text(
                    'Sign Up ',
                    style: KTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*TextField(
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold,
),
decoration: InputDecoration(
fillColor: Colors.white,
filled: true,
hintText: 'this is City Name ',
hintStyle: TextStyle(
color: Colors.grey,
),
border: OutlineInputBorder(
borderRadius: BorderRadius.all(Radius.circular(10.0)),
borderSide: BorderSide.none,
),
),
)*/
