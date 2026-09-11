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
  });

  final void Function(Movie movie)? onTap;
  final void Function()? onLongPress;
  final MovieController controller;

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  @override
  void initState() {
    super.initState();
    widget.controller.loadAvailableMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      return GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: widget.controller.movies.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (_, int index) {
          final movie = widget.controller.movies[index];

          return Container(
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
          );
        },
      );
    });
  }
}
