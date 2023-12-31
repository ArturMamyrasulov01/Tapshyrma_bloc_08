import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tapshyrma_bloc_08/app/utils/colors/app_colors.dart';
import 'package:tapshyrma_bloc_08/app/utils/styles/app_text_styles.dart';
import 'package:tapshyrma_bloc_08/app/utils/text/app_text.dart';
import 'package:tapshyrma_bloc_08/my_app.dart';

import '../../common_widgets/contianer_widget.dart';
import '../../common_widgets/icon_and_text_widget.dart';
import '../../common_widgets/text_state_button_widget.dart';
import '../cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double sliderValue = 180;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBgColor,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.01,
          vertical: size.height * 0.02,
        ),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            final homeCubit = context.read<HomeCubit>();
            return Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        child: ContainerWidget(
                          child: IconAndTextWidget(
                            icon: Icons.male,
                            text: AppTexts.male,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.05),
                      const Expanded(
                        child: ContainerWidget(
                          child: IconAndTextWidget(
                            icon: Icons.female,
                            text: AppTexts.female,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Expanded(
                  child: ContainerWidget(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppTexts.height,
                          style: AppTextStyles.textColor20,
                        ),
                        Text(
                          "${state.currentHeightState!.toStringAsFixed(0)} cm",
                          style: AppTextStyles.white45,
                        ),
                        Slider(
                          max: 200,
                          value: state.currentHeightState!,
                          onChanged: (double userValue) {
                            homeCubit.sliderChange(userValue);
                          },
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ContainerWidget(
                          child: TextStateButtonWidget(
                            size: size,
                            onPressedMinus: () {
                              homeCubit.weightFunction("-");
                            },
                            onPressedPilus: () {
                              homeCubit.weightFunction("+");
                            },
                            state: state.weight!,
                            text: AppTexts.weight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Expanded(
                        child: ContainerWidget(
                          child: TextStateButtonWidget(
                            size: size,
                            onPressedMinus: () {
                              homeCubit.ageFunction("-");
                            },
                            onPressedPilus: () {
                              homeCubit.ageFunction("+");
                            },
                            state: state.age!,
                            text: AppTexts.age,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
