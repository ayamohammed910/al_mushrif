part of '../../../cart_imports.dart';
class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  int selectedAddressId = 0;

  // List of Address objects
  final List<Address> addresses = [
    Address(
      id: 0,
      title: "vijjfug",
      type: "Other",
      city: "Abu Dhabi",
      state: "Abu Dhabi",
      streetName: "Mushrif Park running track",
      buildingName: "tdyftgfytest",
      flatNo: "8658",
      phone: "+971121212121",
    ),
    Address(
      id: 1,
      title: "ttttt",
      type: "Home",
      city: "Dubai",
      state: "Dubai",
      streetName: "Dubai Marina",
      buildingName: "Marina Towers",
      flatNo: "1234",
      phone: "+971987654321",
    ),
    Address(
      id: 2,
      title: "Somewhere else",
      type: "Office",
      city: "Sharjah",
      state: "Sharjah",
      streetName: "Al Ittihad St.",
      buildingName: "Al Dana Center",
      flatNo: "1001",
      phone: "+971555555555",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Cart", backgroundColor: AppColors.white),
      body: Column(
        children: [
          const CheckoutSteps(currentStep: 1),
          Padding(
            padding: const EdgeInsets.all(AppSizes.p16),
            child: CustomOutlineButton(text: "+ Add New Address", onPressed: (){}),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSizes.p16),
              itemCount: addresses.length,
              itemBuilder: (context, index) {
                final address = addresses[index];
                return AddressCard(
                  address: address,
                  isSelected: selectedAddressId == address.id,
                  onSelect: (id) {
                    setState(() {
                      selectedAddressId = id;
                    });
                  },
                );
              },
            ),
          ),
          
          Container(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.p16),
              child: Column(
                children: [
                  CustomButton(text: "Continue to Delivery", onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  DeliveryPage()), // Navigate to ShippingPage
                    );
                  }),
                  SizedBox(height: AppSizes.h20,),
                  CustomOutlineButton(text: "Continue shopping", onPressed: (){})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}