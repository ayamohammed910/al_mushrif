part of '../../profile_imports.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("assets/png/logo.png"),
        ),
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.red.shade100,
          child: IconButton(
            icon: const Icon(Icons.edit, size: 16, color: AppColors.primary),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
