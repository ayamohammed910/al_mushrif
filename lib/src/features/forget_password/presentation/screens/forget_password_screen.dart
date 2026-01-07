part of '../../forget_password_imports.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgetPassCubit(),
      child: Scaffold(
        backgroundColor: AppColors.ScafoldBackground,
        appBar: CustomAppBar(imagePath: "assets/png/profile_image.png"),
        body: const ForgetPasswordBody(),
      ),
    );
  }
}