part of '../../login_imports.dart';

class LoginRadioButtons extends StatefulWidget {
  const LoginRadioButtons({super.key});

  @override
  State<LoginRadioButtons> createState() => _LoginRadioButtonsState();
}

class _LoginRadioButtonsState extends State<LoginRadioButtons> {
  bool isEmail = true;
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
                  setState(() => isEmail = true);
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
                  setState(() => isEmail = false);
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
              controller: emailController,
              obscure: true,
            ),
          ] else ...[
            CustomText(
              "Mobile",
              textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
            ),

            SizedBox(height: AppSizes.h4),

            CustomTextField(
              hint: "Enter your mobile",
              controller: mobileController,
              obscure: true,
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
            controller: passwordController,
            obscure: true,
            suffixIcon: Icons.visibility,
          ),
        ],
      ),
    );
  }
}
