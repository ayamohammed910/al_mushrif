part of '../../profile_imports.dart';
class ProfileForms extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
   ProfileForms({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: AppSizes.h24),
        CustomLabeledTextfields(
          label: 'User Name',
          hint: 'user test1',
          controller: nameController,
        ),
        const SizedBox(height: AppSizes.h16),
        CustomLabeledTextfields(
          label: 'E-mail',
          hint: 'darksideuxais@gmail.com',
          controller: emailController,
        ),

        const SizedBox(height: AppSizes.h16),
        CustomLabeledTextfields(
          label: 'Phone Number',
          hint: '+971 501234567',
          controller: phoneController,
        ),
        const SizedBox(height: AppSizes.h24),

      ],
    );
  }
}
