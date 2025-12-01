part of '../../home_imports.dart';
class Bannar extends StatelessWidget {
  const Bannar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/png/bannar.png',
        width: double.infinity,
        height: 160,
        fit: BoxFit.cover,
      ),
    );
  }
}
