// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:security/core/api/api.dart' as _i10;
import 'package:security/core/api/api_consumer.dart' as _i3;
import 'package:security/core/api/dio_consumer.dart' as _i4;
import 'package:security/data/datasources/datasources.dart' as _i13;
import 'package:security/data/datasources/remote_datasource.dart' as _i9;
import 'package:security/data/datasources/session_datasource.dart' as _i14;
import 'package:security/data/repositories/get_storage_repository_impl.dart'
    as _i8;
import 'package:security/data/repositories/return_repository_impl.dart' as _i12;
import 'package:security/data/repositories/user_repository_impl.dart' as _i16;
import 'package:security/domain/repositories/domain_repositories.dart' as _i7;
import 'package:security/domain/repositories/user_repository.dart' as _i18;
import 'package:security/domain/usecases/get_forgot_password_remote_usecase.dart'
    as _i17;
import 'package:security/domain/usecases/get_login_remote_usecase.dart' as _i19;
import 'package:security/domain/usecases/get_return_awb_remote_usecase.dart'
    as _i20;
import 'package:security/domain/usecases/get_return_procurement_remote_usecase.dart'
    as _i21;
import 'package:security/domain/usecases/get_sign_up_remote_usecase.dart'
    as _i22;
import 'package:security/domain/usecases/session_usecase.dart' as _i23;
import 'package:security/domain/usecases/usecases.dart' as _i25;
import 'package:security/injectable_singleton_module.dart' as _i31;
import 'package:security/presentation/cubits/directionality/directionality_cubit.dart'
    as _i5;
import 'package:security/presentation/cubits/forgot_password/forgot_password_cubit.dart'
    as _i28;
import 'package:security/presentation/cubits/login/login_cubit.dart' as _i29;
import 'package:security/presentation/cubits/return/return_cubit.dart' as _i30;
import 'package:security/presentation/cubits/return_list/return_list_cubit.dart'
    as _i11;
import 'package:security/presentation/cubits/sign_up/sign_up_cubit.dart'
    as _i24;
import 'package:security/presentation/cubits/splash/splash_cubit.dart' as _i26;
import 'package:security/presentation/cubits/theme/theme_cubit.dart' as _i15;
import 'package:security/presentation/cubits/user_detail/user_detail_cubit.dart'
    as _i27;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableSingletonModule = _$InjectableSingletonModule();
    gh.lazySingleton<_i3.ApiConsumer>(() => _i4.DioConsumer());
    gh.factory<_i5.DirectionalityCubit>(() => _i5.DirectionalityCubit());
    gh.factory<_i6.GetStorage>(() => injectableSingletonModule.getStorage);
    gh.lazySingleton<_i7.GetStorageRepository>(
        () => _i8.GetStorageImpl(gh<_i6.GetStorage>()));
    gh.lazySingleton<_i9.RemoteDataSource>(
        () => _i9.RemoteDataSourceImpl(apiConsumer: gh<_i10.ApiConsumer>()));
    gh.factory<_i11.ReturnListCubit>(() => _i11.ReturnListCubit());
    gh.lazySingleton<_i7.ReturnRepository>(() => _i12.ReturnRepositoryImpl(
        remoteDataSource: gh<_i13.RemoteDataSource>()));
    gh.lazySingleton<_i14.SessionDataSource>(
        () => _i14.SessionDataSourceImpl(gh<_i7.GetStorageRepository>()));
    gh.factory<_i15.ThemeCubit>(() => _i15.ThemeCubit());
    gh.lazySingleton<_i7.UserRepository>(() =>
        _i16.UserRepositoryImpl(remoteDataSource: gh<_i13.RemoteDataSource>()));
    gh.lazySingleton<_i17.GetForgotPasswordRemoteUseCase>(
        () => _i17.GetForgotPasswordRemoteUseCase(gh<_i18.UserRepository>()));
    gh.lazySingleton<_i19.GetLoginRemoteUseCase>(
        () => _i19.GetLoginRemoteUseCase(gh<_i7.UserRepository>()));
    gh.lazySingleton<_i20.GetReturnAwbRemoteUseCase>(
        () => _i20.GetReturnAwbRemoteUseCase(gh<_i7.ReturnRepository>()));
    gh.lazySingleton<_i21.GetReturnProcurementRemoteUseCase>(() =>
        _i21.GetReturnProcurementRemoteUseCase(gh<_i7.ReturnRepository>()));
    gh.lazySingleton<_i22.GetSignUpRemoteUseCase>(
        () => _i22.GetSignUpRemoteUseCase(gh<_i18.UserRepository>()));
    gh.lazySingleton<_i23.Session>(
        () => _i23.SessionLocal(gh<_i14.SessionDataSource>()));
    gh.factory<_i24.SignUpCubit>(() => _i24.SignUpCubit(
        getSignUpRemoteUseCase: gh<_i25.GetSignUpRemoteUseCase>()));
    gh.factory<_i26.SplashCubit>(() => _i26.SplashCubit(gh<_i25.Session>()));
    gh.factory<_i27.UserDetailCubit>(
        () => _i27.UserDetailCubit(gh<_i25.Session>()));
    gh.factory<_i28.ForgotPasswordCubit>(() => _i28.ForgotPasswordCubit(
        getForgotPasswordRemoteUseCase:
            gh<_i25.GetForgotPasswordRemoteUseCase>()));
    gh.factory<_i29.LoginCubit>(() => _i29.LoginCubit(
          getLoginRemoteUseCase: gh<_i25.GetLoginRemoteUseCase>(),
          session: gh<_i25.Session>(),
        ));
    gh.factory<_i30.ReturnCubit>(() => _i30.ReturnCubit(
          getReturnAwbRemoteUseCase: gh<_i25.GetReturnAwbRemoteUseCase>(),
          getReturnProcurementRemoteUseCase:
              gh<_i25.GetReturnProcurementRemoteUseCase>(),
          session: gh<_i25.Session>(),
        ));
    return this;
  }
}

class _$InjectableSingletonModule extends _i31.InjectableSingletonModule {}
