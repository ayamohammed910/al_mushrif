part of '../../../cart_imports.dart';
class TextFieldBottomSheet extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final VoidCallback? onApply;

  const TextFieldBottomSheet({
    super.key,
    required this.hint,
    required this.controller,
    this.onApply,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h50,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            padding: const EdgeInsets.only(right: 110),
            child:CustomTextField(hint: hint, controller: controller)
          ),

          Positioned(
            right: 0,
            top: 6,
            bottom: 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                width: 100,
                child: CustomButton(
                  text: "Apply",
                  onPressed: onApply,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}