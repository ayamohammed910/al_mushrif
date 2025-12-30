part of '../../../cart_imports.dart';
class AddressCard extends StatelessWidget {
  final Address address;
  final bool isSelected;
  final ValueChanged<int> onSelect;

  const AddressCard({
    super.key,
    required this.address,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(address.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: AppSizes.p16),
        padding: const EdgeInsets.all(AppSizes.p16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey.shade300,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Radio<int>(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: address.id,
                  groupValue: isSelected ? address.id : -1,
                  activeColor: AppColors.primary,
                  onChanged: (value) {
                    onSelect(value!);
                  },
                ),
              ],
            ),

            const SizedBox(width: AppSizes.w8),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoRow(label: "Address", value: address.title),
                  InfoRow(label: "Type", value: address.type),
                  InfoRow(label: "City", value: address.city),
                  InfoRow(label: "State", value: address.state),
                  InfoRow(label: "Street Name", value: address.streetName),
                  InfoRow(label: "Building Name", value: address.buildingName),
                  InfoRow(label: "Flat No", value: address.flatNo),
                  InfoRow(label: "Phone", value: address.phone),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Address {
  final int id;
  final String title;
  final String type;
  final String city;
  final String state;
  final String streetName;
  final String buildingName;
  final String flatNo;
  final String phone;

  Address({
    required this.id,
    required this.title,
    required this.type,
    required this.city,
    required this.state,
    required this.streetName,
    required this.buildingName,
    required this.flatNo,
    required this.phone,
  });
}