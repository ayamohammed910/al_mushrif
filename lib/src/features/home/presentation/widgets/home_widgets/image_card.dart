part of '../../../home_imports.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const ImageCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.w80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: AppSizes.h8,),
          SvgPicture.asset(imagePath, width: AppSizes.w20, height: AppSizes.h20, fit: BoxFit.cover),

          SizedBox(height: AppSizes.h4),

          CustomText(
            title,
            textStyle: TextStyle(fontSize: AppSizes.fs12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: AppSizes.h4),

          CustomText(
            subtitle,
            textStyle: TextStyle(fontSize: AppSizes.fs12, color: AppColors.ScafoldBackground),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}