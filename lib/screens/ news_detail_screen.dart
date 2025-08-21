import 'package:flutter/material.dart';
import '../models/news.dart';

class NewsDetailScreen extends StatelessWidget {
  final News news;
  const NewsDetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes da Notícia')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(news.imagemUrl, height: 200, fit: BoxFit.cover),
          ),
          const SizedBox(height: 14),
          Text(news.titulo, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
          const SizedBox(height: 10),
          Text(
            // Simula texto longo do "banco"
            '${news.descricao}\n\n' * 6,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}