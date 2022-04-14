import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_logs/flutter_logs.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:superappsnusa/application/app/app.locator.dart';
import 'package:superappsnusa/application/app/nss_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterLogs.initLogs(
    logLevelsEnabled: [
      LogLevel.INFO,
      LogLevel.WARNING,
      LogLevel.ERROR,
      LogLevel.SEVERE
    ],
    directoryStructure: DirectoryStructure.FOR_DATE,
    timeStampFormat: TimeStampFormat.TIME_FORMAT_READABLE,
    logFileExtension: LogFileExtension.TXT,
    logTypesEnabled: ['device', 'network', 'errors', 'notification'],
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

  await initializeDateFormatting('id_ID', "");
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  setupLocator();

  runApp(NssApp());
}
