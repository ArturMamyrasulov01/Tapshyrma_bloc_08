import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    super.key,
    required this.size,
    required this.onPressed,
    required this.icon,
  });
  final void Function()? onPressed;
  final Size size;

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size.height * 0.03,
      backgroundColor: AppColors.darkBgButtonColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size.height * 0.04,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
