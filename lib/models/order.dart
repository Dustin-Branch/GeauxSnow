import 'package:geaux_snow/models/product.dart';

class OrderDto {
  final String id;
  final DateTime createdAt;
  List<ProductDto>? products;

  OrderDto({required this.id, required this.createdAt, this.products});
}
