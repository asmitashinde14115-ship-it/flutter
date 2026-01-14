import 'package:flutter/material.dart';
import '../common/theme.dart';

// This widget is modular and can be used if needed
// Currently the bottom navigation is built directly in main.dart
class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            _buildNavItem(
              icon: Icons.home_outlined,
              activeIcon: Icons.home,
              label: 'Home',
              index: 0,
            ),
            _buildNavItem(
              icon: Icons.people_outline,
              activeIcon: Icons.people,
              label: 'Sitter',
              index: 1,
            ),
            _buildNavItem(
              icon: Icons.calendar_today_outlined,
              activeIcon: Icons.calendar_today,
              label: 'Agenda',
              index: 2,
            ),
            _buildNavItem(
              icon: Icons.credit_card_outlined,
              activeIcon: Icons.credit_card,
              label: 'Earning',
              index: 3,
            ),
            _buildNavItem(
              icon: Icons.chat_bubble_outline,
              activeIcon: Icons.chat_bubble,
              label: 'Chats',
              index: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int index,
  }) {
    final isActive = currentIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
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
}