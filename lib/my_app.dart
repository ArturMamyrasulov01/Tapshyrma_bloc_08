import 'package:flutter/material.dart';

import 'app/screens/pages/home_page.dart';
import 'app/utils/colors/app_colors.dart';
import 'app/utils/styles/app_text_styles.dart';
import 'app/utils/text/app_text.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
}

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          elevation: 0.0,
          backgroundColor: AppColors.darkBgColor,
          centerTitle: true,
          title: const Text(
            AppTexts.title,
            style: AppTextStyles.white20bold,
          ),
        );
}
