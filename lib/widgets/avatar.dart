import 'package:flutter/widgets.dart';
import 'package:gym/design-system/tokens/colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'lib/design-system/assets/avatar.png',
          width: 56,
          height: 56,
        ),
        const SizedBox(width: 16),
        Text(
          'Good morning 👋',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.gray,
          ),
        )
      ],
    );
  }
}
