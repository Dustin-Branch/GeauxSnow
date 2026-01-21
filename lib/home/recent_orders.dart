import 'package:flutter/material.dart';
import 'package:geaux_snow/models/order.dart';
import 'package:intl/intl.dart';

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
        SizedBox(
          height: 210,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 30),
            itemCount: _orders.length,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final order = _orders[index];
              final product = order.products?.isNotEmpty == true
                  ? order.products!.first
                  : null;
              final formattedPurchaseDate = DateFormat(
                'MMM d, y',
              ).format(order.createdAt);
              return Container(
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              formattedPurchaseDate,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${order.products?.length ?? 0} Item${(order.products?.length ?? 0) == 1 ? '' : 's'}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      if (product != null)
                        Row(
                          children: [
                            Icon(
                              Icons.icecream,
                              color: Colors.blue.shade300,
                              size: 32,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                product.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      const Spacer(),
                      GestureDetector(
                        onTap: null, //TODO: implement reorder functionality
                        child: Text(
                          'Reorder',
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
