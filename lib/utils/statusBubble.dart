import 'package:flutter/material.dart';

class statusBubble extends StatelessWidget {
  ImageProvider imageUrl;
  String name;
  statusBubble({required this.name, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            backgroundImage: imageUrl,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
