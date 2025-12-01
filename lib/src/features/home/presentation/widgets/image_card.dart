part of '../../home_imports.dart';

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
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(imagePath, width: 20, height: 20, fit: BoxFit.cover),
          SizedBox(height: 2),
          CustomText(
            title,
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2),
          CustomText(
            subtitle,
            textStyle: TextStyle(fontSize: 12, color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
