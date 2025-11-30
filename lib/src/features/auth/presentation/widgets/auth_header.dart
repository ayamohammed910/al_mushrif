part of '../../login_imports.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const AuthHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        CustomLogo(),
        SizedBox(height: 5),

        CustomText(
          title,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        SizedBox(height: 5),
        CustomText(
          subtitle,
          textStyle: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
