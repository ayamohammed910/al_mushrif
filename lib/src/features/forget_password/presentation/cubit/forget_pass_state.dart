abstract class ForgetPassState {}

class AuthInitial extends ForgetPassState {}

class AuthLoading extends ForgetPassState {}

class ForgetPasswordSuccess extends ForgetPassState {
  final String email;
  final String message;

  ForgetPasswordSuccess({
    required this.email,
    required this.message,
  });
}

class ResetPasswordSuccess extends ForgetPassState {
  final String message;
  ResetPasswordSuccess(this.message);
}

class AuthError extends ForgetPassState {
  final String message;
  AuthError(this.message);
}