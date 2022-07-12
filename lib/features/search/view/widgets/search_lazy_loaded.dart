import 'package:flutter/material.dart';
import 'package:gitters/features/search/data/models/search_item.dart';
import 'package:gitters/features/search/view/widgets/search_item.dart';

class LazyLoadedList extends StatelessWidget {
  const LazyLoadedList({
    super.key,
    required this.items,
  });
  final List<SearchItem> items;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final data = items;
          return data[index].map(
            users: (value) => SearchItemView(item: data.first),
            issues: (value) => SearchItemView(item: data.first),
            repositories: (value) => SearchItemView(item: data.first),
          );
        },
      ),
    );
  }
}
