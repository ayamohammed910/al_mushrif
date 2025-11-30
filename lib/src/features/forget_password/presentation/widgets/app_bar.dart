part of '../../forget_password_imports.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final bool showBackButton;
  final double height;

  const CustomAppBar({
    super.key,
    required this.imagePath,
    this.showBackButton = true,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.pop(context),
      )
          : null,
      flexibleSpace: Center(
        child: Image.asset(
          imagePath,
          height: 300,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}