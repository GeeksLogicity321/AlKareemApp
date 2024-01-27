import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> handelBackgroundNotification(RemoteMessage message) async {
  print(
      'Body:  ${message.notification != null ? message.notification!.body ?? '' : ''}');
  print(
      'payload:  ${message.notification != null ? message.notification!.title ?? '' : ''}');
  print(
      'bodyLocKey:  ${message.notification != null ? message.notification!.bodyLocKey ?? '' : ''}');
}

class FirebaseNotifications {
  static Future<void> initialize() async {
    await Firebase.initializeApp();
    FirebaseMessaging.instance.requestPermission();
    // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    //     FlutterLocalNotificationsPlugin();

    //   const AndroidNotificationDetails androidPlatformChannelSpecifics =
    //       AndroidNotificationDetails(
    //     'your_channel_id', // Replace with your unique channel ID
    //     'your_channel_name', // Replace with your desired channel name
    //     channelDescription:
    //         'Your channel description', // Optional channel description
    //     importance: Importance.max, // Importance of the notification
    //     priority: Priority.high, // Priority of the notification
    //     playSound: true, // Play a sound when the notification is displayed
    //     enableVibration:
    //         true, // Vibrate the device when the notification is displayed
    //     ticker:
    //         'ticker', // Ticker text displayed in the notification tray while it's waiting to be shown
    //     visibility: NotificationVisibility
    //         .public, // Visibility of the notification on the lockscreen
    //   );

    //   const AndroidInitializationSettings initializationSettingsAndroid =
    //       AndroidInitializationSettings(
    //           'ic_launcher'); // Replace with your app icon

    //   const InitializationSettings initializationSettings =
    //       InitializationSettings(android: initializationSettingsAndroid);

    //   await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    //   FirebaseMessaging.onBackgroundMessage(
    //       (message) => handelBackgroundNotification(message));
  }

  // Request notification permissions
  static Future<bool> requestPermissions() async {
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  // // Subscribe to topics
  // static Future<void> subscribeToTopic(String topic) async {
  //   await FirebaseMessaging.instance.subscribeToTopic(topic);
  // }

  // // Unsubscribe from topics
  // static Future<void> unsubscribeFromTopic(String topic) async {
  //   await FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  // }

  // Configure background message handling
  static Future<void> configureBackgroundMessaging(
      {required BackgroundMessageHandler onMessage}) async {
    FirebaseMessaging.onBackgroundMessage(onMessage);
  }

  static Future<String?> getFCMTocken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  // Display a local notification
  // static Future<void> showNotification({
  //   required String title,
  //   required String body,
  //   String? payload,
  // }) async {
  //   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //       FlutterLocalNotificationsPlugin();

  //   // Android-specific notification details
  //   const AndroidNotificationDetails androidPlatformChannelSpecifics =
  //       AndroidNotificationDetails(
  //     'your_channel_id', // Replace with your unique channel ID
  //     'your_channel_name', // Replace with your desired channel name
  //     channelDescription:
  //         'Your channel description', // Optional channel description
  //     importance: Importance.max, // Importance of the notification
  //     priority: Priority.high, // Priority of the notification
  //     ticker:
  //         'ticker', // Ticker text displayed in the notification tray while it's waiting to be shown
  //     styleInformation: DefaultStyleInformation(true, true),
  //   );

  //   // iOS-specific notification details
  //   const DarwinNotificationDetails iosPlatformChannelSpecifics =
  //       DarwinNotificationDetails(
  //     presentAlert: true,
  //     presentBadge: true,
  //     presentSound: true,
  //   );

  //   const NotificationDetails platformChannelSpecifics = NotificationDetails(
  //     android: androidPlatformChannelSpecifics,
  //     iOS: iosPlatformChannelSpecifics,
  //   );

  //   await flutterLocalNotificationsPlugin.show(
  //     0, // Notification ID (unique for each notification)
  //     title,
  //     body,
  //     platformChannelSpecifics,
  //     payload:
  //         payload, // Optional data to be passed to the app when the notification is tapped
  //   );
  // }

  // // Handle incoming FCM messages
  // static Future<void> onMessage(RemoteMessage message) async {
  //   if (message.notification != null) {
  //     print('Notification message: ${message.notification}');
  //     showNotification(
  //       title: message.notification!.title!,
  //       body: message.notification!.body!,
  //       payload: message.data['payload'],
  //     );
  //   } else if (message.data != null) {
  //     print('Data message: ${message.data}');
  //     // Handle data messages according to your app's logic
  //   }
  // }
}
