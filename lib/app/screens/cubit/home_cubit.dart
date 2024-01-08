import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import 'package:tapshyrma_bloc_08/app/enums/enums.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
          age: 30,
          weight: 60,
          currentHeightState: 130,
          maleSelected: AppColors.whiteColor,
          femaleSelected: AppColors.whiteColor,
        ));

  void enumMaleFemale(Gender gender) {
    switch (gender) {
      case Gender.male:
        emit(state.copyWith());

        break;
      case Gender.female:
        emit(state.copyWith(
            maleSelected: AppColors.textColor,
            femaleSelected: AppColors.whiteColor));
        break;
      default:
        null;
      // Gender.none;
    }
    // if (gender == Gender.male) {
    //   emit(state.copyWith(
    //       maleSelected: AppColors.activeColor,
    //       femaleSelected: AppColors.inactiveColor));
    // }
    // if (gender == Gender.female) {
    //   emit(state.copyWith(
    //       femaleSelected: AppColors.activeColor,
    //       maleSelected: AppColors.inactiveColor));
    // }
  }

  void sliderChange(double value) {
    emit(state.copyWith(currentHeightState: value));
  }

  void ageFunction(String ageMP) {
    if (ageMP == '-') {
      emit(state.copyWith(age: state.age! - 1));
    }
    if (ageMP == '+') {
      emit(state.copyWith(age: state.age! + 1));
    }
  }

  void weightFunction(String weight) {
    if (weight == "+") {
      emit(
        state.copyWith(weight: state.weight! + 1),
      );
    }
    if (weight == "-") {
      emit(
        state.copyWith(weight: state.weight! - 1),
      );
    }
  }
}
