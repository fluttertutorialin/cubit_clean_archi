import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'return_list_cubit.freezed.dart';

@freezed
class ReturnListState with _$ReturnListState {
  const factory ReturnListState({
    @Default(false) bool loading,
    required List<String> returnList,
    @Default('') String error,
  }) = _ReturnListState;
}

@injectable
class ReturnListCubit extends Cubit<ReturnListState> {
  ReturnListCubit() : super(const ReturnListState(returnList: []));

  Future<void> returnListGetData() async {
    emit(state.copyWith(loading: true));
    emit(state.copyWith(returnList: ['1', '2', '3', '4']));
    emit(state.copyWith(loading: false));
  }

  /*Future<void> paginationReturnLoad({int limit = 10}) async {
    emit(state.copyWith(returnList: [...state.returnList, ...apiResult]));
  }*/
}

/*
@freezed
class ReceiveListState with _$ReturnListState {
  const factory ReceiveListState.initial() = _InitialState;
  const factory ReceiveListState.loading() = _LoadingState;
  const factory ReceiveListState.fetched({required String response}) =_FetchedState;
  const factory ReceiveListState.error(String error) = _ErrorState;
}

  emit(const ReceiveListState.loading());
  emit(ReceiveListState.error(error.toString())),
  emit(ReceiveListState.fetched(response: response)),
*/

/*
@freezed
class CartState with _$CartState {
  const factory CartState.initial(List<Product> products) = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.success(List<Product> products) = _Success;
  const factory CartState.error(String error, List<Product> products) = _Error;
}

class CartCubit extends Cubit<CartState> {
  CartCubit({required this.products}) : super(CartState.initial(products));
  List<Product> products;
}
*/
