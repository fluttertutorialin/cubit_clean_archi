import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'directionality_state.dart';

@injectable
class DirectionalityCubit extends Cubit<DirectionalityState> {
  DirectionalityCubit()
      : super(const DirectionalityState(TextDirection.ltr, true));

  Future<void> setDirectionality(TextDirection direction) async {
    bool isLtr = (direction == TextDirection.ltr) ? true : false;
    emit(DirectionalityState(direction, isLtr));
  }

  void switchDirectionality() {
    bool isLtr = (state.direction == TextDirection.ltr) ? true : false;
    TextDirection direction = isLtr ? TextDirection.rtl : TextDirection.ltr;
    emit(DirectionalityState(direction, isLtr));
  }
}
