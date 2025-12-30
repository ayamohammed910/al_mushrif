part of '../../../cart_imports.dart';

class RadioDeliveryType extends StatelessWidget {
  final String title;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const RadioDeliveryType({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isSelected);
      },
      child: Container(
        height: AppSizes.h40,
        width: AppSizes.w180,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              value: isSelected,
              groupValue: true,
              onChanged: (value) {
                onChanged(value);
              },
              activeColor: AppColors.primary,
            ),
            CustomText(title),
          ],
        ),
      ),
    );
  }
}
