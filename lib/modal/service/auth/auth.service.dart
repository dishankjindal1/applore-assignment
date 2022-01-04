import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Stream<User?> checkAuthStatus() {
    return firebaseAuth.authStateChanges();
  }
}