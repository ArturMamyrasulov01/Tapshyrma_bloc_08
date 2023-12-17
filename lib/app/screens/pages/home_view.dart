import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_08/app/utils/colors/app_colors.dart';
import 'package:tapshyrma_bloc_08/my_app.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBgColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.01,
          vertical: size.height * 0.02,
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.darkBgContainetColor,
                      ),
                    ),
                  ),
                  SizedBox(width: size.width * 0.05),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkBgContainetColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: size.height * 0.05),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.darkBgContainetColor,
                ),
              ),
            ),
            SizedBox(width: size.height * 0.1),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.darkBgContainetColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: AppColors.darkBgContainetColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
