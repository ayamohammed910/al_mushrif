part of '../../../address_imports.dart';

class MapPickerScreen extends StatefulWidget {
  const MapPickerScreen({super.key});

  @override
  State<MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends State<MapPickerScreen> {
  LatLng selectedLocation = LatLng(30.0444, 31.2357); // Cairo
  String addressText = "Detecting address...";

  Future<AddressData> _getAddress(LatLng pos) async {
    final placemarks = await placemarkFromCoordinates(
      pos.latitude,
      pos.longitude,
    );
    final place = placemarks.first;

    final addressData = AddressData(
      fullAddress:
          "${place.street}, ${place.locality}, ${place.administrativeArea}",
      street: place.street ?? "",
      city: place.locality ?? "",
      state: place.administrativeArea ?? "",
    );

    setState(() {
      addressText = addressData.fullAddress;
    });

    return addressData;
  }

  @override
  void initState() {
    super.initState();
    _getAddress(selectedLocation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Location")),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: selectedLocation,
              initialZoom: 16,
              onPositionChanged: (position, _) {
                if (position.center != null) {
                  selectedLocation = position.center!;
                  _getAddress(selectedLocation);
                }
              },
            ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),

          const Center(
            child: Icon(Icons.location_pin, size: 40, color: Colors.red),
          ),

          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(addressText, textAlign: TextAlign.center),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () async {
                        final data = await _getAddress(selectedLocation);
                        Navigator.pop(
                          context,
                          data,
                        ); // return structured address
                      },
                      child: const Text("Confirm Location"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
