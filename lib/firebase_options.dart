// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBog37mJ07oVSpw4QN2xBIVn_LT3S1JNJo',
    appId: '1:97746970824:android:1c5d79b81edc545e8cddfd',
    messagingSenderId: '97746970824',
    projectId: 'mavent-e0a3d',
    storageBucket: 'mavent-e0a3d.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBAc5VHBciMd1lEHBHNKQEBh51dS3PwQuI',
    appId: '1:97746970824:web:2c1541a1396ac27e8cddfd',
    messagingSenderId: '97746970824',
    projectId: 'mavent-e0a3d',
    authDomain: 'mavent-e0a3d.firebaseapp.com',
    storageBucket: 'mavent-e0a3d.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBAc5VHBciMd1lEHBHNKQEBh51dS3PwQuI',
    appId: '1:97746970824:web:9b4c8daaab01dab08cddfd',
    messagingSenderId: '97746970824',
    projectId: 'mavent-e0a3d',
    authDomain: 'mavent-e0a3d.firebaseapp.com',
    storageBucket: 'mavent-e0a3d.appspot.com',
  );

}