import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../widgets/cards.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ServiceCard(
            title: 'Day Care',
            subtitle: 'Pet day care facility\nShort stays up to 12 hrs.',
            isActive: true,
            icon: Icons.pets,
          ),
          ServiceCard(
            title: 'Night Stay',
            subtitle: 'Pet night stay facility\nLonger overnight stays',
            isActive: false,
            icon: Icons.nightlight_round,
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}