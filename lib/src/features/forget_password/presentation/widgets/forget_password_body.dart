part of '../../forget_password_imports.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSizes.h200,
              child: Image.asset(
                "assets/png/forget_image.png",
              ),
            ),
            CustomText(
              "Forgot password ?",
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: AppSizes.fs24),
            ),
            SizedBox(height: AppSizes.h4),
            CustomText(
              "Enter the E-mail to recover the password",
              textStyle: TextStyle(fontSize: AppSizes.fs14, color: AppColors.ScafoldBackground),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "E-mail",
                textStyle: TextStyle(fontSize: AppSizes.fs16, fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(height: AppSizes.h4),

            CustomTextField(
              hint: "Enter your E-mail",
              controller: emailController,
              obscure: true,
            ),
            SizedBox(height: AppSizes.h32),

            CustomButton(text: "Send", onPressed: () {}),
            SizedBox(height: AppSizes.h20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CustomText(
                "Back To Login",
                textStyle: TextStyle(
                  color: AppColors.primary,
                  fontSize: AppSizes.fs16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
