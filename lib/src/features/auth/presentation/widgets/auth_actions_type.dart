part of '../../login_imports.dart';
class AuthActionsType extends StatefulWidget {
  final ValueChanged<int>? onTabChanged;
  final int initIndex;

  const AuthActionsType({
    super.key,
    this.onTabChanged,
    this.initIndex = 0,
  });

  @override
  State<AuthActionsType> createState() => _AuthActionsTypeState();
}

class _AuthActionsTypeState extends State<AuthActionsType> {
  int selectedIndex = 0;

  final List<String> tabTitles = ["Login", "Register"];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initIndex;
  }

  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    widget.onTabChanged?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p8),
        child: Row(
          children: List.generate(tabTitles.length, (index) {
            bool selected = selectedIndex == index;

            return Expanded(
              child: InkWell(
                splashColor: AppColors.transparent,
                onTap: () => _onTabTapped(index),
                child: Container(
                  height: AppSizes.h40,
                  decoration: BoxDecoration(
                    color: selected ? AppColors.primary : AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: CustomText(
                      tabTitles[index],
                      textStyle: TextStyle(
                        color: selected ? AppColors.white : AppColors.black,
                        fontSize: AppSizes.fs18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}