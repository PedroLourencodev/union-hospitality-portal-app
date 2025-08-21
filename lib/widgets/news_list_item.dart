import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String noticia;

  const NewsCard({super.key, required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          noticia,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
