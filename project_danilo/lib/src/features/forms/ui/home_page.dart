import 'package:flutter/material.dart';

import 'package:flutter_application_1/src/core/di/injection.dart';
import 'package:flutter_application_1/src/core/routes/app_router.dart';
import 'package:flutter_application_1/src/features/forms/controllers/login_controller.dart';
import 'package:flutter_application_1/src/features/forms/controllers/movie_controller.dart';
import 'package:flutter_application_1/src/features/forms/ui/widgets/gridview.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = getIt<LoginController>();
    final movieController = getIt<MovieController>();

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 132, 27, 180),
          title: Row(
            children: [
              const Icon(
                Icons.account_circle,
                color: Colors.white60,
                size: 48,
              ),
              const SizedBox(width: 8),
              Text(
                controller.user?.username ?? 'Usuário',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                controller.logout();
                router.go('/');
              },
              icon: const Icon(Icons.logout),
            ),
          ],
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 248, 243, 250),
            unselectedLabelColor: Colors.white54,
            tabs: [
              Tab(text: 'Available Movies'),
              Tab(text: 'Movies Rental'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: const Color.fromARGB(255, 51, 10, 68),
              child: GridBuilder(
                controller: movieController,
                onTap: (movie) async {
                  final success =
                      await movieController.rentMovie(movie.id);

                  if (!context.mounted) return;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        success
                            ? 'Filme alugado com sucesso!'
                            : movieController.errorMessage ??
                                'Não foi possível alugar o filme.',
                      ),
                    ),
                  );
                },
              ),
            ),

            Container(
              color: const Color.fromARGB(255, 51, 10, 68),
              child: GridBuilder(
                controller: movieController,
                rental: true,
                onTap: (movie) async {
                  final success =
                      await movieController.watchMovie(movie.id);

                  if (!context.mounted) return;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        success
                            ? 'Filme assistido com sucesso!'
                            : movieController.errorMessage ??
                                'Não foi possível assistir ao filme.',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}