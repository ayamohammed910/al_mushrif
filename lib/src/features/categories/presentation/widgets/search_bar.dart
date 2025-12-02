part of '../../categories_imports.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged<String>? onSearchChanged;
  final VoidCallback? onSearchSubmitted;
  final String? hintText;
  final TextEditingController? controller;

  const SearchBar({
    Key? key,
    this.onSearchChanged,
    this.onSearchSubmitted,
    this.hintText = 'Search',
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: AppSizes.p16, vertical: AppSizes.p16),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              controller: controller,
              onChanged: onSearchChanged,
              onSubmitted: (value) {
                if (onSearchSubmitted != null) onSearchSubmitted!();
              },
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: AppColors.black, fontSize: AppSizes.fs14),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(AppSizes.p16),
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/svg/search_icon.svg",
                      color: AppColors.grey,
                    ),
                  ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: AppSizes.p16,
                  horizontal: AppSizes.p16,
                ),
              ),
              style: TextStyle(fontSize: AppSizes.fs14, color: AppColors.black),
            ),
          ),
        ),
      ],
    );
  }
}
