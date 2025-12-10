part of '../../../categories_imports.dart';

class CategoryTypePage extends StatelessWidget {
  final List<CategoryModel> products;
  final List<CategoryItemModel> demoItems = [
    CategoryItemModel(
      title: "Ente ainment",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
    CategoryItemModel(
      title: "Audio Devices",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
    CategoryItemModel(
      title: "Wearables",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
    CategoryItemModel(
      title: "Office Electronics",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
    CategoryItemModel(
      title: "Gaming",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
    CategoryItemModel(
      title: "Cameras Photograph",
      imagePath: "assets/png/forget_image.png",
      backgroundColor: const Color(0xfffde8ec),
    ),
  ];
  CategoryTypePage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScafoldBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Center(
          child: CustomText(
            "Products",
            textStyle: const TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/svg/filter_icon.svg",
              width: AppSizes.w24,
              height: AppSizes.h24,
            ),
            onPressed: () => _openFilter(context),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: AppSizes.h20),
          CategoryOptions(items: demoItems),
          Expanded(child: CategoryGridView(categoryModels: products)),
        ],
      ),
      floatingActionButton: SizedBox(
        width: AppSizes.w70,
        height: AppSizes.h70,
        child: FloatingActionButton(
          backgroundColor: AppColors.primary,
          shape: const CircleBorder(),
          child: SvgPicture.asset(
            "assets/svg/cart.svg",
            width: AppSizes.w32,
            height: AppSizes.h32,
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }

  void _openFilter(BuildContext context) {
       showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Filter",
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Material(
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.75,
              height: MediaQuery.sizeOf(context).height,
              child: FilterSideMenu(),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ).animate(anim),
          child: child,
        );
      },
    );
  }
}
