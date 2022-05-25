
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:streaming_app/generated/intl/messages_all.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies() => $initGetIt(getIt);