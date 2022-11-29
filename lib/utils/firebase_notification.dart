import 'dart:convert';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vassal/dependency_injection/services/repositories_service.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;

class FirebaseNotification {
  final UserRepository _userRepository;

  FirebaseNotification({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<void> initFirebase(BuildContext context) async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log("message.toString()");
      log(message.toString());
      log(message.data.toString());
      log(message.notification!.body.toString());

      try {
        log(message.notification!.body.toString());
      } catch (e) {
        log(e.toString());
      }
      log(message.sentTime.toString());

      try{
        if ((await _userRepository.getCount()) > 0) {
          if (message.data['type'] == 'notification') {
            localNotifications.showNotification(message.notification!.title!,
                message.notification!.body!, "notification");
          } else if (message.data['type'] == 'message') {}
        }
      } catch (e) {
        log("Firebase Foreground: $e");
      }
    });

    FirebaseMessaging.onMessageOpenedApp
        .listen((RemoteMessage message) async {});
  }

  Future<String> get getToken async {
    String? token = await FirebaseMessaging.instance.getToken();
    if (token == null) token = '';
    log("Firebase Token: $token");
    return token;
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    setupLocator();
  } catch (e) {
    log("_firebaseMessagingBackgroundHandler: $e");
  }
  await EasyLocalization.ensureInitialized();
  tz.initializeTimeZones();
  UserRepository _userRepository = getIt<RepositoriesService>().userRepository;
  try {
    if ((await _userRepository.getCount()) > 0) {
      if (message.data['type'] == 'message') {}
    }
  } catch (e) {
    log("Firebase Background: $e");
  }
}
