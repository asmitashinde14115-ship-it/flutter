import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../widgets/cards.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: AppTheme.borderGray,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x40000000),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: AppTheme.poppinsRegular14.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppTheme.textSecondary,
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: AppTheme.yellowAccent,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.tune,
                    color: AppTheme.black,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppTheme.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppTheme.borderGray,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x40000000),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: AppTheme.black,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          
          // Customer List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 100),
              children: const [
                CustomerCard(
                  name: 'Carlitta Pusso',
                  type1: 'Lora',
                  type2: 'Sheltie',
                  gender: 'Female',
                  petTag: 'Guinea Pig',
                  imageUrl: 'https://i.pravatar.cc/150?img=1',
                ),
                CustomerCard(
                  name: 'Carlitta Pusso',
                  type1: 'Lora',
                  type2: 'Sheltie',
                  gender: 'Female',
                  petTag: 'Dog',
                  imageUrl: 'https://i.pravatar.cc/150?img=2',
                ),
                CustomerCard(
                  name: 'Carlitta Pusso',
                  type1: 'Lora',
                  type2: 'Sheltie',
                  gender: 'Female',
                  petTag: 'Hamster',
                  imageUrl: 'https://i.pravatar.cc/150?img=3',
                ),
                CustomerCard(
                  name: 'Carlitta Pusso',
                  type1: 'Lora',
                  type2: 'Sheltie',
                  gender: 'Female',
                  petTag: 'Cat',
                  imageUrl: 'https://i.pravatar.cc/150?img=4',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}