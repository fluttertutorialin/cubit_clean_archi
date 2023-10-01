import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'return_state.dart';

import '../../../core/error/error.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/inputs/inputs.dart';
import '../../../domain/usecases/usecases.dart';

@injectable
class ReturnCubit extends Cubit<ReturnState> {
  final GetReturnAwbRemoteUseCase _getReturnAwbRemoteUseCase;
  final GetReturnProcurementRemoteUseCase _getReturnProcurementRemoteUseCase;
  final Session _session;

  ReturnCubit(
      {required GetReturnAwbRemoteUseCase getReturnAwbRemoteUseCase,
      required GetReturnProcurementRemoteUseCase
          getReturnProcurementRemoteUseCase,
      required Session session})
      : _getReturnAwbRemoteUseCase = getReturnAwbRemoteUseCase,
        _getReturnProcurementRemoteUseCase = getReturnProcurementRemoteUseCase,
        _session = session,
        super(const ReturnState.initial());

  bool isLoading = false;

  Future<void> returnAwbGetData({required String imeiNumber}) async {
    emit(const ReturnState.loading());
    isLoading = true;

    Either<Failure, ReturnEntity> response = await _getReturnAwbRemoteUseCase(
        ReturnAwbInput(
            awbNumber: imeiNumber,
            userId: int.parse(_session.userIdReadSession()!)));
    isLoading = false;
    emit(response.fold((exception) => ReturnState.error(exception.message),
        (response) => ReturnState.returnSuccess(response)));
  }

  Future<void> returnProcurementGetData({required String imeiNumber}) async {
    emit(const ReturnState.loading());
    isLoading = true;

    Either<Failure, ReturnEntity> response =
        await _getReturnProcurementRemoteUseCase(ReturnProcurementInput(
            imei: imeiNumber,
            physicalCheck: 1,
            userId: int.parse(_session.userIdReadSession()!)));

    isLoading = false;
    emit(response.fold((exception) => ReturnState.error(exception.message),
        (response) => ReturnState.returnSuccess(response)));
  }
}
