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
    apiKey: 'AIzaSyAVVA0NBG7TuGFD6FiUoLVgtjAuJ1wZkfk',
    appId: '1:888988360012:web:f1d4d27c87a302d35e43e9',
    messagingSenderId: '888988360012',
    projectId: 'laundry-12a89',
    authDomain: 'laundry-12a89.firebaseapp.com',
    storageBucket: 'laundry-12a89.appspot.com',
    measurementId: 'G-G6VF8CJSTK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnQuBtcTMWX5XB-LkvOuebD-JfoI0_rlA',
    appId: '1:888988360012:android:afdbdb0096ef08915e43e9',
    messagingSenderId: '888988360012',
    projectId: 'laundry-12a89',
    storageBucket: 'laundry-12a89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB46ZD9KFRFC2ld4gfI0qfrYTKF_a2fYws',
    appId: '1:888988360012:ios:d497b50fe3ab06df5e43e9',
    messagingSenderId: '888988360012',
    projectId: 'laundry-12a89',
    storageBucket: 'laundry-12a89.appspot.com',
    iosClientId: '888988360012-09a2kf0j8lfpbdeg80ivnem8u90fte2p.apps.googleusercontent.com',
    iosBundleId: 'com.example.laundry',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB46ZD9KFRFC2ld4gfI0qfrYTKF_a2fYws',
    appId: '1:888988360012:ios:d497b50fe3ab06df5e43e9',
    messagingSenderId: '888988360012',
    projectId: 'laundry-12a89',
    storageBucket: 'laundry-12a89.appspot.com',
    iosClientId: '888988360012-09a2kf0j8lfpbdeg80ivnem8u90fte2p.apps.googleusercontent.com',
    iosBundleId: 'com.example.laundry',
  );
}
