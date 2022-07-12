import 'package:flutter/material.dart';
import 'package:gitters/features/search/data/models/search_item.dart';

class SearchItemView extends StatelessWidget {
  const SearchItemView({
    super.key,
    required this.item,
  });
  final SearchItem item;

  @override
  Widget build(BuildContext context) {
    return item.map(
      users: (data) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 75,
                height: 75,
                child: Image.network(
                  data.user.avatar_url,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 75,
                height: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.user.login,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      issues: (data) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   width: 75,
              //   height: 75,
              //   child: Image.network(
              //     data.user.avatar_url,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 75,
                height: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.issues.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.issues.state,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      repositories: (data) {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   width: 75,
              //   height: 75,
              //   child: Image.network(
              //     data.repositories,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 75,
                height: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.repositories.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.repositories.forks_count.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
