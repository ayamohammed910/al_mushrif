part of '../../login_imports.dart';

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody> {
  bool isLoginSelected = false;
  int _currentTab = 0;

  void _onTabChanged(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
                _currentTab == 0
                  ? LoginBody(onTabChanged: _onTabChanged)
                  : RegisterBody(onTabChanged: _onTabChanged),


              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
