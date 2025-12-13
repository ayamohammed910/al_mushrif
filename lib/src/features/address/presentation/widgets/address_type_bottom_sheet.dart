part of '../../address_imports.dart';

class AddressTypeBottomSheet extends StatelessWidget {
  final String? selectedValue;
  final ValueChanged<String> onSelected;

  const AddressTypeBottomSheet({
    Key? key,
    required this.selectedValue,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> items = ["Home", "Business", "Other"];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: AppSizes.h50,
                width: AppSizes.w200,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: AppColors.grey),
                    SizedBox(width: AppSizes.w8),
                    CustomText(
                      "Search",
                      textStyle: TextStyle(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppSizes.h16),

            ...items.map(
              (item) => GestureDetector(
                onTap: () => onSelected(item),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(
                    12,
                    0,
                    12,
                    12,
                  ), // 👈 LEFT & RIGHT SPACE
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (selectedValue == item)
                        const Icon(Icons.check, color: AppColors.primary),
                      SizedBox(width: 10),
                      CustomText(
                        item,
                        textStyle: const TextStyle(
                          fontSize: AppSizes.fs16,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
