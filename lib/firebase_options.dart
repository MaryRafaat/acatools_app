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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDr8DsaRmnoxJw1VfGfqNe6Bnu5QQGvLh4',
    appId: '1:104523258889:web:d3956b2bca22bb07d8ecd8',
    messagingSenderId: '104523258889',
    projectId: 'acatools-app',
    authDomain: 'acatools-app.firebaseapp.com',
    storageBucket: 'acatools-app.firebasestorage.app',
    measurementId: 'G-9016NE6YM8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8mHOAxkaXLOkXpdH4eV1EYuD5PH-W1bw',
    appId: '1:104523258889:android:d1cd0807a855f630d8ecd8',
    messagingSenderId: '104523258889',
    projectId: 'acatools-app',
    storageBucket: 'acatools-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkjPSMtMtR4iD1zsFwoEkWTEsj6phEUq4',
    appId: '1:104523258889:ios:2f59194877bb7d37d8ecd8',
    messagingSenderId: '104523258889',
    projectId: 'acatools-app',
    storageBucket: 'acatools-app.firebasestorage.app',
    iosBundleId: 'com.example.acatoolsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkjPSMtMtR4iD1zsFwoEkWTEsj6phEUq4',
    appId: '1:104523258889:ios:2f59194877bb7d37d8ecd8',
    messagingSenderId: '104523258889',
    projectId: 'acatools-app',
    storageBucket: 'acatools-app.firebasestorage.app',
    iosBundleId: 'com.example.acatoolsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDr8DsaRmnoxJw1VfGfqNe6Bnu5QQGvLh4',
    appId: '1:104523258889:web:c2cb5c30ce2ddf79d8ecd8',
    messagingSenderId: '104523258889',
    projectId: 'acatools-app',
    authDomain: 'acatools-app.firebaseapp.com',
    storageBucket: 'acatools-app.firebasestorage.app',
    measurementId: 'G-MESEH71YP3',
  );
}