import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ViewModel<S> extends Cubit<S> {
  ViewModel(super.state);

  set state(S value) {
    emit(value);
  }

  void updateState() {
    state = state;
  }

  @override
  void onChange(Change<S> change) {
    super.onChange(change);
  }
}
