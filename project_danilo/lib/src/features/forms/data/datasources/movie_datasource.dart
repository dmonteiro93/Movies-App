import 'dart:typed_data';

import 'package:flutter_application_1/src/core/network/server_adress.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';
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

  Future<(bool, String?)> rentMovie(Rental rental) async {
    try {
      final uri = Uri.parse(rentalMovieRoute);

      final response = await _client.post(
        uri,
        body: rental.writeToBuffer(),
        headers: {
          'Content-Type': 'application/x-protobuf',
          'X-Student-Token': userToken,
        },
      );

      if (response.statusCode != 200) {
        return (false, 'Failed to rent movie');
      }

      return (true, null);
    } on Exception {
      return (false, 'Was not possible connect to server');
    }
  }
}