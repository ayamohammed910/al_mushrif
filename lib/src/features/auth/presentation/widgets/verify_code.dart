part of '../../login_imports.dart';

class VerifyCode extends StatelessWidget {
  final String email;
  VerifyCode({super.key, required this.email});

  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "", showBack: true),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is VerifySuccess) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => AppLayoutScreen()),
              (route) => false,
            );
          } else if (state is AuthError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.p20),
          child: Column(
            children: [
              SizedBox(height: AppSizes.h100),
              CustomText(
                "Verify Code",
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.fs20,
                ),
              ),
              SizedBox(height: AppSizes.h12),
              CustomText("Enter the verification code sent to you"),
              SizedBox(height: AppSizes.h32),

              CustomTextField(
                keyboardType: TextInputType.number,
                hint: "Enter code",
                controller: codeController,
              ),

              SizedBox(height: AppSizes.h40),

              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return CustomButton(
                    text: "Verify",
                    isLoading: state is AuthLoading,
                    onPressed: () {
                      if (codeController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please enter verification code"),
                          ),
                        );
                        return;
                      }

                      AuthCubit.get(context).verifyCode(
                        email: email,
                        code: codeController.text.trim(),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
