part of '../../forget_password_imports.dart';

class SendCodePage extends StatelessWidget {
  final String email;
  SendCodePage({super.key, required this.email});

  final codeController = TextEditingController();
  final passWordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgetPassCubit(),
      child: BlocListener<ForgetPassCubit, ForgetPassState>(
        listener: (context, state) {
          if (state is ResetPasswordSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));

            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => AuthScreen()),
              (route) => false,
            );
          }

          if (state is AuthError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.ScafoldBackground,
          appBar: CustomAppBar(imagePath: "assets/png/profile_image.png"),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(AppSizes.p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: AppSizes.h10),
                  CustomText(
                    "Forgot password ?",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.fs24,
                    ),
                  ),
                  SizedBox(height: AppSizes.h4),
                  CustomText(
                    "Enter the code to recover the password",
                    textStyle: TextStyle(
                      color: AppColors.grey,
                      fontSize: AppSizes.fs16,
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.h200,
                    child: Image.asset("assets/png/forget_image.png"),
                  ),
                  SizedBox(height: AppSizes.h4),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      "Code",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.h4),
                  CustomTextField(
                    hint: "Enter Code Sent to Your Email",
                    controller: codeController,
                    obscure: false,
                  ),
                  SizedBox(height: AppSizes.h16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      "Password",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomTextField(
                    hint: "Enter your password",
                    controller: passWordController,
                    obscure: true,
                    suffixIcon: Icons.visibility,
                  ),
                  SizedBox(height: AppSizes.h16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      "Confirm password",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  CustomTextField(
                    hint: "Confirm your password",
                    controller: confirmController,
                    obscure: true,
                    suffixIcon: Icons.visibility,
                  ),
                  SizedBox(height: AppSizes.h40),

                  BlocBuilder<ForgetPassCubit, ForgetPassState>(
                    builder: (context, state) {
                      return CustomButton(
                        text: "Verify",
                        isLoading: state is AuthLoading,
                        onPressed: () {
                          final code = codeController.text.trim();
                          final password = passWordController.text.trim();
                          final confirm = confirmController.text.trim();

                          if (code.isEmpty ||
                              password.isEmpty ||
                              confirm.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please fill all fields"),
                              ),
                            );
                            return;
                          }

                          if (password != confirm) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Passwords do not match"),
                              ),
                            );
                            return;
                          }

                          ForgetPassCubit.get(context).resetPassword(
                            email: email,
                            code: code,
                            password: password,
                            passwordConfirmation: confirm,
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: AppSizes.h20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
