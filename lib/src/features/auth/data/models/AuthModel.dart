import 'package:al_mushrif/src/features/auth/data/models/user_model.dart';

class AuthModel {
  final String token;
  final String tokenType;
  final UserModel user;

  AuthModel({
    required this.token,
    required this.tokenType,
    required this.user,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      token: json['token'],
      tokenType: json['token_type'],
      user: UserModel.fromJson(json),
    );
  }
}