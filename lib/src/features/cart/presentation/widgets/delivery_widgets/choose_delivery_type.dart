part of '../../../cart_imports.dart';
class ChooseDeliveryType extends StatefulWidget {
  const ChooseDeliveryType({super.key});

  @override
  State<ChooseDeliveryType> createState() => _ChooseDeliveryTypeState();
}

class _ChooseDeliveryTypeState extends State<ChooseDeliveryType> {
  String? Type;

  final List<String> addressLines = [
    "Al Khaleej Al Arabi Street",
    "Al Mushrif Area",
    "Abu Dhabi",
  ];
  bool isHomeDelivery = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.p12),
            child: Text(
              "Choose Delivery Type",
              style: TextStyle(
                fontSize: AppSizes.fs16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),

        Padding(
          padding: const EdgeInsets.all(AppSizes.p16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home Delivery Option
              RadioDeliveryType(
                title: 'Home Delivery',
                isSelected: isHomeDelivery,
                onChanged: (selected) {
                  setState(() {
                    isHomeDelivery = selected!;
                  });
                },
              ),

              RadioDeliveryType(
                title: 'Local Pickup',
                isSelected: !isHomeDelivery,
                onChanged: (selected) {
                  setState(() {
                    isHomeDelivery = !selected!;
                  });
                },
              ),
            ],
          ),
        ),

        isHomeDelivery
            ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.p16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery within 50 minutes.",
                    style: TextStyle(
                      fontSize: AppSizes.fs16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Đ Free Shipping",
                    style: TextStyle(
                      fontSize: AppSizes.fs16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
            : GestureDetector(
          onTap: () => _openAddressTypeSheet(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.p16,
            ),
            child: Container(
              height: AppSizes.h50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.p20,
              ),
              child: Row(
                children: [
                  CustomText(
                    Type ?? "Select nearest pickup point",
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: AppSizes.fs16,
                      color: Type == null
                          ? AppColors.grey
                          : AppColors.black,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      if (Type != null)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Type =
                              null;
                            });
                          },
                          child: const Icon(
                            Icons.clear,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      const SizedBox(width: AppSizes.w8),
                      const Icon(Icons.keyboard_arrow_down_sharp),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),],
    );
  }
  void _openAddressTypeSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) {
        return PickupBottomSheet(
          selectedValue: Type,
          onSelected: (value) {
            setState(() {
              Type = value;
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
