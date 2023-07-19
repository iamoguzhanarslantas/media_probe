import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:media_probe/src/common/common.dart' show GetDate;
import 'package:media_probe/src/home/home.dart'
    show DetailPage, homePageStateNotifierProvider;

class HomePage extends ConsumerWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchData = ref.watch(homePageStateNotifierProvider);

    return Scaffold(
      body: fetchData.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        final data = fetchData.data![index];
                        final sortedData = [...fetchData.data!];
                        sortedData.sort((a, b) =>
                            b.publishedDate!.compareTo(a.publishedDate!));
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    title: data.title ?? '',
                                    byline: data.byline ?? '',
                                    imageUrl:
                                        data.media?[0]?.mediaMetadata[0].url ??
                                            '',
                                    publishedDate:
                                        data.publishedDate.toString(),
                                  ),
                                ),
                              );
                            },
                            title: Text(data.title ?? ''),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.byline ?? ''),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(Icons.calendar_today, size: 13),
                                    const SizedBox(width: 3),
                                    Text(
                                      sortedData[index]
                                          .publishedDate
                                          .toString()
                                          .getDate,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                data.media?[0]?.mediaMetadata[0].url ??
                                    'assets/images/white.png',
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: fetchData.data!.length - 15,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
