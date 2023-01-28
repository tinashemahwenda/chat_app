import 'package:flutter/material.dart';

class chatBubble extends StatelessWidget {
  ImageProvider imageUrl;
  String name;
  chatBubble({required this.imageUrl, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey,
                backgroundImage: imageUrl,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Hi how are you doing'),
                ],
              ),
            ],
          ),
          Column(
            children: const [
              Text('2.30pm'),
              SizedBox(
                height: 5,
              ),
              Badge(
                backgroundColor: Colors.indigo,
                isLabelVisible: true,
                label: Text('2'),
              )
            ],
          )
        ],
      ),
    );
  }
}
