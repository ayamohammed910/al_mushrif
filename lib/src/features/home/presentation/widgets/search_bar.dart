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
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
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
                prefixIcon:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    "assets/svg/search_icon.svg",
                    color: Colors.grey[600],
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: (){},
                    child: SvgPicture.asset(
                      "assets/svg/scan.svg",
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              ),
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            "assets/svg/notification.svg",
          ),
        ),
      ],
    );
  }
}
