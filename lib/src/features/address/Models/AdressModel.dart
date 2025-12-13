
class AddressModel {
  final String addressName;
  final String type;
  final String city;
  final String state;
  final String street;
  final String building;
  final String flatNo;
  final String phone;

  AddressModel({
    required this.addressName,
    required this.type,
    required this.city,
    required this.state,
    required this.street,
    required this.building,
    required this.flatNo,
    required this.phone,
  });

  /// 👇 THIS IS REQUIRED
  AddressModel copyWith({
    String? addressName,
    String? type,
    String? city,
    String? state,
    String? street,
    String? building,
    String? flatNo,
    String? phone,
  }) {
    return AddressModel(
      addressName: addressName ?? this.addressName,
      type: type ?? this.type,
      city: city ?? this.city,
      state: state ?? this.state,
      street: street ?? this.street,
      building: building ?? this.building,
      flatNo: flatNo ?? this.flatNo,
      phone: phone ?? this.phone,
    );
  }
}