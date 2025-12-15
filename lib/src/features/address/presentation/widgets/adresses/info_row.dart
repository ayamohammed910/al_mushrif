part of '../../../address_imports.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            '$label : ',
            textStyle: const TextStyle(
              fontSize: AppSizes.fs16,
              color: AppColors.black,
            ),
          ),
          CustomText(
            value,
            textStyle: const TextStyle(
              fontSize: AppSizes.fs16,
              fontWeight: FontWeight.bold, // optional
            ),
          ),
        ],
      ),
    );
  }
}
