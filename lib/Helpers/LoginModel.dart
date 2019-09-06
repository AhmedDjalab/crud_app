import 'dart:convert';

LoginModel loginModelFromJson(String str) {
  final jsonData = json.decode(str);
  return LoginModel.fromJson(jsonData);
}

String loginModelToJson(LoginModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class LoginModel {
  String userName;
  String password;
  String roleName;

  LoginModel({this.password, this.roleName, this.userName});
  factory LoginModel.fromJson(Map<String, dynamic> json) => new LoginModel(
        userName: json["userName"],
        password: json["password"],
        roleName: json["roleName"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "password": password,
        "roleName": roleName,
      };
}
