// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  static final _notification = FlutterLocalNotificationsPlugin();
  static Future popnotification({
    required String title,
    required String body,
    required String sound,
  }) async {
    _notification.show(0, title, body, await _notificationDetails());
  }

  static Future _notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        '',
        '',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }
}
