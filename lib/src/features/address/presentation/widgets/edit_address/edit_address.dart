part of '../../../address_imports.dart';

class EditAddressPage extends StatefulWidget {
  final AddressModel address;

  const EditAddressPage({super.key, required this.address});

  @override
  State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Edit Address"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              EditAddressForms(address: widget.address),
              CustomButton(
                text: "Update",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShowAddresses(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
