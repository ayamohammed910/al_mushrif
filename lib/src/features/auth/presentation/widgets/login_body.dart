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
        SizedBox(height: 25),
        AuthActionsType(onTabChanged: onTabChanged, initIndex: 0),
        SizedBox(height: 25),
        LoginRadioButtons(),
        SizedBox(height: 30),
        CustomButton(text: "Login", onPressed: () {}),
        SizedBox(height: 20),
        ForgetPassword(),
      ],
    );
  }
}
