import 'package:aidana/di/injector.dart';
import 'package:aidana/my_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());

  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorColor = CupertinoColors.white
    ..textColor = CupertinoColors.black
    ..userInteractions = false
    ..maskType = EasyLoadingMaskType.clear
    ..backgroundColor = CupertinoColors.systemGrey4
    ..indicatorWidget = const CircularProgressIndicator.adaptive();
}
