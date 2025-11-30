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
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              "Login with your e-mail address or mobile number",
              textStyle: TextStyle( fontSize: 14, color: Colors.black87,),
            ),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Radio(
                value: true,
                groupValue: isEmail,
                activeColor: Colors.red,
                onChanged: (val) {
                  setState(() => isEmail = true);
                },
              ),
              CustomText(
                "E-mail Address",
                textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
              ),

              SizedBox(width: 15),
              Radio(
                value: false,
                groupValue: isEmail,
                activeColor: Colors.red,
                onChanged: (val) {
                  setState(() => isEmail = false);
                },
              ),
              CustomText(
                "Mobile Number",
                textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(height: 10),

          if (isEmail) ...[

            Align(
              alignment: Alignment.centerLeft,
              child:  CustomText(
                "E-mail",
                textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),


            CustomTextField(
              hint: "Enter your E-mail",
              controller: emailController,
              obscure: true,
            ),

          ] else ...[
            Align(
              alignment: Alignment.centerLeft,
              child:  CustomText(
                "Mobile",
                textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),

            CustomTextField(
              hint: "Enter your mobile",
              controller: mobileController,
              obscure: true,
            ),
          ],

          SizedBox(height: 20),

          Align(
            alignment: Alignment.centerLeft,
            child:  CustomText(
              "Password",
              textStyle: TextStyle( fontSize: 16,fontWeight: FontWeight.w600),
            ),
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
