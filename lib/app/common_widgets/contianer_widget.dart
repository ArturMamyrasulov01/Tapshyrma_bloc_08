import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.darkBgContainetColor,
      ),
      child: child,
    );
  }
}
