import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Image.network(imageUrl),
          const SizedBox(height: 5),
          Text(title),
          const SizedBox(height: 5),
          Text(byline),
          const SizedBox(height: 5),
          Text(
            publishedDate,
          ),
        ],
      ),
    ));
  }
}
