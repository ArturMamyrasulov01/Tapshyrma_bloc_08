import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';
import '../utils/styles/app_text_styles.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.whiteColor,
          size: 100,
        ),
        Text(
          text,
          style: AppTextStyles.textColor20,
        ),
      ],
    );
  }
}
