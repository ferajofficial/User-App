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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBrRZHct5kS1OT913-Qw-vqGeKuOy5-psU',
    appId: '1:771536633588:web:90b89bc91e67a5ee66a8a1',
    messagingSenderId: '771536633588',
    projectId: 'asignment-5a66c',
    authDomain: 'asignment-5a66c.firebaseapp.com',
    storageBucket: 'asignment-5a66c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDS7CCpgUcFCSKDtpiRps1iy9YxtHlcu3s',
    appId: '1:771536633588:android:64ef08bc1d9911f766a8a1',
    messagingSenderId: '771536633588',
    projectId: 'asignment-5a66c',
    storageBucket: 'asignment-5a66c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkXukXdFUx5HfwrugqajgZ0bf4ZbJZxCc',
    appId: '1:771536633588:ios:2789541011e0ede366a8a1',
    messagingSenderId: '771536633588',
    projectId: 'asignment-5a66c',
    storageBucket: 'asignment-5a66c.appspot.com',
    iosClientId: '771536633588-7b0po94efrshknkg3oqaack93u8k9ifp.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignment',
  );
}