import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:superappsnusa/application/app/app.locator.dart';
import 'package:superappsnusa/application/app/nss_app.dart';
import 'package:superappsnusa/application/helpers/my_http_overrrides.dart';
import 'package:superappsnusa/flavors.dart';

Future main() async {
  F.appFlavor = Flavor.DEV;

  WidgetsFlutterBinding.ensureInitialized();

  await FlutterLogs.initLogs(
    logLevelsEnabled: [
      LogLevel.INFO,
      LogLevel.WARNING,
      LogLevel.ERROR,
      LogLevel.SEVERE,
    ],
    timeStampFormat: TimeStampFormat.TIME_FORMAT_READABLE,
    directoryStructure: DirectoryStructure.FOR_DATE,
    logTypesEnabled: ['device', 'network', 'errors', 'notification'],
    logFileExtension: LogFileExtension.TXT,
    logsWriteDirectoryName: 'MyLogs',
    logsExportDirectoryName: 'MyLogs/Exported',
    debugFileOperations: true,
    isDebuggable: true,
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent, // Android
      statusBarIconBrightness: Brightness.dark, // Android
      statusBarBrightness: Brightness.light, // iOS
    ),
  );

  // await initializeDateFormatting('id_ID', "");
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  setupLocator();

  HttpOverrides.global = MyHttpOverrides();

  runApp(const NssApp());
}
