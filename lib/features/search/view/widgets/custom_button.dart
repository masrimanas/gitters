import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    required this.action,
  });

  final String title;
  final Color color;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(width: 2),
      ),
      child: GestureDetector(
        onTap: action,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
