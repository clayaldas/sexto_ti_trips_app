import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreenState();
  }
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isFavorite = false;

  void onPressedFav() {
    setState(() {});

    isFavorite = !isFavorite;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 1),
        content: isFavorite
            ? const Text('Agregaste a favoritos')
            : const Text('Eliminaste de favoritos')));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff16DB58),
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: isFavorite
          ? const Icon(
              Icons.favorite_rounded,
            )
          : const Icon(
              Icons.favorite_border_rounded,
            ),
    );
  }
}
