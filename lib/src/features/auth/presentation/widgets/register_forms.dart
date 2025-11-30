part of '../../login_imports.dart';
class RegisterForms extends StatefulWidget {

  const RegisterForms({super.key});

  @override
  State<RegisterForms> createState() => _RegisterFormsState();
}

class _RegisterFormsState extends State<RegisterForms> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final confirmController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            "User Name",
            textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
          ),

        SizedBox(height: 5),

        CustomTextField(
          hint: "Enter your User Name",
          controller: usernameController,
          obscure: true,
        ),
        CustomText(
          "E-mail",
          textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
        ),

        SizedBox(height: 5),

        CustomTextField(
          hint: "Enter your E-mail",
          controller: emailController,
          obscure: true,
        ),

        CustomText(
          "Password",
          textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
        ),

        SizedBox(height: 5),

        CustomTextField(
          hint: "Enter your Password",
          controller: passwordController,
          obscure: true,
          suffixIcon: Icons.visibility,
        ),

        CustomText(
          "Confirm Password",
          textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
        ),

        SizedBox(height: 5),

        CustomTextField(
          hint: "Enter your Confirm Password",
          controller: passwordController,
          obscure: true,
          suffixIcon: Icons.visibility,
        ),
      ],
    );
  }
}
