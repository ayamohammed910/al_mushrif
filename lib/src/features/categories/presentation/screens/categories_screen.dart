part of '../../categories_imports.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        centerTitle: true,
        toolbarHeight: AppSizes.h80,
        title: Image.asset(
          'assets/png/logo.png',
          height: AppSizes.h100,
        ),
      ),
      backgroundColor: AppColors.ScafoldBackground,
      body: Column(
        children: [
          SearchBar(),
          CategoriesSection()

        ],
      ),
    );
  }
}
