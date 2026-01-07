part of '../../profile_imports.dart';

void _showDeleteDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.p20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Do you want to delete Account...?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AppSizes.fs16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppSizes.h20),
                CustomButton(
                  text: "Confirm",
                  onPressed: () {
                    Navigator.pop(context);
                    // delete logic
                  },
                ),
                const SizedBox(height: AppSizes.h10),
                CustomButton(
                  text: "Cancel",
                  onPressed: () => Navigator.pop(context),
                  color: Colors.grey.shade300,
                  TextColor: AppColors.black,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
