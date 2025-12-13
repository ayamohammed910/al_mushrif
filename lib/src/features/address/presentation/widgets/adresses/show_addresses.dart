part of '../../../address_imports.dart';

class ShowAddresses extends StatelessWidget {
  const ShowAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AddressModel> addresses = [
      AddressModel(
        addressName: 'adressName',
        type: 'other',
        city: 'Bu al Khawawis',
        state: 'Abu Dhabi',
        street: 'testStreetName',
        building: 'testbuilding name',
        flatNo: '123456',
        phone: '+971121212121',
      ),
      AddressModel(
        addressName: 'hvhvhvhvh',
        type: 'other',
        city: 'Abu Dhabi',
        state: 'Abu Dhabi',
        street: 'Zone',
        building: 'vuyutest',
        flatNo: '2525',
        phone: '+971121212121',
      ),
      AddressModel(
        addressName: 'vjjfug',
        type: 'other',
        city: 'Abu Dhabi',
        state: 'Abu Dhabi',
        street: 'Mushrif Park running track',
        building: '',
        flatNo: '',
        phone: '',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar(title: "Addresses"),

      body: ListView.builder(
        padding: const EdgeInsets.all(AppSizes.p16),
        itemCount: addresses.length,
        itemBuilder: (context, index) {
          final address = addresses[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EditAddressPage(address: address),
                ),
              );
            },
            child: AddressCard(
              addressName: address.addressName,
              type: address.type,
              city: address.city,
              state: address.state,
              street: address.street,
              building: address.building,
              flatNo: address.flatNo,
              phone: address.phone,
            ),
          );
        },
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomButton(
          text: "+ Add New Address",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddressScreen()),
            );
          },
        ),
      ),
    );
  }
}

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
}
