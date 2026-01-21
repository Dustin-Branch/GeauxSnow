import 'package:flutter/material.dart';
import 'package:geaux_snow/models/order.dart';
import 'package:intl/intl.dart';

class RecentOrder extends StatelessWidget {
  final OrderDto order;

  const RecentOrder({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
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
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 8)),
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
                  Icon(Icons.icecream, color: Colors.blue.shade300, size: 32),
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
              onTap: () {
                // TODO: implement reorder functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Reorder ${product?.name ?? 'item'}')),
                );
              },
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
  }
}
