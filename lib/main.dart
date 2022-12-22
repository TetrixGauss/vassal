import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:paymongo_sdk/paymongo_sdk.dart';
import 'package:vassal/dependency_injection/services/repositories_service.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';
import 'package:vassal/routes/route_generator.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_theme.dart';
import 'package:vassal/utils/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/utils/firebase_notification.dart';
import 'package:permission_handler/permission_handler.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

String deviceID = "";
String firebaseToken = "";

Future<void> main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await EasyLocalization.ensureInitialized();
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  FirebaseNotification _firebaseNotification = FirebaseNotification(userRepository: getIt<RepositoriesService>().userRepository);
  _firebaseNotification.initFirebase();
  firebaseToken = await _firebaseNotification.getToken;
  tz.initializeTimeZones();
  deviceID =  (await DeviceInfo.getInfo) ?? "171";
  log(deviceID);

  runApp(EasyLocalization(
      supportedLocales: const [Locale("el", "GR"), Locale('en', 'US')],
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  addLang(BuildContext context) async {
    SharedPreferences.getInstance().then((instance) {
      if (instance.getBool("language") == null) {
        context.setLocale(const Locale('en', 'US'));
        instance.setBool("language", true);
      }
    } );
  }


  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((instance) async {
      instance.setString("firebase_token", firebaseToken);
      instance.setString("device_id", deviceID);
      instance.setBool("new_notification", false);
    });
  }

  @override
  Widget build(BuildContext context) {
    addLang(context);
    // log(loggedIn.toString());
    return MaterialApp(
      navigatorKey: navigatorKey,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: appTheme(context),
      onGenerateRoute: RouteGenerator.geneRateRoute,
      initialRoute: Routes.splashScreen,
    );
  }
}
