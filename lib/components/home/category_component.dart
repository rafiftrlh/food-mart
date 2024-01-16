import 'package:flutter/material.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent(
      {super.key,
      required this.color,
      required this.icon,
      required this.title});

  final Color color;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            height: MediaQuery.sizeOf(context).height / 16,
            width: MediaQuery.sizeOf(context).width / 6,
            child: Icon(icon, color: color),
          ),
          Text(title,
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ))
        ],
      ),
    );
  }
}
