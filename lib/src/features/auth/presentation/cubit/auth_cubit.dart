import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/device_helper.dart';
import '../../../../core/network/dio_helper.dart';
import '../../data/models/AuthModel.dart';
import '../../data/models/register_response_model.dart';
import 'auth_state.dart';
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  void register({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    emit(AuthLoading());
    try {
      print("Register API called");
      final response = await DioHelper.post(
        url: 'register',
        data: FormData.fromMap({
          'name': name,
          'email': email,
          'password': password,
          'password_confirmation': confirmPassword,
        }),
      );
      final model = RegisterModel.fromJson(response.data);
      emit(RegisterSuccess(model));
    } on DioException catch (e) {
      emit(AuthError(e.response?.data['msg'] ?? e.message));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> login({
    String? email,
    String? phone,
    required String password,
  }) async {
    emit(AuthLoading());

    if ((email == null || email.isEmpty) && (phone == null || phone.isEmpty)) {
      emit(AuthError("Please enter email or mobile number"));
      return;
    }

    if (password.isEmpty) {
      emit(AuthError("Please enter password"));
      return;
    }

    try {
      print("Login API called");

      // ===== Get Device ID =====
      final deviceId = await DeviceHelper.getDeviceId();

      // ===== Get Firebase Device Token =====
      final deviceToken = await FirebaseMessaging.instance.getToken() ?? '';

      final dataMap = {
        'password': password,
        'mac_address': deviceId,      // from DeviceHelper
        'device_token': deviceToken,  // from FirebaseMessaging
      };

      if (email != null && email.isNotEmpty) {
        dataMap['email'] = email;
      } else if (phone != null && phone.isNotEmpty) {
        dataMap['mobile'] = phone;
      }

      final response = await DioHelper.post(
        url: 'login',
        data: FormData.fromMap(dataMap),
      );

      final key = response.data['key'];

      if (key == 'needActive') {
        emit(NeedVerify(email ?? phone!));
      } else if (key == 'success') {
        emit(LoginSuccess());
      } else {
        emit(AuthError(response.data['msg'] ?? 'Login failed'));
      }
    } catch (e) {
      emit(AuthError("Login failed: $e"));
    }
  }
  Future<void> verifyCode({required String email, required String code}) async {
    emit(AuthLoading());
    if (code.isEmpty) {
      emit(AuthError("Please enter verification code"));
      return;
    }
    try {
      print("Verify API called");
      final response = await DioHelper.post(
        url: 'email/verify',
        data: FormData.fromMap({'email': email, 'code': code}),
      );
      final key = response.data['key'];
      if (key == 'success') {
        final auth = AuthModel.fromJson(response.data['data']);
        emit(VerifySuccess(auth));
      } else {
        emit(AuthError(response.data['msg'] ?? 'Verification failed'));
      }
    } on DioException catch (e) {
      emit(AuthError(e.response?.data['msg'] ?? e.message));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}