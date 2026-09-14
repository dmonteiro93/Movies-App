import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/di/injection.dart';
import 'package:flutter_application_1/src/features/forms/controllers/movie_controller.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final movieController = getIt<MovieController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 132, 27, 180),
        title: const Text('Detalhes do filme'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 51, 10, 68),
        child: Column(
          children: [
            // Área principal do filme
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.4),
                  ),
                ),
                child: const Row(
                  children: [
                    // Poster e preço
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // imagem
                          // preço
                        ],
                      ),
                    ),

                    // Sinopse
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Sinopse',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Área inferior
            Expanded(
              child: Row(
                children: [
                  // Diretor e ano
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          'Director: ',
                          style: TextStyle(color: Colors.white),
                        ),
                         Text(
                          'Year: ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // Botões
                  Column(
                    children: [
                      const Spacer(),

                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // futuramente: alugar filme
                            },
                            child: const Text('Rental'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

