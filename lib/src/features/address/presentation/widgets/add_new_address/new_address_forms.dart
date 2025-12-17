part of '../../../address_imports.dart';

class NewAddressForms extends StatefulWidget {
  const NewAddressForms({super.key});

  @override
  State<NewAddressForms> createState() => _NewAddressFormsState();
}

class _NewAddressFormsState extends State<NewAddressForms> {
  final locationController = TextEditingController();
  final addressNameController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final streetController = TextEditingController();
  final buildingController = TextEditingController();
  final flatController = TextEditingController();

  String? addressType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText("Location"),
        const SizedBox(height: AppSizes.h10),

        InkWell(
          onTap: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MapPickerWidget(),
              ),
            );

            if (result != null && result is AddressData) {
              setState(() {
                //locationController.text = result.fullAddress;
                addressNameController.text=result.fullAddress;
                streetController.text = result.street;
                cityController.text = result.city;
                stateController.text = result.state;
              });
            }
          },
          child: AbsorbPointer(
            absorbing: true,
            child: CustomTextField(
              hint: "Detect Location",
              controller: locationController,
            ),
          ),
        ),
        CustomLabeledTextfields(
          label: "Address Name",
          hint: "Enter Address Name",
          controller: addressNameController,
        ),

        CustomLabeledTextfields(
          label: "State",
          hint: "Select State",
          controller: stateController,
        ),

        CustomLabeledTextfields(
          label: "City",
          hint: "Select City",
          controller: cityController,
        ),
        const SizedBox(height: AppSizes.h16),

        CustomText("Address Type"),
        const SizedBox(height: AppSizes.h10),

        GestureDetector(
          onTap: ()=> _openAddressTypeSheet(),
          child: Container(
            height: AppSizes.h50,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p20),
            child: CustomText(
              addressType ?? "Select Type",
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: AppSizes.fs16,
                color: addressType == null ? AppColors.grey : AppColors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSizes.h16),

        CustomLabeledTextfields(
          label: "Street Name",
          hint: "Enter Street Name",
          controller: streetController,
        ),

        CustomLabeledTextfields(
          label: "Building Name",
          hint: "Enter Building Name",
          controller: buildingController,
        ),
        CustomLabeledTextfields(
          label: "Flat No.",
          hint: "Enter Flat Number",
          controller: flatController,
        ),
        const SizedBox(height: AppSizes.h24),
      ],
    );
  }

  void _openAddressTypeSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) {
        return AddressTypeBottomSheet(
          selectedValue: addressType,
          onSelected: (value) {
            setState(() {
              addressType = value;
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }
}

class AddressData {
  final String fullAddress;
  final String street;
  final String city;
  final String state;

  AddressData({
    required this.fullAddress,
    required this.street,
    required this.city,
    required this.state,
  });
}
