part of '../../../categories_imports.dart';

class CheckboxList extends StatefulWidget {
  final String title;
  final List<String> items;
  final Color selectedColor;
  final Color unselectedColor;

  const CheckboxList({
    Key? key,
    required this.title,
    required this.items,
    this.selectedColor = AppColors.primary,
    this.unselectedColor = AppColors.black,
  }) : super(key: key);

  @override
  _CheckboxListState createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxList> {
  bool isExpanded = false;
  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: CustomText(
            widget.title,
            textStyle: const TextStyle(
              fontSize: AppSizes.h16,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: Icon(
            isExpanded ? Icons.expand_less : Icons.expand_more,
            color: Colors.black,
          ),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
        const Divider(color: Colors.grey, thickness: 1, height: 1),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: ConstrainedBox(
            constraints: isExpanded
                ? const BoxConstraints()
                : const BoxConstraints(maxHeight: 0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (context, index) {
                final item = widget.items[index];
                return CheckboxListTile(
                  title: Text(
                    item,
                    style: TextStyle(
                      color: selectedItems.contains(item)
                          ? widget.selectedColor
                          : widget.unselectedColor,
                    ),
                  ),
                  activeColor: widget.selectedColor,
                  value: selectedItems.contains(item),
                  onChanged: (value) {
                    setState(() {
                      if (value!) {
                        selectedItems.add(item);
                      } else {
                        selectedItems.remove(item);
                      }
                    });
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
