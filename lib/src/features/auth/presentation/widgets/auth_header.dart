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
        SizedBox(height: AppSizes.h4),

        CustomText(
          title,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: AppSizes.fs24),
        ),
        SizedBox(height: AppSizes.h4),
        CustomText(
          subtitle,
          textStyle: TextStyle(fontSize: AppSizes.fs14, color: AppColors.grey),
        ),
      ],
    );
  }
}
