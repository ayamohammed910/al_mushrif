part of '../../categories_imports.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        title: Image.asset(
          'assets/png/logo.png',
          height: 100,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SearchBar(),
          CategoriesSection()

        ],
      ),
    );
  }
}
