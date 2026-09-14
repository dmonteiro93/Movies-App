import 'package:flutter_application_1/src/features/forms/data/repositories/movie_repository.dart';
import 'package:flutter_application_1/src/features/forms/controllers/login_controller.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';
import 'package:signals/signals_flutter.dart';

class MovieController {
  final MovieRepository _repository;
  final LoginController _loginController;

  final _movies = signal<List<Movie>>([]);
  final _rentalMovies = signal<List<Movie>>([]);
  final _errorMessage = signal<String?>(null);
  final _isLoading = signal(false);

  List<Movie> get movies => _movies.value;
  List<Movie> get rentalMovies => _rentalMovies.value;
  String? get errorMessage => _errorMessage.value;
  bool get isLoading => _isLoading.value;

  MovieController(this._repository, this._loginController);

  Future<void> loadAvailableMovies() async {
    _isLoading.value = true;
    _errorMessage.value = null;

    final response = await _repository.getAvailableMovies();

    if (response.$1 != null) {
      _movies.value = response.$1!;
    } else {
      _errorMessage.value = response.$2;
    }

    _isLoading.value = false;
  }

  Future<void> loadRentalMovies() async {
    _isLoading.value = true;
    _errorMessage.value = null;

    final user = _loginController.user;

    if (user == null) {
      _errorMessage.value = 'Usuário não autenticado';
      _isLoading.value = false;
      return;
    }

    final response = await _repository.getRentalMovies(user);

    if (response.$1 != null) {
      _rentalMovies.value = response.$1!;
    } else {
      _errorMessage.value = response.$2;
    }

    _isLoading.value = false;
  }

  Future<bool> rentMovie(int movieId) async {
    _errorMessage.value = null;

    final user = _loginController.user;

    if (user == null) {
      _errorMessage.value = 'Usuário não autenticado';
      return false;
    }

    final rental = Rental(
      userId: user.id,
      movieId: movieId,
    );

    final response = await _repository.rentMovie(rental);

    if (response.$1) {
      await loadRentalMovies();
      return true;
    }

    _errorMessage.value = response.$2;
    return false;
  }

  Future<bool> watchMovie(int movieId) async {
    _errorMessage.value = null;

    final user = _loginController.user;

    if (user == null) {
      _errorMessage.value = 'Usuário não autenticado';
      return false;
    }

    final rental = Rental(
      userId: user.id,
      movieId: movieId,
    );

    final response = await _repository.watchMovie(rental);

    if (response.$1) {
      await loadRentalMovies();
      return true;
    }

    _errorMessage.value = response.$2;
    return false;
  }
}