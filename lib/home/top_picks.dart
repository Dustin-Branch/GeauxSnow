import 'package:flutter/material.dart';
import 'package:geaux_snow/models/product.dart';
import 'package:geaux_snow/shared/horizontal_list_view.dart';
import 'top_pick.dart';

class TopPicks extends StatefulWidget {
  const TopPicks({super.key});

  @override
  State<TopPicks> createState() => _TopPicksState();
}

class _TopPicksState extends State<TopPicks> {
  late List<ProductDto> _products;

  @override
  void initState() {
    super.initState();
    //TODO: dummy products - replace with data fetching
    _products = [
      ProductDto(id: 1, name: 'Green Apple Snowball'),
      ProductDto(id: 2, name: 'Wedding Cake Snowball'),
      ProductDto(id: 3, name: 'Ice Cream Snowball'),
      ProductDto(id: 4, name: 'Strawberry Snowball'),
      ProductDto(id: 5, name: 'Lemon Snowball'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            'Top Picks',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        HorizontalListView<ProductDto>(
          items: _products,
          itemBuilder: (context, product) => TopPick(product: product),
          itemWidth: 140,
          height: 220,
        ),
      ],
    );
  }
}
