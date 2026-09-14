// ignore_for_file: deprecated_member_use

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/forms/controllers/movie_controller.dart';
import 'package:flutter_application_1/src/shared/proto/package.pb.dart';
import 'package:signals_flutter/signals_flutter.dart';

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
    this.onTap,
    this.onLongPress,
    required this.controller,
    this.rental = false,
  });

  final void Function(Movie movie)? onTap;
  final void Function()? onLongPress;
  final MovieController controller;
  final bool rental;

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  @override
  void initState() {
    super.initState();

    if (widget.rental) {
      widget.controller.loadRentalMovies();
    } else {
      widget.controller.loadAvailableMovies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      final movies = widget.rental
          ? widget.controller.rentalMovies
          : widget.controller.movies;

      return GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (_, int index) {
          final movie = movies[index];

          return GestureDetector(
            onTap: () => widget.onTap?.call(movie),
            onLongPress: widget.onLongPress,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 51, 10, 68),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.memory(
                      Uint8List.fromList(movie.cover),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      movie.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'R\$ ${movie.value.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}