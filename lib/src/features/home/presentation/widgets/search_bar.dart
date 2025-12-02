part of '../../home_imports.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged<String>? onSearchChanged;
  final VoidCallback? onSearchSubmitted;
  final String? hintText;
  final TextEditingController? controller;

  const SearchBar({
    super.key,
    this.onSearchChanged,
    this.onSearchSubmitted,
    this.hintText = 'Search',
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric( vertical: AppSizes.p24),
            decoration: BoxDecoration(
              color: AppColors.ScafoldBackground,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: AppColors.ScafoldBackground,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CustomTextField(
              controller: controller ?? TextEditingController(),
              hint: hintText ?? 'Search',
              prefixIcon: Icons.search,
              suffixIcon: Icons.document_scanner_sharp
              ),
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset("assets/svg/notification.svg"),
        ),
      ],
    );
  }
}
