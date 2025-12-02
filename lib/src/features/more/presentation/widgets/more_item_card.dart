part of '../../more_imports.dart';


class MoreItemCard extends StatelessWidget {
  final MoreItem item;

  const MoreItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppSizes.p16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SvgPicture.asset(
              item.image,
              width: AppSizes.w36,
              height: AppSizes.h36,
            ),
            const SizedBox(height: AppSizes.h10),
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: AppSizes.fs14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class MoreItem {
  final String image;
  final String title;
  final VoidCallback? onTap;

  MoreItem({
    required this.image,
    required this.title,
    this.onTap,
  });
}