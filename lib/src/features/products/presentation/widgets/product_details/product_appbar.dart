part of '../../../products_imports.dart';

class CustomSilverAppBar extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onBack;
  final VoidCallback? onFavorite;
  final double height;

  const CustomSilverAppBar({
    super.key,
    required this.imagePath,
    this.onBack,
    this.onFavorite,
    this.height = AppSizes.h400,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: height,
      pinned: true,
      backgroundColor: AppColors.white,
      elevation: 0,

      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.black),
        onPressed: onBack ?? () => Navigator.pop(context),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.only(right: AppSizes.p16),
          child: GestureDetector(
            onTap: onFavorite,
            child: Container(
              width: AppSizes.w32,
              height: AppSizes.h32,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.ScafoldBackground,
                  width: 1,
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/empty_fav_icon.svg",
                  width: AppSizes.w16,
                  height: AppSizes.h16,
                ),
              ),
            ),
          ),
        ),
      ],

      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
