import 'dart:convert';

RegisterModel registerModelFromJson(String str) {
  final jsonData = json.decode(str);
  return RegisterModel.fromJson(jsonData);
}

String registerModelToJson(RegisterModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class RegisterModel {
  String firstName;
  String lastName;
  String userName;
  String email;

  RegisterModel({this.userName, this.email, this.firstName, this.lastName});
  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      new RegisterModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        userName: json["userName"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "firstName": firstName,
        "userName": userName,
        "email": email,
      };
}
