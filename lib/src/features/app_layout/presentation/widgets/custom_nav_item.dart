part of '../../app_layout_imports.dart';
class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final icons = [
      "assets/svg/home.svg",
      "assets/svg/category.svg",
      "",
      "assets/svg/offers.svg",
      "assets/svg/more.svg",
    ];
    final labels = ["Home", "Categories", "Cart", "Offers", "More"];

    return AnimatedBottomNavigationBar.builder(
      notchMargin: 0,
      itemCount: icons.length,
      activeIndex: currentIndex,
      gapLocation: GapLocation.none,
      splashColor: Colors.red.withOpacity(0.2),
      tabBuilder: (index, isActive) {
        final active = currentIndex == index;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(AppSizes.p6),
              decoration: BoxDecoration(
                color: active ? AppColors.primary : AppColors.transparent,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                icons[index],
                height: active ? AppSizes.h24 : AppSizes.h20,
                color: active ? AppColors.white : AppColors.black,
              ),
            ),
            SizedBox(height: AppSizes.h2),
            Text(
              labels[index],
              style: TextStyle(
                color: active ? AppColors.primary : AppColors.black,
                fontSize: AppSizes.fs12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      },
      onTap: onTap,
    );
  }
}
