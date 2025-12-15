part of '../../../address_imports.dart';
class MapPickerScreen extends StatefulWidget {
  const MapPickerScreen({super.key});

  @override
  State<MapPickerScreen> createState() => _MapPickerScreenState();
}

class _MapPickerScreenState extends State<MapPickerScreen> {
  LatLng selectedLocation = const LatLng(30.0444, 31.2357); // Cairo
  String addressText = "Detecting address...";

  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _getAddress(selectedLocation);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  Future<AddressData> _getAddress(LatLng pos) async {
    try {
      final placemarks =
      await placemarkFromCoordinates(pos.latitude, pos.longitude);

      final place = placemarks.first;

      final data = AddressData(
        fullAddress:
        "${place.street}, ${place.locality}, ${place.administrativeArea}",
        street: place.street ?? "",
        city: place.locality ?? "",
        state: place.administrativeArea ?? "",
      );

      if (mounted) {
        setState(() {
          addressText = data.fullAddress;
        });
      }

      return data;
    } catch (e) {
      if (mounted) {
        setState(() {
          addressText = "Unable to detect address";
        });
      }

      return AddressData(
        fullAddress: "",
        street: "",
        city: "",
        state: "",
      );
    }
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

              /// 🔥 DEBOUNCE SOLUTION
              onPositionChanged: (position, _) {
                if (position.center == null) return;

                selectedLocation = position.center!;

                _debounce?.cancel();
                _debounce = Timer(
                  const Duration(milliseconds: 800),
                      () {
                    _getAddress(selectedLocation);
                  },
                );
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),

          /// 📍 CENTER PIN
          const Center(
            child: Icon(
              Icons.location_pin,
              size: 40,
              color: Colors.red,
            ),
          ),

          /// 📦 ADDRESS CARD
          Positioned(
            bottom: 20,
            left: 16,
            right: 16,
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      addressText,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () async {
                        final data =
                        await _getAddress(selectedLocation);

                        if (context.mounted) {
                          Navigator.pop(context, data);
                        }
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