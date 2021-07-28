import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color colors;

  CategoryItem({required this.title, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          colors.withOpacity(0.7),
          colors,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
