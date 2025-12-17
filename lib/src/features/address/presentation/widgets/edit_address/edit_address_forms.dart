part of '../../../address_imports.dart';

class EditAddressForms extends StatefulWidget {
  final AddressModel address;

  const EditAddressForms({super.key, required this.address});

  @override
  _EditAddressFormsState createState() => _EditAddressFormsState();
}

class _EditAddressFormsState extends State<EditAddressForms> {
  late TextEditingController addressNameController;
  late TextEditingController stateController;
  late TextEditingController cityController;
  late TextEditingController streetController;
  late TextEditingController buildingController;
  late TextEditingController flatNoController;
  late TextEditingController phoneController;
  @override
  void initState() {
    super.initState();
    addressNameController = TextEditingController(
      text: widget.address.addressName,
    );
    stateController = TextEditingController(text: widget.address.state);
    cityController = TextEditingController(text: widget.address.city);
    streetController = TextEditingController(text: widget.address.street);
    buildingController = TextEditingController(text: widget.address.building);
    flatNoController = TextEditingController(text: widget.address.flatNo);
    phoneController = TextEditingController(text: widget.address.phone);
  }

  @override
  void dispose() {
    addressNameController.dispose();
    stateController.dispose();
    cityController.dispose();
    streetController.dispose();
    buildingController.dispose();
    flatNoController.dispose();
    phoneController.dispose();
    super.dispose();
  }

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
              MaterialPageRoute(builder: (_) => const MapPickerWidget()),
            );

            if (result != null && result is AddressData) {
              setState(() {
                addressNameController.text = result.fullAddress;
                streetController.text = result.street;
                cityController.text = result.city;
                stateController.text = result.state;
              });
            }
          },
          child: CustomTextField(
            hint: "Detect Location",
            controller: addressNameController,
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
          onTap: _openAddressTypeSheet,
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
          controller: flatNoController,
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
