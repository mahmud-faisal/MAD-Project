import 'package:flutter/foundation.dart';
import '../../core/firebase/auth_service.dart';
import '../../domain/models/user_model.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService;
  UserModel? _user;
  bool _isLoading = false;
  String? _error;

  AuthProvider(this._authService);

  UserModel? get user => _user;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> initialize() async {
    _isLoading = true;
    notifyListeners();
    
    _user = await _authService.user.first;
    
    _isLoading = false;
    notifyListeners();
  }

  Future<bool> signIn(String email, String password, String userType) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      _user = await _authService.signInWithEmailAndPassword(email, password, userType);
      return _user != null;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> register(String email, String password, String userType) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      _user = await _authService.registerWithEmailAndPassword(email, password, userType);
      return _user != null;
    } catch (e) {
      _error = e.toString();
      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
    _user = null;
    notifyListeners();
  }
}