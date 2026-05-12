// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars

// Regenerate with: dart run build_runner build --delete-conflicting-outputs

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'register_module.dart';

extension GetItInjectableX on GetIt {
  GetIt init({
    String? environment,
    EnvironmentFilter? environmentFilter,
  }) {
    final gh = GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton(() => registerModule.secureStorage);
    gh.lazySingleton(() => registerModule.chopperClient);
    gh.lazySingleton(() => registerModule.logger);
    gh.lazySingleton(() => registerModule.connectionChecker);
    gh.factoryAsync(() => registerModule.prefs);
    return this;
  }
}

class _$RegisterModule extends RegisterModule {}
