import 'dart:typed_data';

import 'package:flutter_application_1/src/core/network/server_adress.dart';
import 'package:http/http.dart' as http;

class UserDatasource {
  final _client = http.Client();

  Future<Uint8List> showInformations() async {
    try {
      final uri = Uri.parse(showInformationsRoute);
      final response = await _client.get(
        uri,
        headers: {'forms-client-token': userToken},
      );
      return response.bodyBytes;
    } on Exception {
      throw Exception('Failed to connect to the server');
    }
  }

  Future<bool> updateInformations(Uint8List userEncoded) async {
    try {
      final uri = Uri.parse(updateInformationsRoute);
      final response = await _client.post(
        uri,
        body: userEncoded,
        headers: {'forms-client-token': userToken},
      );
      return response.statusCode == 200;
    } on Exception {
      throw Exception('Failed to connect to the server');
    }
  }
}
