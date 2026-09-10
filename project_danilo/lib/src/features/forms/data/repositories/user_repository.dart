import 'package:flutter_application_1/src/features/forms/data/adapters/user_adapter.dart';
import 'package:flutter_application_1/src/features/forms/data/datasources/user_datasource.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';

class UserRepository {
  final UserDatasource _datasource;

  UserRepository(this._datasource);

  Future<(User?, String?)> login(User user) async {
    try {
      final userBytes = UserAdapter.userToBytes(user);

      final response = await _datasource.login(userBytes);

      if (response.$1 == null) {
        return (null, response.$2);
      }

      final loggedUser = UserAdapter.bytesToUser(response.$1!);

      return (loggedUser, null);
    } on Exception catch (e) {
      return (null, e.toString());
    }
  }
}