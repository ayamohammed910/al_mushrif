part of '../../login_imports.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              "Forgot password? ",
              textStyle: TextStyle(color: Colors.grey),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (ForgetPasswordScreen())),
                );
              },
              child: CustomText(
                "Restore",
                textStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),]
    );
  }
}
