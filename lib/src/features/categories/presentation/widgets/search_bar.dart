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
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
            child: TextField(
              controller: controller,
              onChanged: onSearchChanged,
              onSubmitted: (value) {
                if (onSearchSubmitted != null) onSearchSubmitted!();
              },
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/svg/search_icon.svg",
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
              ),
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ),
      ],
    );
  }
}
