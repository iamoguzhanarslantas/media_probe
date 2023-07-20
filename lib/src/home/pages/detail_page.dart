import 'package:flutter/material.dart';

import 'package:media_probe/src/config/config.dart' show AppConfig;

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';
  const DetailPage({
    super.key,
    required this.title,
    required this.byline,
    required this.imageUrl,
    required this.publishedDate,
  });

  final String title;
  final String byline;
  final String imageUrl;
  final String publishedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfig.appBarTitle),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(imageUrl),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(width: 3),
                    Text(
                      publishedDate,
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 5),
                Text(
                  byline,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
