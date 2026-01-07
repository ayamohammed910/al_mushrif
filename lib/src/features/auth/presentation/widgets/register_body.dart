part of '../../login_imports.dart';

class RegisterBody extends StatelessWidget {
  final ValueChanged<int> onTabChanged;
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();
  RegisterBody({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthHeader(
          title: 'Register ',
          subtitle: "Register now and get 10% off your first order",
        ),
        SizedBox(height: AppSizes.h24),
        AuthActionsType(onTabChanged: onTabChanged, initIndex: 1),
        SizedBox(height: AppSizes.h24),
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoading) {
              print("Loading...");
            }

            if (state is RegisterSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => VerifyCode(email: emailController.text,)),
              );
            }

            if (state is AuthError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          child: RegisterForms(
            emailController: emailController,
            usernameController: usernameController,
            passwordController: passwordController,
            confirmController: confirmController,
          ),
        ),
        SizedBox(height: AppSizes.h32),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return CustomButton(
              text: "Register",
              isLoading: state is AuthLoading,
              onPressed: () {
                AuthCubit.get(context).register(
                  name: usernameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  confirmPassword: confirmController.text,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
