part of '../../more_imports.dart';

class MoreGrid extends StatelessWidget {
  final List<MoreItem> items;

  const MoreGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = items.length == 2 ? 2 : 3;
    double childAspectRatio = items.length == 2 ? 1.3 : 1.05;

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: items.map((item) => MoreItemCard(item: item)).toList(),
    );
  }
}
