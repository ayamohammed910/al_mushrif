part of '../../login_imports.dart';

class AuthActionsType extends StatefulWidget {
  final ValueChanged<int>? onTabChanged;

  const AuthActionsType({super.key, this.onTabChanged});

  @override
  State<AuthActionsType> createState() => _AuthActionsTypeState();
}

class _AuthActionsTypeState extends State<AuthActionsType>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabTitles = ["Login", "Register"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTitles.length, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return; // avoid double calls
      widget.onTabChanged?.call(_tabController.index);
      setState(() {}); // rebuild for UI
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {}); // rebuild for UI

    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: List.generate(tabTitles.length, (index) {
            bool selected = _tabController.index == index;

            return Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () => _onTabTapped(index),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: selected ? Colors.red: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: CustomText(
                      tabTitles[index],
                      textStyle: TextStyle(
                        color: selected ? Colors.white : Colors.black,fontSize: 18,fontWeight: FontWeight.bold
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
