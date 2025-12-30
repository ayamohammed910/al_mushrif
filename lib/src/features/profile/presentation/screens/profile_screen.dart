part of '../../profile_imports.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.ScafoldBackground,
        appBar: CustomAppBar(title: "Manage Profile"),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProfileImage(),
              const SizedBox(height: AppSizes.h16),
              ProfileForms(),
              const SizedBox(height: AppSizes.h16),
              CustomButton(text: "Save", onPressed: () {}),
              const SizedBox(height: AppSizes.h16),
              InkWell(
                onTap: () {
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
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSizes.p16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
      ),
    );
  }
}
