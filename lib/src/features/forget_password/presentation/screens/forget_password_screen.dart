part of '../../forget_password_imports.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(imagePath: "assets/png/profile_image.png"),
      body: Stack(children: [Positioned(
          top: -70,
          child: ForgetPasswordBody())]),
    );
  }
}
