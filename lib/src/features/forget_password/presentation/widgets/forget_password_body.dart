part of '../../forget_password_imports.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                "assets/png/forget_image.png", // put the logo in assets folder
              ),
            ),
            CustomText(
              "Forgot password ?",
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            SizedBox(height: 5),
            CustomText(
              "Enter the E-mail to recover the password",
              textStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                "E-mail",
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(height: 5),

            CustomTextField(
              hint: "Enter your E-mail",
              controller: emailController,
              obscure: true,
            ),
            SizedBox(height: 30),

            CustomButton(text: "Send", onPressed: () {}),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CustomText(
                "Back To Login",
                textStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
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
