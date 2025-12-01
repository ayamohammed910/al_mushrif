part of '../../features/home/home_imports.dart';
class CategoryItemCircle extends StatelessWidget {
  final String imagePath;
  final Color backgroundColor;
  final String title;
  final double size;

  const CategoryItemCircle({
    Key? key,
    required this.imagePath,
    required this.backgroundColor,
    required this.title,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Flexible(
          child: SizedBox(
            width: size + 10,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}