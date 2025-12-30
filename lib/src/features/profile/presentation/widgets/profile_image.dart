part of '../../profile_imports.dart';
class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 55,
          backgroundImage: selectedImage != null
              ? FileImage(selectedImage!)
              : const AssetImage("assets/png/logo.png") as ImageProvider,
        ),
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.red.shade100,
          child: IconButton(
            icon: const Icon(Icons.edit, size: 16, color: AppColors.primary),
            onPressed: pickImage,
          ),
        ),
      ],
    );
  }
}