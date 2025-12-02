part of '../../app_layout_imports.dart';

class FloatingButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: Color(0xFFC6161D),
          shape: const CircleBorder(),
          child: SvgPicture.asset("assets/svg/cart.svg",color: Colors.white,height: 25,)
        ),
        const SizedBox(height: 23),
        // CustomText(
        //   "label",
        //   textStyle: const TextStyle(fontSize: 18, color: Colors.red),
        // ),
      ],
    );
  }
}
