import 'package:flutter/material.dart';
import '../data/mock_news.dart';
import '../widgets/news_list_item.dart';
import 'news_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            const SizedBox(height: 12),
            Text(
              'Notícias Recentes',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            // Use NewsListItem em vez de NewsCard
            for (var n in mockNews)
              NewsListItem(
                news: n,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => NewsDetailScreen(news: n)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
