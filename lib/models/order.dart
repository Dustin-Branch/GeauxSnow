class OrderDto {
  final String id;
  final DateTime createdAt;
  List<ProductDto>? products;

  OrderDto({required this.id, required this.createdAt, this.products});
}

class ProductDto {
  final int id;
  final String name;

  ProductDto({required this.id, required this.name});
}
