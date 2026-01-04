part of '../../login_imports.dart';
class LoginRadioButtons extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  final ValueChanged<bool> onIsEmailChanged;

  const LoginRadioButtons({
    super.key,
    required this.emailController,
    required this.mobileController,
    required this.passwordController,
    required this.onIsEmailChanged,
  });

  @override
  State<LoginRadioButtons> createState() => _LoginRadioButtonsState();
}

class _LoginRadioButtonsState extends State<LoginRadioButtons> {
  bool isEmail = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          "Login with your e-mail address or mobile number",
          textStyle: TextStyle(fontSize: AppSizes.fs14, color: AppColors.black),
        ),

        SizedBox(height: 10),

        Row(
          children: [
            Radio(
              value: true,
              groupValue: isEmail,
              activeColor: AppColors.primary,
              onChanged: (val) {
                setState(() {
                  isEmail = true;
                  widget.onIsEmailChanged(true);
                });
              },
            ),
            CustomText(
              "E-mail Address",
              textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
            ),

            SizedBox(width: 15),
            Radio(
              value: false,
              groupValue: isEmail,
              activeColor: AppColors.primary,
              onChanged: (val) {
                setState(() {
                  isEmail = false;
                  widget.onIsEmailChanged(false);
                });
              },
            ),
            CustomText(
              "Mobile Number",
              textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
            ),
          ],
        ),

        SizedBox(height: AppSizes.h10),

        if (isEmail) ...[
          CustomText(
            "E-mail",
            textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: AppSizes.h4),
          CustomTextField(
            hint: "Enter your E-mail",
            controller: widget.emailController,
            obscure: false,
          ),
        ] else ...[
          CustomText(
            "Mobile",
            textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: AppSizes.h4),
          CustomTextField(
            hint: "Enter your mobile",
            controller: widget.mobileController,
            obscure: false,
          ),
        ],

        SizedBox(height: AppSizes.h20),

        CustomText(
          "Password",
          textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        CustomTextField(
          hint: "Enter your password",
          controller: widget.passwordController,
          obscure: true,
          suffixIcon: Icons.visibility,
        ),
      ],
    );
  }
}