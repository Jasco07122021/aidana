import 'package:aidana/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt get locator => GetIt.instance;

@InjectableInit()
void configureDependencies() => locator.init();
