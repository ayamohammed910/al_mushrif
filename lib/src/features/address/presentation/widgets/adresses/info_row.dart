part of '../../../address_imports.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText("$label : ",textStyle: TextStyle(
          fontSize: AppSizes.fs14,
          color: AppColors.black
        ),),
        SizedBox(width: AppSizes.h5,),
        CustomText(value),
      ],
    );
  }
}
