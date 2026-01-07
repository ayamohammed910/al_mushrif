part of '../../login_imports.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int _currentTab = 0;

  void _onTabChanged(int index) {
    setState(() => _currentTab = index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthCubit(),
      child: Scaffold(
        backgroundColor: AppColors.ScafoldBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(AppSizes.p20),
            child: Column(
              children: [
                if (_currentTab == 0) LoginBody(onTabChanged: _onTabChanged),
                if (_currentTab == 1) RegisterBody(onTabChanged: _onTabChanged),
                SizedBox(height: AppSizes.h40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}