import 'dart:typed_data';

import 'package:flutter_application_1/src/core/network/server_adress.dart';
import 'package:http/http.dart' as http;

class UserDatasource {
  final _client = http.Client();

  Future<(Uint8List?, String?)> login(Uint8List userBytes) async {
    try {
      final uri = Uri.parse(loginRoute);

      final response = await _client.post(
        uri,
        body: userBytes,
        headers: {
          'Content-Type': 'application/x-protobuf',
        },
      );

      if (response.statusCode == 401) {
        return (null, 'Username or password invalid');
      }

      if (response.statusCode != 200) {
        return (null, 'Failed to login');
      }

      return (response.bodyBytes, null);
    } on Exception {
      return (null, 'Was not possible connect to server');
    }
  }
}