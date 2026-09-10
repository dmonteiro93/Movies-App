import 'package:flutter_application_1/src/features/forms/data/repositories/user_repository.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';
import 'package:signals/signals_flutter.dart';

class LoginController {
  final UserRepository _repository;

  final _user = signal<User?>(null);
  final _errorMessage = signal<String?>(null);

  User? get user => _user.value;
  String? get errorMessage => _errorMessage.value;

  LoginController(this._repository);

  Future<bool> login(String username, String password) async {
    _errorMessage.value = null;

    final user = User(
      id: 0,
      username: username,
      password: password,
    );

    final response = await _repository.login(user);

    if (response.$1 != null) {
      _user.value = response.$1;
      return true;
    }

    _errorMessage.value = response.$2;
    return false;
  }

  void initUser(User user) {
    _user.value = user;
  }

  void logout() {
    _user.value = null;
    _errorMessage.value = null;
  }
}