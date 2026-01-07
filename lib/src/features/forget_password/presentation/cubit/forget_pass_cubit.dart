import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/network/dio_helper.dart';
import 'forget_pass_state.dart';

class ForgetPassCubit extends Cubit<ForgetPassState> {
  ForgetPassCubit() : super(AuthInitial());

  static ForgetPassCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> forgetPassword({required String email}) async {
    emit(AuthLoading());

    try {
      final response = await DioHelper.post(
        url: 'password/forgot',
        data: {"email": email},
      );

      if (response.data['key'] == 'success') {
        emit(
          ForgetPasswordSuccess(email: email, message: response.data['msg']),
        );
      } else {
        emit(AuthError(response.data['msg'] ?? 'Something went wrong'));
      }
    } on DioException catch (e) {
      print('DIO ERROR: ${e.response?.data}');
      print('STATUS CODE: ${e.response?.statusCode}');

      emit(
        AuthError(
          e.response?.data['msg'] ??
              e.response?.data['message'] ??
              'Server error',
        ),
      );
    } catch (e) {
      print('UNKNOWN ERROR: $e');
      emit(AuthError('Unexpected error'));
    }
  }

  Future<void> resetPassword({
    required String email,
    required String code,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(AuthLoading());

    try {
      final response = await DioHelper.post(
        url: 'password/reset',
        data: {
          "email": email,
          "code": code,
          "password": password,
          "password_confirmation": passwordConfirmation,
        },
      );

      if (response.data['key'] == 'success') {
        emit(ResetPasswordSuccess(response.data['msg']));
      } else {
        emit(AuthError(response.data['msg'] ?? 'Something went wrong'));
      }
    } on DioException catch (e) {
      emit(
        AuthError(
          e.response?.data['msg'] ??
              e.response?.data['message'] ??
              'Server error',
        ),
      );
    } catch (e) {
      emit(AuthError('Unexpected error'));
    }
  }
}
