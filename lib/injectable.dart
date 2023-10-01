
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<GetIt> configure() async => getIt.init();

/*
const dev = Environment('dev'); // 개발
const prod = Environment('prod'); // 실제 배포

@InjectableInit()
Future<void> configureDependencies() => getIt.init(environment: Environment.prod);
*/

/*
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);
*/