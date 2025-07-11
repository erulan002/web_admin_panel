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
    apiKey: 'AIzaSyCQ4iEy5KOR2HpVzlzKbZUd8MTj5wPTvpk',
    appId: '1:619047531720:web:b4f176142cf700d05de1fd',
    messagingSenderId: '619047531720',
    projectId: 'ecommerceapp-d17b7',
    authDomain: 'ecommerceapp-d17b7.firebaseapp.com',
    storageBucket: 'ecommerceapp-d17b7.firebasestorage.app',
    measurementId: 'G-EJMVESVSD1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSnYmAeZXrNyTYVqSLBmJEQj3GPVvwm24',
    appId: '1:619047531720:android:5eda26f240f9be3f5de1fd',
    messagingSenderId: '619047531720',
    projectId: 'ecommerceapp-d17b7',
    storageBucket: 'ecommerceapp-d17b7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKiG2kvJjNgArhGQ54p68t4nxiQ5IwDi4',
    appId: '1:619047531720:ios:05caab1965edac925de1fd',
    messagingSenderId: '619047531720',
    projectId: 'ecommerceapp-d17b7',
    storageBucket: 'ecommerceapp-d17b7.firebasestorage.app',
    iosBundleId: 'com.example.webAdminPanel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKiG2kvJjNgArhGQ54p68t4nxiQ5IwDi4',
    appId: '1:619047531720:ios:05caab1965edac925de1fd',
    messagingSenderId: '619047531720',
    projectId: 'ecommerceapp-d17b7',
    storageBucket: 'ecommerceapp-d17b7.firebasestorage.app',
    iosBundleId: 'com.example.webAdminPanel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCQ4iEy5KOR2HpVzlzKbZUd8MTj5wPTvpk',
    appId: '1:619047531720:web:9c98e032fde5a53a5de1fd',
    messagingSenderId: '619047531720',
    projectId: 'ecommerceapp-d17b7',
    authDomain: 'ecommerceapp-d17b7.firebaseapp.com',
    storageBucket: 'ecommerceapp-d17b7.firebasestorage.app',
    measurementId: 'G-NWZ1NLX82M',
  );
}
