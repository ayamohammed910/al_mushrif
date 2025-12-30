part of '../../../cart_imports.dart';

class RowOrderInfo extends StatelessWidget {
  final String title;
  final String data;
  const RowOrderInfo({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(title, textStyle: TextStyle(color: AppColors.grey)),
        CustomText(
          data,
          textStyle: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
