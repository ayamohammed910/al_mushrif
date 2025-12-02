part of '../../home_imports.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
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
