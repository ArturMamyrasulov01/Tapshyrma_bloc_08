import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_08/app/utils/colors/app_colors.dart';
import 'package:tapshyrma_bloc_08/my_app.dart';

import '../../common_widgets/contianer_widget.dart';

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
                    child: ContainerWidget(
                      child: Column(),
                    ),
                  ),
                  SizedBox(width: size.width * 0.05),
                  Expanded(
                    child: ContainerWidget(
                      child: Column(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Expanded(
              child: ContainerWidget(
                child: Column(),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ContainerWidget(
                      child: Column(),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Expanded(
                    child: ContainerWidget(
                      child: Column(),
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
