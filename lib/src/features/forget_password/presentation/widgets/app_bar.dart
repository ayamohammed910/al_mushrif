part of '../../forget_password_imports.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final bool showBackButton;
  final double height;

  const CustomAppBar({
    super.key,
    required this.imagePath,
    this.showBackButton = true,
    this.height = AppSizes.h32,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back, color: AppColors.black),
        onPressed: () => Navigator.pop(context),
      )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}