import 'package:flutter_application_1/src/features/forms/controllers/login_controller.dart';
import 'package:flutter_application_1/src/features/forms/data/datasources/movie_datasource.dart';
import 'package:flutter_application_1/src/features/forms/data/datasources/user_datasource.dart';
import 'package:flutter_application_1/src/features/forms/data/repositories/movie_repository.dart';
import 'package:flutter_application_1/src/features/forms/data/repositories/user_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerFactory<UserDatasource>(
    () => UserDatasource()
    );

  getIt.registerFactory<UserRepository>(
    () => UserRepository(getIt()),
    );

  getIt.registerLazySingleton<LoginController>(
    () => LoginController(getIt()),
  );

  getIt.registerFactory<MovieDatasource>(
    () => MovieDatasource()
    );

  getIt.registerFactory<MovieRepository>(
  () => MovieRepository(getIt()),
  );
}
