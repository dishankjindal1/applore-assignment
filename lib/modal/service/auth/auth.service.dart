import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Stream<User?> checkAuthStatus() {
    return firebaseAuth.authStateChanges();
  }
}