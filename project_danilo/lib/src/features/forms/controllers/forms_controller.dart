import 'package:flutter_application_1/src/shared/proto/client.pb.dart';
import 'package:flutter_application_1/src/features/forms/data/repositories/user_repository.dart';
import 'package:signals/signals_flutter.dart';

class FormsController {
  final UserRepository _repository;
  final _user = signal<User?>(null);
  User? get user => _user.value;

  FormsController(this._repository);

  Future<void> showInformations() async {
    final response = await _repository.showInformations();
    _user.value = response.$1 ?? _user.value;
  }

  Future<void> updateInformations(
      String name, String email, String adress) async {
    var user = User(name: name, email: email, adress: adress);
    final response = await _repository.updateInformations(user);
    if (response.$1) {
      _user.value = user;
    }
  }

  Future<void> clearInformations() async {
    await updateInformations('', '', '');
  }
}
