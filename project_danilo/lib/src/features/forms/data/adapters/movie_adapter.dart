import 'dart:typed_data';

import 'package:flutter_application_1/src/shared/proto/package.pb.dart';

class MovieAdapter {
  static Movies bytesToMovies(Uint8List encodedProto) {
    if (encodedProto.isEmpty) {
      throw Exception('Encoded proto is coming empty');
    }

    return Movies.fromBuffer(encodedProto);
  }

  
}