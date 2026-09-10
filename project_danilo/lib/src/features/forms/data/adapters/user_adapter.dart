import 'dart:typed_data';

import 'package:flutter_application_1/src/shared/proto/client.pb.dart';

class UserAdapter {
  static User bytesToUser(Uint8List encodedProto) {
    if (encodedProto.isEmpty) {
      throw Exception('Encoded proto is coming empty');
    }
    return User.fromBuffer(encodedProto);
  }

  static Uint8List userToBytes(User user) {
    return user.writeToBuffer();
  }
}
