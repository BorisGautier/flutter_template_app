// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars

// Regenerate with: dart run build_runner build --delete-conflicting-outputs

import 'package:chopper/chopper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/network/network_info.dart';
import '../core/services/notification_service.dart';
import '../features/example/data/datasources/example_remote_datasource.dart';
import '../features/example/data/repositories/example_repository_impl.dart';
import '../features/example/domain/repositories/example_repository.dart';
import '../features/example/domain/usecases/get_examples_usecase.dart';
import '../features/example/presentation/bloc/example_bloc.dart';
import 'register_module.dart';

extension GetItInjectableX on GetIt {
  GetIt init({String? environment, EnvironmentFilter? environmentFilter}) {
    final gh = GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<FlutterSecureStorage>(() => registerModule.secureStorage);
    gh.lazySingleton<ChopperClient>(() => registerModule.chopperClient);
    gh.lazySingleton<Logger>(() => registerModule.logger);
    gh.lazySingleton<InternetConnectionChecker>(() => registerModule.connectionChecker);
    gh.factoryAsync<SharedPreferences>(() => registerModule.prefs);
    gh.lazySingleton<NetworkInfo>(() => NetworkInfoImpl(gh<InternetConnectionChecker>()));
    gh.lazySingleton<NotificationService>(() => NotificationService());
    gh.lazySingleton<ExampleRemoteDataSource>(() => ExampleRemoteDataSource());
    gh.lazySingleton<ExampleRepository>(
      () => ExampleRepositoryImpl(gh<ExampleRemoteDataSource>(), gh<NetworkInfo>()),
    );
    gh.lazySingleton<GetExamplesUseCase>(() => GetExamplesUseCase(gh<ExampleRepository>()));
    gh.factory<ExampleBloc>(() => ExampleBloc(gh<GetExamplesUseCase>()));
    return this;
  }
}

class _$RegisterModule extends RegisterModule {}
