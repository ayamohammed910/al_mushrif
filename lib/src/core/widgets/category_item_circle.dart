part of '../../features/home/home_imports.dart';
class CategoryItemCircle extends StatelessWidget {
  final CategoryItemModel item;
  final double size;

  const CategoryItemCircle({
    Key? key,
    required this.item,
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
              color: item.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p8),
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Flexible(
          child: SizedBox(
            width: size + AppSizes.w10,
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: AppSizes.fs10,
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


class CategoryItemModel {
  final String imagePath;
  final Color backgroundColor;
  final String title;
  final List<CategoryModel> products;


  CategoryItemModel({
    this.products = const [],
    required this.imagePath,
    required this.backgroundColor,
    required this.title,
  });
}