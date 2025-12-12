part of '../../../categories_imports.dart';

class FilterSideMenu extends StatefulWidget {
  const FilterSideMenu({super.key});

  @override
  FilterSideMenuState createState() => FilterSideMenuState();
}

class FilterSideMenuState extends State<FilterSideMenu> {

  final TextEditingController _searchController = TextEditingController();

  RangeValues _currentRange = const RangeValues(100, 800);

  double price = 500;

  List<String> brands = [
    "Khairat Halab",
    "Atayeb Alreef",
    "Namlia",
    "Berdawni",
    "Dobelb Chocolate",
    "Lavina",
    "Aghati Sweets",
    "Choco Lake",
    "BAKERY",
    "MODERN BAKERY",
    "GOLDEN SPIKE",
    "ELITE",
    "AL ALALI",
  ];

  List<String> colors = [
    "Icy Blue",
    "Powder Blue",
    "Sky Blue",
    "Blue Bell",
    "French Navy",
    "Navy Blue",
    "Prussian Blue",
    "Steel Blue",
    "Periwinkle",
    "Royal Blue",
    "Blue Iris",
  ];

  Set<String> selectedBrands = {};
  Set<String> selectedColors = {};

  bool brandExpanded = false;
  bool colorExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.all(AppSizes.h16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: AppSizes.h10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Filter",
                        hintStyle: TextStyle(
                          fontSize: AppSizes.fs18,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primary,
                            width: AppSizes.w4,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear, color: AppColors.black),
                          onPressed: () {
                            setState(() {
                              _searchController.clear();
                            });
                          },
                        ),
                      ),
                      controller: _searchController,
                    ),

                    SizedBox(height: AppSizes.h20),

                    CustomText(
                      "Price Range",
                      textStyle: TextStyle(
                        fontSize: AppSizes.fs16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    RangeSlider(
                      values: _currentRange,
                      min: 0,
                      max: 1229,
                      divisions: 100,
                      activeColor: AppColors.primary,
                      inactiveColor: Colors.grey.shade300,
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRange = values;
                        });
                      },
                    ),

                    const SizedBox(height: AppSizes.h10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "${_currentRange.start.toInt()}",
                          textStyle: const TextStyle(fontSize: AppSizes.fs16),
                        ),
                        CustomText(
                          "${_currentRange.end.toInt()}",
                          textStyle: const TextStyle(fontSize: AppSizes.fs16),
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.h24),

                    CheckboxList(
                      title: "Brand",
                      items: brands,
                      selectedColor: AppColors.primary,
                      unselectedColor: AppColors.black,
                    ),

                    CheckboxList(
                      title: "Color",
                      items: colors,
                      selectedColor: AppColors.primary,
                      unselectedColor: AppColors.black,
                    ),

                    SizedBox(height: AppSizes.h20),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: CustomButton(text: "Confirm", onPressed: () {}),
                ),
                SizedBox(width: AppSizes.w32),
                CustomText(
                  "Reset",
                  textStyle: TextStyle(
                    fontSize: AppSizes.fs20,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
