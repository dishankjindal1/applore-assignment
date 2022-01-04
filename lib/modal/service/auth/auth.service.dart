import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? profile = _firebaseAuth.currentUser;

  Stream<User?> checkAuthStatus() {
    return _firebaseAuth.idTokenChanges();
  }


}