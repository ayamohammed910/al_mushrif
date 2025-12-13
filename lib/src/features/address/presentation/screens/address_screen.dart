part of '../../address_imports.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Add New Address"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.p20),
        child: Column(
          children: [
            NewAddressForms(),
            CustomButton(text: "Save", onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShowAddresses(),
              ),
            );}),
          ],
        )
      ),
    );
  }
}
