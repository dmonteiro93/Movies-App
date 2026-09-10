import 'package:flutter_application_1/src/features/forms/data/adapters/user_adapter.dart';
import 'package:flutter_application_1/src/features/forms/data/datasources/user_datasource.dart';
import 'package:flutter_application_1/src/shared/proto/client.pb.dart';

class UserRepository {
  final UserDatasource _datasource;

  UserRepository(this._datasource);

  Future<(User?, Exception?)> showInformations() async {
    try {
      var result = await _datasource.showInformations();
      var user = UserAdapter.bytesToUser(result);
      return (user, null);
    } on Exception catch (e) {
      return (null, e);
    }
  }

  Future<(bool, Exception?)> updateInformations(User user) async {
    try {
      var userEncoded = UserAdapter.userToBytes(user);
      var result = await _datasource.updateInformations(userEncoded);
      return (result, null);
    } on Exception catch (e) {
      return (false, e);
    }
  }
}