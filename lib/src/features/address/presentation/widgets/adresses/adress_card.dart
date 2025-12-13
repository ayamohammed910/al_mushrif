part of '../../../address_imports.dart';
class AddressCard extends StatefulWidget {
  final String addressName;
  final String type;
  final String city;
  final String state;
  final String street;
  final String building;
  final String flatNo;
  final String phone;

  const AddressCard({
    super.key,
    required this.addressName,
    required this.type,
    required this.city,
    required this.state,
    required this.street,
    required this.building,
    required this.flatNo,
    required this.phone,
  });

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  bool isDeleted = false;

  @override
  Widget build(BuildContext context) {
    if (isDeleted) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoRow(label: "Address", value: widget.addressName),
                  const SizedBox(height: AppSizes.h8),
                  InfoRow(label: 'Type', value: widget.type),
                  const SizedBox(height: AppSizes.h8),
                  InfoRow(label: 'City', value: widget.city),
                  const SizedBox(height: AppSizes.h8),
                  InfoRow(label: 'State', value: widget.state),
                  const SizedBox(height: AppSizes.h8),
                  InfoRow(label: 'Street', value: widget.street),
                  const SizedBox(height: AppSizes.h8),
                  if (widget.building.isNotEmpty)
                    InfoRow(label: 'Building', value: widget.building),
                  if (widget.building.isNotEmpty) const SizedBox(height: AppSizes.h8),
                  if (widget.flatNo.isNotEmpty)
                    InfoRow(label: 'Flat No.', value: widget.flatNo),
                  if (widget.flatNo.isNotEmpty) const SizedBox(height: AppSizes.h8),
                  if (widget.phone.isNotEmpty)
                    InfoRow(label: 'Phone', value: widget.phone),
                  if (widget.phone.isNotEmpty) const SizedBox(height: AppSizes.h8),
                ],
              ),
            ),

            // Delete Button
            IconButton(
              icon: const Icon(Icons.delete, color: AppColors.primary),
              onPressed: () {
                setState(() {
                  isDeleted = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}