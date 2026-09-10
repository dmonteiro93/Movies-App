import 'dart:typed_data';

import 'package:flutter_application_1/src/core/network/server_adress.dart';
import 'package:http/http.dart' as http;

class MovieDatasource {
  final _client = http.Client();

  Future<(Uint8List?, String?)> getAvailableMovies() async {
    try {
      final uri = Uri.parse(availableMoviesRoute);

      final response = await _client.get(uri);

      if (response.statusCode != 200) {
        return (null, 'Failed to get available movies');
      }

      return (response.bodyBytes, null);
    } on Exception {
      return (null, 'Was not possible connect to server');
    }
  }
}