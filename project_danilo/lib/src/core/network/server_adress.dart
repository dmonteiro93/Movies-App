import 'package:flutter_dotenv/flutter_dotenv.dart';

final apiUrl = dotenv.get('API_URL');
final port = dotenv.getInt('PORT');
final userToken = dotenv.get('TOKEN');

final serverAdress = '$apiUrl:$port';

final loginRoute = '$serverAdress/login';
final availableMoviesRoute = '$serverAdress/available-movies';
final rentalMovieRoute = '$serverAdress/rental-movie';
final moviesRentalByUserRoute = '$serverAdress/movies-rental-by-user';
final watchMovieRoute = '$serverAdress/watch-movie';