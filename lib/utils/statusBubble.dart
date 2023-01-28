import 'package:flutter/material.dart';

class statusBubble extends StatelessWidget {
  const statusBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Tinashe',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
