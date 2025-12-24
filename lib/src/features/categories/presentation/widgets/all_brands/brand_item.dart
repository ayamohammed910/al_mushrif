part of '../../../categories_imports.dart';
class BrandItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onTap;

  const BrandItem({required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
class BrandModel {
  final String name;
  final String image;

  BrandModel({
    required this.name,
    required this.image,
  });
}