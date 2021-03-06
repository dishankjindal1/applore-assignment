// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBpcMy1d1_223EEgNJD5i88TRhg6b6KKvA',
    appId: '1:763499512736:android:40fd367c453ff11fab1ac5',
    messagingSenderId: '763499512736',
    projectId: 'flutter-e93c4',
    storageBucket: 'flutter-e93c4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrNO9CCr-N31GCjl1MYisjLGULGXACdzI',
    appId: '1:763499512736:ios:efa836d2a42ad0c9ab1ac5',
    messagingSenderId: '763499512736',
    projectId: 'flutter-e93c4',
    storageBucket: 'flutter-e93c4.appspot.com',
    iosClientId: '763499512736-v7m562aus4itumf75196u566thv7njjo.apps.googleusercontent.com',
    iosBundleId: 'com.applore.assignment',
  );
}
