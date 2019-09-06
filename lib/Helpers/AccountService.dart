import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'LoginModel.dart';
import 'RegisterModel.dart';

class AccountService {
  String url = "http://10.0.2.2:45555/api/account";

  Future<http.Response> postLogin(LoginModel loginModel) async {
    final response = await http.post('$url' + '/login',
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: ''
        },
        body: loginModelToJson(loginModel));
    return response;
  }

  Future<http.Response> postRegister(RegisterModel registerModel) async {
    final response = await http.post('$url' + '/register',
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: ''
        },
        body: registerModelToJson(registerModel));
    return response;
  }
}
