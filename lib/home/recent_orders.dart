import 'package:flutter/material.dart';
import 'package:geaux_snow/home/recent_oder.dart';
import 'package:geaux_snow/models/order.dart';
import 'package:geaux_snow/shared/horizontal_list_view.dart';

class RecentOrders extends StatefulWidget {
  const RecentOrders({super.key});

  @override
  State<RecentOrders> createState() => _RecentOrdersState();
}

class _RecentOrdersState extends State<RecentOrders> {
  late List<OrderDto> _orders;

  @override
  void initState() {
    super.initState();
    //TODO: dummy orders - replace with data fetching
    _orders = [
      OrderDto(
        id: '1',
        createdAt: DateTime(2026, 1, 8),
        products: [ProductDto(id: 1, name: 'Green Apple Snowball')],
      ),
      OrderDto(
        id: '2',
        createdAt: DateTime(2026, 1, 7),
        products: [ProductDto(id: 2, name: 'Wedding Cake Snowball')],
      ),
      OrderDto(
        id: '3',
        createdAt: DateTime(2026, 1, 6),
        products: [ProductDto(id: 3, name: 'Ice Cream Snowball')],
      ),
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
            'Recent Orders',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        HorizontalListView<OrderDto>(
          items: _orders,
          itemBuilder: (context, order) => RecentOrder(order: order),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text(
            'Top Picks',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
