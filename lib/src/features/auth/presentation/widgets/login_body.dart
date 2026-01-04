part of '../../login_imports.dart';

class LoginBody extends StatelessWidget {
  final ValueChanged<int> onTabChanged;

  LoginBody({super.key, required this.onTabChanged});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isEmail = true;

    return Column(
      children: [
        AuthHeader(title: 'Login', subtitle: "Hello, You are welcome with us!"),
        SizedBox(height: AppSizes.h24),
        AuthActionsType(onTabChanged: onTabChanged, initIndex: 0),
        SizedBox(height: AppSizes.h24),

        LoginRadioButtons(
          emailController: emailController,
          mobileController: mobileController,
          passwordController: passwordController,
          onIsEmailChanged: (val) => isEmail = val,
        ),

        SizedBox(height: AppSizes.h32),

        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is NeedVerify) {
              final authCubit = AuthCubit.get(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                    value: authCubit,
                    child: VerifyCode(email: emailController.text.trim()),
                  ),
                ),
              );
            }

            if (state is LoginSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => AppLayoutScreen()),
              );
            }

            if (state is AuthError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          child: CustomButton(
            text: "Login",
            onPressed: () {
              if (isEmail && emailController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please enter your email")),
                );
                return;
              }

              if (!isEmail && mobileController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please enter your mobile")),
                );
                return;
              }

              if (passwordController.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please enter your password")),
                );
                return;
              }

              AuthCubit.get(context).login(
                email: isEmail ? emailController.text.trim() : null,
                phone: isEmail ? null : mobileController.text.trim(),
                password: passwordController.text.trim(),
              );
            },
          ),
        ),

        SizedBox(height: AppSizes.h20),
        ForgetPassword(),
      ],
    );
  }
}
