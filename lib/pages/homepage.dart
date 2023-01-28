import 'package:chat_app/utils/statusBubble.dart';
import 'package:chat_app/utils/topBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.indigo,
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const topBar(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Favorite Contact',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                              statusBubble(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 9,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Container(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
