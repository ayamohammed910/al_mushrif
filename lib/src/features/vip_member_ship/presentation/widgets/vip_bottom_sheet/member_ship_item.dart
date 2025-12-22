part of '../../../vip_member_ship_imports.dart';

class MembershipItem extends StatelessWidget {
  final MembershipModel model;
  final int selectedValue;
  final ValueChanged<int> onChanged;

  const MembershipItem({
    super.key,
    required this.model,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = model.value == selectedValue;

    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.p16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:AppColors.white ,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ?  AppColors.primary : AppColors.white,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            model.invite,
            textStyle: TextStyle(
              fontSize: AppSizes.fs22,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: CustomText(
                  model.title,
                  textStyle: const TextStyle(
                    fontSize: AppSizes.fs16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Radio<int>(
                value: model.value,
                groupValue: selectedValue,
                onChanged: (v) => onChanged(v!),
                fillColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(MaterialState.selected)) {
                      return  AppColors.primary;
                    }
                    return AppColors.primary; // unselected color
                  },
                ),
              ),
            ],
          ),

          CustomText(
            model.price,
            textStyle: const TextStyle(
              fontSize: AppSizes.fs22,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: AppSizes.h12),
          CustomText(
            "Benefits",
            textStyle: const TextStyle(fontSize: AppSizes.fs16),
          ),
          const SizedBox(height: AppSizes.h12),

          /// BENEFITS
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: model.benefits
                .map(
                  (b) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSizes.p12),
                    child: CustomText(
                      "• $b",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs12,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class MembershipModel {
  final String invite;
  final String title;
  final String price;
  final List<String> benefits;
  final int value;
  const MembershipModel({
    this.invite = "",
    required this.title,
    this.price = "",
    required this.benefits,
    required this.value,
  });
}
