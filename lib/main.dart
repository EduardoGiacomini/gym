import 'package:flutter/material.dart';
import 'package:gym/design-system/tokens/colors.dart';
import 'package:gym/widgets/banner_card.dart';
import 'package:gym/widgets/avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Avatar(),
                  const SizedBox(height: 32),
                  Text(
                    'Ready to run?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      BannerCard(
                        emoji: '🦵',
                        title: 'Legs',
                        description: '5 exercises',
                        color: AppColors.blue,
                      ),
                      const SizedBox(width: 20),
                      BannerCard(
                        emoji: '🤌',
                        title: 'Chest',
                        description: '5 exercises',
                        color: AppColors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      BannerCard(
                        emoji: '‍🏋️‍♀️',
                        title: 'Back',
                        description: '6 exercises',
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 20),
                      BannerCard(
                        emoji: '🧅',
                        title: 'Deltoids',
                        description: '7 exercises',
                        color: AppColors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      BannerCard(
                        emoji: '‍💪',
                        title: 'Arms',
                        description: '6 exercises',
                        color: AppColors.purple,
                      ),
                      const SizedBox(width: 20),
                      BannerCard(
                        emoji: '🏃‍♂️',
                        title: 'Aerobic',
                        description: '60 minutes',
                        color: AppColors.pink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
