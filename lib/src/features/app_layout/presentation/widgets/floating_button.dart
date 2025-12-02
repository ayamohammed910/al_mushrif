part of '../../app_layout_imports.dart';

class FloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: AppColors.primary,
          shape: const CircleBorder(),
          child: SvgPicture.asset("assets/svg/cart.svg",color: AppColors.white,height: AppSizes.h24,)
        ),
        const SizedBox(height: AppSizes.h24),
      ],
    );
  }
}
