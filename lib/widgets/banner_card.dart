import 'package:flutter/material.dart';
import 'package:gym/design-system/tokens/colors.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
    required this.color,
    required this.emoji,
    required this.title,
    required this.description,
  });

  final Color color;
  final String emoji;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(0),
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(emoji, style: const TextStyle(fontSize: 40)),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
