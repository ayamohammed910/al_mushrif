part of '../../profile_imports.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: CustomAppBar(title: "Manage Profile"),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: Column(
          children: [
            ProfileImage(),
            ProfileForms(),
            CustomButton(text: "save", onPressed: () {}),
            const SizedBox(height: AppSizes.h16),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage(),
                  ),
                );

              },
              child: CustomText(
                "Change Password",
                textStyle: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.fs16,
                ),
              ),
            ),

            const SizedBox(height: AppSizes.h24),

            CustomButton(text: "Logout", onPressed: () {}),
            const SizedBox(height: AppSizes.h16),
            CustomOutlineButton(
              text: "Delete Account",
              onPressed: () {
                _showDeleteDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
