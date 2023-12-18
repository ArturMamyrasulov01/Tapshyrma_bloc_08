import 'package:flutter/material.dart';

import '../utils/styles/app_text_styles.dart';
import 'circle_button_widdet.dart';

class TextStateButtonWidget extends StatelessWidget {
  const TextStateButtonWidget({
    super.key,
    required this.size,
    required this.onPressedMinus,
    required this.onPressedPilus,
    required this.state,
    required this.text,
  });
  final String text;
  final int state;
  final void Function()? onPressedMinus;
  final void Function()? onPressedPilus;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyles.textColor20,
        ),
        Text(
          state.toString(),
          style: AppTextStyles.white45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleButtonWidget(
              size: size,
              onPressed: onPressedMinus,
              icon: Icons.remove,
            ),
            CircleButtonWidget(
              size: size,
              onPressed: onPressedPilus,
              icon: Icons.add,
            ),
          ],
        ),
      ],
    );
  }
}
