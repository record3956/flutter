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
    apiKey: 'AIzaSyCOQ3Y_i968dd4dtuHO2ZeoW8ov8doAS1k',
    appId: '1:699498852734:web:8ed9af2203848d753b832f',
    messagingSenderId: '699498852734',
    projectId: 'dev-app-cb2ba',
    authDomain: 'dev-app-cb2ba.firebaseapp.com',
    databaseURL: 'https://dev-app-cb2ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'dev-app-cb2ba.appspot.com',
    measurementId: 'G-S085LFKMQZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxBPPR3gt1jz4tYSOXzphemdrolsRzrTQ',
    appId: '1:699498852734:android:3ac1e9769aa3bc603b832f',
    messagingSenderId: '699498852734',
    projectId: 'dev-app-cb2ba',
    databaseURL: 'https://dev-app-cb2ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'dev-app-cb2ba.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBL1_rPHq-aE34nnxIncCA5NsHW9KxHr6o',
    appId: '1:699498852734:ios:193916b561d7bf923b832f',
    messagingSenderId: '699498852734',
    projectId: 'dev-app-cb2ba',
    databaseURL: 'https://dev-app-cb2ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'dev-app-cb2ba.appspot.com',
    androidClientId: '699498852734-hed2uorrb7i5lutmp7rbtl76dhkka4pf.apps.googleusercontent.com',
    iosClientId: '699498852734-bjf75iq6eeig1annj16qpp1l36nu8v02.apps.googleusercontent.com',
    iosBundleId: 'com.example.loveBattery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBL1_rPHq-aE34nnxIncCA5NsHW9KxHr6o',
    appId: '1:699498852734:ios:46846bd34d6987963b832f',
    messagingSenderId: '699498852734',
    projectId: 'dev-app-cb2ba',
    databaseURL: 'https://dev-app-cb2ba-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'dev-app-cb2ba.appspot.com',
    androidClientId: '699498852734-hed2uorrb7i5lutmp7rbtl76dhkka4pf.apps.googleusercontent.com',
    iosClientId: '699498852734-q9bps7m0qbd0lj5hmsd6872q020dqrpv.apps.googleusercontent.com',
    iosBundleId: 'com.example.loveBattery.RunnerTests',
  );
}
