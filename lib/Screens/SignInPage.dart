import 'package:flutter/material.dart';
import 'package:crud_app/Services/Constants.dart';
import 'package:crud_app/Helpers/LoginModel.dart';
import 'package:crud_app/Helpers/AccountService.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  LoginModel loginModel = LoginModel();
  AccountService accountService = AccountService();
  String userName;
  String password;
  String roleName;
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
                  userName = value;
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
                obscureText: true,
                onChanged: (value) {
                  print(value);
                  password = value;
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
                onPressed: () async {
                  loginModel.password = password;
                  loginModel.userName = userName;
                  loginModel.roleName = "Kernel";
                  try {
                    var responce = await accountService.postLogin(loginModel);
                    print(responce.statusCode);
                    if (responce.statusCode == 200) {
                      AlertDialog(
                        content: Text(
                            'Welcome $userName , your token key is : $responce'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('close'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                textColor: Colors.white,
                child: Text(
                  'Login',
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
