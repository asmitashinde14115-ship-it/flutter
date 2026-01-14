import 'package:flutter/material.dart';
import '../common/theme.dart';

class PerformanceCard extends StatelessWidget {
  final String title;
  final String value;
  final Widget icon;
  final Color titleColor;

  const PerformanceCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTheme.poppinsMedium14.copyWith(
              color: titleColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.black,
                    height: 1.2,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              icon,
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isActive;
  final IconData icon;

  const ServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isActive,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
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
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppTheme.yellowAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 32,
              color: AppTheme.black,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTheme.poppinsSemiBold16.copyWith(
                    color: AppTheme.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: AppTheme.poppinsRegular12.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: isActive ? AppTheme.activeGreen : AppTheme.inactiveRed,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              isActive ? 'Active' : 'Inactive',
              style: AppTheme.poppinsSemiBold12.copyWith(
                color: AppTheme.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerCard extends StatelessWidget {
  final String name;
  final String type1;
  final String type2;
  final String gender;
  final String petTag;
  final String imageUrl;

  const CustomerCard({
    super.key,
    required this.name,
    required this.type1,
    required this.type2,
    required this.gender,
    required this.petTag,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
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
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTheme.poppinsSemiBold16.copyWith(
                    color: AppTheme.black,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      type1,
                      style: AppTheme.poppinsRegular12.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      type2,
                      style: AppTheme.poppinsRegular12.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  gender,
                  style: AppTheme.poppinsRegular12.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppTheme.textSecondary.withOpacity(0.3),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              petTag,
              style: AppTheme.poppinsMedium12.copyWith(
                color: AppTheme.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String daysAgo;
  final double rating;
  final String review;

  const ReviewCard({
    super.key,
    required this.name,
    required this.daysAgo,
    required this.rating,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE0E0E0),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: AppTheme.poppinsSemiBold14.copyWith(
                        color: AppTheme.black,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: List.generate(
                        5,
                        (index) => const Icon(
                          Icons.star,
                          size: 14,
                          color: AppTheme.starYellow,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.pinkBorder, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  daysAgo,
                  style: AppTheme.poppinsRegular12.copyWith(
                    color: AppTheme.pinkBorder,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            review,
            style: AppTheme.poppinsRegular12.copyWith(
              color: AppTheme.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}