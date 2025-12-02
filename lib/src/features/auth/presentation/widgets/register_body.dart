part of '../../login_imports.dart';

class RegisterBody extends StatelessWidget {
  final ValueChanged<int> onTabChanged;
  const RegisterBody({super.key, required this.onTabChanged});

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
        RegisterForms(),
        SizedBox(height: AppSizes.h32),
        CustomButton(text: "Register", onPressed: () {}),
      ],
    );
  }
}
