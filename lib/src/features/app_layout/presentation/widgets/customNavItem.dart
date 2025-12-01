part of '../../app_layout_imports.dart';

BottomNavigationBarItem customNavItem({
  required String svgPath,
  required String label,
  Color selectedColor = Colors.red,
  Color unselectedColor = Colors.grey,
  double height = 22,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(svgPath, height: height, color: unselectedColor),
    activeIcon: SvgPicture.asset(svgPath, height: height, color: selectedColor),
    label: label,
  );
}
