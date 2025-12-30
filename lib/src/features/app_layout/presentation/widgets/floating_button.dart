part of '../../app_layout_imports.dart';
class FloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.primary,
      shape: const CircleBorder(),
      child: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(
          "assets/svg/cart.svg",
          color: AppColors.white,
        ),
      ),
    );
  }
}