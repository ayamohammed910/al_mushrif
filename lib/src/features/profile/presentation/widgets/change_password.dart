part of '../../profile_imports.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final currentController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

  bool currentObscure = true;
  bool newObscure = true;
  bool confirmObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Change Password"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextField(
              hint: "Current Password",
              controller: currentController,
              obscure: currentObscure,
              suffixIcon: currentObscure
                  ? Icons.visibility_off
                  : Icons.visibility,
              onSuffixTap: () {
                setState(() {
                  currentObscure = !currentObscure;
                });
              },
            ),
            const SizedBox(height: AppSizes.h16),

            CustomTextField(
              hint: "New password",
              controller: newController,
              obscure: newObscure,
              suffixIcon: newObscure ? Icons.visibility_off : Icons.visibility,
              onSuffixTap: () {
                setState(() {
                  newObscure = !newObscure;
                });
              },
            ),
            const SizedBox(height: AppSizes.h16),

            CustomTextField(
              hint: "Confirm password",
              controller: confirmController,
              obscure: confirmObscure,
              suffixIcon: confirmObscure
                  ? Icons.visibility_off
                  : Icons.visibility,
              onSuffixTap: () {
                setState(() {
                  confirmObscure = !confirmObscure;
                });
              },
            ),
            const SizedBox(height: AppSizes.h32),

            CustomButton(text: 'Confirm change', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
