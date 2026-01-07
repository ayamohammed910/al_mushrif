import 'package:al_mushrif/src/features/auth/data/models/register_response_model.dart';
import '../../data/models/AuthModel.dart';
// =================== Auth States ===================
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class RegisterSuccess extends AuthState {
  final RegisterModel model;
  RegisterSuccess(this.model);
}

class LoginSuccess extends AuthState {}

class NeedVerify extends AuthState {
  final String email;
  NeedVerify(this.email);
}

class VerifySuccess extends AuthState {
  final AuthModel auth;
  VerifySuccess(this.auth);
}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}