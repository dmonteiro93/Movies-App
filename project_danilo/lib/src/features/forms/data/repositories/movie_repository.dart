import 'package:flutter_application_1/src/features/forms/data/adapters/movie_adapter.dart';
import 'package:flutter_application_1/src/features/forms/data/datasources/movie_datasource.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';

class MovieRepository {
  final MovieDatasource _datasource;

  MovieRepository(this._datasource);

  Future<(List<Movie>?, String?)> getAvailableMovies() async {
    try {
      final response = await _datasource.getAvailableMovies();

      if (response.$1 == null) {
        return (null, response.$2);
      }

      final movies = MovieAdapter.bytesToMovies(response.$1!);

      return (movies.movies, null);
    } on Exception catch (e) {
      return (null, e.toString());
    }
  }

  Future<(bool, String?)> rentMovie(Rental rental) async {
    try {
      final response = await _datasource.rentMovie(rental);

      if (!response.$1) {
        return (false, response.$2);
      }

      return (true, null);
    } on Exception catch (e) {
      return (false, e.toString());
    }
  }
}