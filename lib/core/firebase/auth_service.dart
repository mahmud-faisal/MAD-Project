import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object from FirebaseUser
  UserModel? _userFromFirebase(User? user, [String userType = '']) {
    return user != null 
        ? UserModel(
            uid: user.uid,
            email: user.email ?? '',
            name: user.displayName ?? '',
            type: userType,
          )
        : null;
  }

  // Auth change user stream
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  // Sign in with email & password
  Future<UserModel?> signInWithEmailAndPassword(
    String email, 
    String password,
    String userType,
  ) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _userFromFirebase(result.user, userType);
    } on FirebaseAuthException catch (e) {
      throw AuthException(e.code);
    }
  }

  // Register with email & password
  Future<UserModel?> registerWithEmailAndPassword(
    String email, 
    String password,
    String userType,
  ) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _userFromFirebase(result.user, userType);
    } on FirebaseAuthException catch (e) {
      throw AuthException(e.code);
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
  
  @override
  String toString() {
    switch (message) {
      case 'wrong-password':
        return 'Invalid password';
      case 'user-not-found':
        return 'User not found';
      case 'user-disabled':
        return 'User disabled';
      case 'too-many-requests':
        return 'Too many requests';
      case 'operation-not-allowed':
        return 'Operation not allowed';
      case 'email-already-in-use':
        return 'Email already in use';
      case 'invalid-email':
        return 'Invalid email';
      case 'weak-password':
        return 'Weak password';
      default:
        return 'Authentication failed';
    }
  }
}