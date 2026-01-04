import 'user_model.dart';

class RegisterModel {
  final String key;
  final String message;
  final UserModel user;

  RegisterModel({
    required this.key,
    required this.message,
    required this.user,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      key: json['key'],
      message: json['msg'],
      user: UserModel.fromJson(json['data']['user']),
    );
  }
}