import 'package:flutter/material.dart';

class SearchItemInfo extends StatelessWidget {
  const SearchItemInfo({
    super.key,
    required this.icon,
    required this.data,
  });
  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: 16,
          ),
          Text(
            ': $data',
          ),
        ],
      ),
    );
  }
}
