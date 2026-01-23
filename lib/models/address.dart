class AddressDto {
  final String street1;
  final String? street2;
  final String city;
  final String state;
  final String zipCode;

  AddressDto({
    required this.street1,
    this.street2,
    required this.city,
    required this.state,
    required this.zipCode,
  });
}
