import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common/theme.dart';
import 'screens/screen_one.dart';
import 'screens/screen_two.dart';
import 'screens/screen_three.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Sitter App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MainNavigator(),
    );
  }
}

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedBottomIndex = 1;
  int _selectedTopTabIndex = 0;

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedBottomIndex = index;
    });
  }

  void _onTopTabChanged(int index) {
    setState(() {
      _selectedTopTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedBottomIndex == 1
          ? _buildSitterScreen()
          : Center(
              child: Text(
                _getScreenName(_selectedBottomIndex),
                style: AppTheme.poppinsSemiBold20,
              ),
            ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppTheme.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x40000000),
              blurRadius: 8.7,
              spreadRadius: -3,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomNavItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home,
                label: 'Home',
                index: 0,
              ),
              _buildBottomNavItem(
                icon: Icons.people_outline,
                activeIcon: Icons.people,
                label: 'Sitter',
                index: 1,
              ),
              _buildBottomNavItem(
                icon: Icons.calendar_today_outlined,
                activeIcon: Icons.calendar_today,
                label: 'Agenda',
                index: 2,
              ),
              _buildBottomNavItem(
                icon: Icons.credit_card_outlined,
                activeIcon: Icons.credit_card,
                label: 'Earning',
                index: 3,
              ),
              _buildBottomNavItem(
                icon: Icons.chat_bubble_outline,
                activeIcon: Icons.chat_bubble,
                label: 'Chats',
                index: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSitterScreen() {
    Widget currentScreen;
    
    switch (_selectedTopTabIndex) {
      case 0:
        currentScreen = const ScreenOne();
        break;
      case 1:
        currentScreen = const ScreenTwo();
        break;
      case 2:
        currentScreen = const ScreenThree();
        break;
      default:
        currentScreen = const ScreenOne();
    }

    return Scaffold(
      backgroundColor: AppTheme.primaryBlue,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(height: 4),
            
            // App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 40),
                  
                  Text(
                    _selectedTopTabIndex == 0 ? 'Pet Sitter' : 'Sitter',
                    style: AppTheme.poppinsSemiBold20.copyWith(
                      color: AppTheme.white,
                    ),
                  ),
                  
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: AppTheme.yellowAccent,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppTheme.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Tab Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: AppTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    _buildTopTab('PawPrints', 0),
                    _buildTopTab('Services', 1),
                    _buildTopTab('Customers', 2),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            Expanded(child: currentScreen),
          ],
        ),
      ),
    );
  }

  Widget _buildTopTab(String text, int index) {
    final isSelected = _selectedTopTabIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => _onTopTabChanged(index),
        child: Container(
          margin: const EdgeInsets.all(4),
          height: 40,
          decoration: BoxDecoration(
            color: isSelected ? AppTheme.yellowAccent : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTheme.poppinsSemiBold12.copyWith(
              color: AppTheme.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int index,
  }) {
    final isActive = _selectedBottomIndex == index;
    return GestureDetector(
      onTap: () => _onBottomNavTapped(index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              child: Icon(
                isActive ? activeIcon : icon,
                color: isActive ? AppTheme.black : AppTheme.iconGray,
                size: 24,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTheme.poppinsRegular12.copyWith(
                color: isActive ? AppTheme.black : AppTheme.iconGray,
                fontSize: 11,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              height: 3,
              width: 24,
              decoration: BoxDecoration(
                color: isActive ? AppTheme.black : Colors.transparent,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getScreenName(int index) {
    switch (index) {
      case 0:
        return 'Home Screen';
      case 2:
        return 'Agenda Screen';
      case 3:
        return 'Earning Screen';
      case 4:
        return 'Chats Screen';
      default:
        return '';
    }
  }
}

