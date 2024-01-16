import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodAppBar extends StatelessWidget {
  const FoodAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            IconButton.outlined(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Details Screen",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton.outlined(onPressed: () {}, icon: Icon(Icons.thumb_up)),
            SizedBox(
              width: 5,
            ),
            IconButton.outlined(onPressed: () {}, icon: Icon(Icons.history))
          ],
        )
      ]),
    );
  }
}
