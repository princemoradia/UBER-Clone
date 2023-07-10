// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAUKPs0CqaEoi9luWWGYdpf8IMAJX3VvGE',
    appId: '1:676409224252:web:196fe3e593ff04c21ba739',
    messagingSenderId: '676409224252',
    projectId: 'uber-e31ba',
    authDomain: 'uber-e31ba.firebaseapp.com',
    storageBucket: 'uber-e31ba.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWGzQUjaEH5TeyLcUPAaihJ0BqNQmewcI',
    appId: '1:676409224252:android:99a73ea61545ddd71ba739',
    messagingSenderId: '676409224252',
    projectId: 'uber-e31ba',
    storageBucket: 'uber-e31ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApju1vrNpbptyPW-rVo98PYhWVpbzMPSo',
    appId: '1:676409224252:ios:49720eb1799bf7191ba739',
    messagingSenderId: '676409224252',
    projectId: 'uber-e31ba',
    storageBucket: 'uber-e31ba.appspot.com',
    iosClientId: '676409224252-ces055v3lo8ul4tsuvdsvcp01pc0j8u1.apps.googleusercontent.com',
    iosBundleId: 'com.example.uber',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApju1vrNpbptyPW-rVo98PYhWVpbzMPSo',
    appId: '1:676409224252:ios:49720eb1799bf7191ba739',
    messagingSenderId: '676409224252',
    projectId: 'uber-e31ba',
    storageBucket: 'uber-e31ba.appspot.com',
    iosClientId: '676409224252-ces055v3lo8ul4tsuvdsvcp01pc0j8u1.apps.googleusercontent.com',
    iosBundleId: 'com.example.uber',
  );
}