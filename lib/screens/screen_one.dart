import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../widgets/cards.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int _currentTimeFilter = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterPill('This Week', 0),
                const SizedBox(width: 8),
                _buildFilterPill('This Month', 1),
                const SizedBox(width: 8),
                _buildFilterPill('This Year', 2),
                const SizedBox(width: 8),
                _buildFilterPill('All Time', 3),
              ],
            ),
          ),
        ),
        
        const SizedBox(height: 16),
        
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Pet Sitting Performance',
                      style: AppTheme.poppinsSemiBold18,
                    ),
                    const SizedBox(height: 16),
                    
                    Row(
                      children: [
                        Expanded(
                          child: _buildPerformanceCard(
                            'Views',
                            '999,000',
                            _buildEyeIcon(),
                            AppTheme.primaryBlue,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildPerformanceCard(
                            'Likes',
                            '999,000',
                            _buildHeartIcon(),
                            const Color(0xFFFF0000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: _buildPerformanceCard(
                            'Bookings',
                            '999,000',
                            _buildCalendarIcon(),
                            AppTheme.primaryBlue,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildPerformanceCard(
                            'Earnings',
                            '999,000',
                            _buildWalletIcon(),
                            AppTheme.activeGreen,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildDot(true),
                        const SizedBox(width: 8),
                        _buildDot(false),
                      ],
                    ),
                    
                    const SizedBox(height: 24),
                    
                    const Text(
                      'Overall Ratings',
                      style: AppTheme.poppinsSemiBold18,
                    ),
                    const SizedBox(height: 16),
                    
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppTheme.ratingBoxBg,
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                '4.8',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.black,
                                  height: 1.2,
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => const Padding(
                                    padding: EdgeInsets.only(left: 2),
                                    child: Icon(
                                      Icons.star,
                                      color: AppTheme.primaryBlue,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: AppTheme.borderGray.withOpacity(0.4),
                          ),
                          const SizedBox(height: 12),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF999999),
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    const Text(
                      'Recent Reviews',
                      style: AppTheme.poppinsSemiBold18,
                    ),
                    const SizedBox(height: 16),
                    
                    const ReviewCard(
                      name: 'Avantika Agarwal',
                      daysAgo: '4 days ago',
                      rating: 5,
                      review: 'Michael is amazing with pets! He took exceptional care of my two cats while I was away. He took exceptional care of my two cats while I was away.',
                    ),
                    
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterPill(String text, int index) {
    final isSelected = _currentTimeFilter == index;
    return GestureDetector(
      onTap: () => setState(() => _currentTimeFilter = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppTheme.black.withOpacity(0.3) : AppTheme.borderGray,
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: AppTheme.poppinsSemiBold12.copyWith(color: AppTheme.black),
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? AppTheme.black : AppTheme.iconGray,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildPerformanceCard(String title, String value, Widget icon, Color titleColor) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.borderGray, width: 1),
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
            style: AppTheme.poppinsMedium14.copyWith(color: titleColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.black,
                  height: 1.2,
                ),
              ),
              icon,
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEyeIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: CustomPaint(
          size: const Size(28, 18),
          painter: EyeIconPainter(),
        ),
      ),
    );
  }

  Widget _buildHeartIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFFF0000).withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.favorite,
        color: Color(0xFFFF0000),
        size: 22,
      ),
    );
  }

  Widget _buildCalendarIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppTheme.primaryBlue.withOpacity(0.15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.event_note,
        color: AppTheme.primaryBlue,
        size: 22,
      ),
    );
  }

  Widget _buildWalletIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppTheme.activeGreen.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: AppTheme.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppTheme.activeGreen, width: 6),
          ),
        ),
      ),
    );
  }
}

class EyeIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF5A94EC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(
      size.width / 2, 0,
      size.width, size.height / 2,
    );
    path.quadraticBezierTo(
      size.width / 2, size.height,
      0, size.height / 2,
    );
    
    canvas.drawPath(path, paint);

    final fillPaint = Paint()
      ..color = const Color(0xFF5A94EC)
      ..style = PaintingStyle.fill;
    
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      4,
      fillPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}