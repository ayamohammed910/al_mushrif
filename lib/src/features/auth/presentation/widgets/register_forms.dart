part of '../../login_imports.dart';

class RegisterForms extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController confirmController;

  const RegisterForms({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.confirmController,
  });

  @override
  State<RegisterForms> createState() => _RegisterFormsState();
}

class _RegisterFormsState extends State<RegisterForms> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          "User Name",
          textStyle: TextStyle(
            fontSize: AppSizes.fs16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: AppSizes.h4),

        CustomTextField(
          hint: "Enter your User Name",
          controller: widget.usernameController,
          obscure: false,
        ),
        SizedBox(height: AppSizes.h10),
        CustomText(
          "E-mail",
          textStyle: TextStyle(
            fontSize: AppSizes.fs16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: AppSizes.h4),

        CustomTextField(
          hint: "Enter your E-mail",
          controller: widget.emailController,
          obscure: false,
        ),
        SizedBox(height: AppSizes.h10),
        CustomText(
          "Password",
          textStyle: TextStyle(
            fontSize: AppSizes.fs16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: AppSizes.h4),

        CustomTextField(
          hint: "Enter your Password",
          controller: widget.passwordController,
          obscure: true,
          suffixIcon: Icons.visibility,
        ),
        SizedBox(height: AppSizes.h10),

        CustomText(
          "Confirm Password",
          textStyle: TextStyle(
            fontSize: AppSizes.fs16,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(height: AppSizes.h4),

        CustomTextField(
          hint: "Enter your Confirm Password",
          controller: widget.confirmController,
          obscure: true,
          suffixIcon: Icons.visibility,
        ),
      ],
    );
  }
}
