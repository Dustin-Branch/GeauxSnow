import 'package:flutter/material.dart';

class HorizontalListView<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final double itemWidth;
  final EdgeInsets padding;
  final double height;

  const HorizontalListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.itemWidth = double.infinity,
    this.padding = const EdgeInsets.fromLTRB(16, 0, 16, 30),
    this.height = 210,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: padding,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final item = items[index];
          return SizedBox(
            width: itemWidth == double.infinity
                ? MediaQuery.of(context).size.width - 32
                : itemWidth,
            child: itemBuilder(context, item),
          );
        },
      ),
    );
  }
}
