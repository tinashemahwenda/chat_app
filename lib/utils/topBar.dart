import 'package:flutter/material.dart';

class topBar extends StatelessWidget {
  const topBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              'Inbox',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.move_to_inbox_rounded,
              color: Colors.white,
            ),
          ],
        ),
        const Icon(
          Icons.keyboard_control,
          color: Colors.white,
        )
      ],
    );
  }
}
