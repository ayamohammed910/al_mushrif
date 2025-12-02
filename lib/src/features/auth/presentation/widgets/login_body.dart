part of '../../login_imports.dart';

class LoginBody extends StatelessWidget {
  final ValueChanged<int> onTabChanged;

  const LoginBody({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthHeader(
          title: 'Login ',
          subtitle: "Hello, You are welcome with us!",
        ),
        SizedBox(height: AppSizes.h24),
        AuthActionsType(onTabChanged: onTabChanged, initIndex: 0),
        SizedBox(height: AppSizes.h24),
        LoginRadioButtons(),
        SizedBox(height: AppSizes.h32),
        CustomButton(text: "Login", onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppLayoutScreen()),
          );
        }),
        SizedBox(height: AppSizes.h20),
        ForgetPassword(),
      ],
    );
  }
}
