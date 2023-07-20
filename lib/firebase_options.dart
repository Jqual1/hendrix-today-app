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
    apiKey: 'AIzaSyDcXKeCaK5T07ac6CVgV97aLyN4Ak70J2c',
    appId: '1:475115728794:web:51cad120bb34dc40595423',
    messagingSenderId: '475115728794',
    projectId: 'hendrix-today-app',
    authDomain: 'hendrix-today-app.firebaseapp.com',
    storageBucket: 'hendrix-today-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCebnqC2fvCuakWMDRm_jNH8lmGu5Uw-HY',
    appId: '1:475115728794:android:355f37530f18bec7595423',
    messagingSenderId: '475115728794',
    projectId: 'hendrix-today-app',
    storageBucket: 'hendrix-today-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0EC5SZB1YGrbrfsfTLdkv4A2KL7145yk',
    appId: '1:475115728794:ios:dce908531bb87af4595423',
    messagingSenderId: '475115728794',
    projectId: 'hendrix-today-app',
    storageBucket: 'hendrix-today-app.appspot.com',
    iosClientId:
        '475115728794-natv1dhslluf8lek28987r6e9tnatemp.apps.googleusercontent.com',
    iosBundleId: 'com.example.hendrixTodayApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0EC5SZB1YGrbrfsfTLdkv4A2KL7145yk',
    appId: '1:475115728794:ios:dce908531bb87af4595423',
    messagingSenderId: '475115728794',
    projectId: 'hendrix-today-app',
    storageBucket: 'hendrix-today-app.appspot.com',
    iosClientId:
        '475115728794-natv1dhslluf8lek28987r6e9tnatemp.apps.googleusercontent.com',
    iosBundleId: 'com.example.hendrixTodayApp',
  );
}