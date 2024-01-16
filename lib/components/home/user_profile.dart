import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              Text(
                "Margonda Raya Selatan",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700),
              ),
            ],
          ),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  child: Icon(Icons.shopping_cart),
                ),
                CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
