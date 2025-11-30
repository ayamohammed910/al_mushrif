part of '../../login_imports.dart';
class RegisterBody extends StatelessWidget {
  final ValueChanged<int> onTabChanged;
  const RegisterBody({super.key, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      AuthHeader(title: 'Register ', subtitle: "Register now and get 10% off your first order",),
    SizedBox(height: 25),
    AuthActionsType(onTabChanged:onTabChanged),
    SizedBox(height: 25),
    RegisterForms(),
    SizedBox(height: 30),
    CustomButton(text: "Register", onPressed: () {})
    ]

    );
  }
}
