part of '../../../products_imports.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String imagePath;
  final VoidCallback? onBack;
  final VoidCallback? onFavorite;
  final double height;

  const CustomAppBar({
    super.key,
    required this.imagePath,
    this.onBack,
    this.onFavorite,
    this.height = AppSizes.h400,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: onBack ?? () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: null,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, height: height - 100, fit: BoxFit.cover),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSizes.p16),
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
              child: InkWell(
                borderRadius: BorderRadius.circular(
                  12,
                ),
                onTap: onFavorite,
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
