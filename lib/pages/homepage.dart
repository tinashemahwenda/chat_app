import 'package:chat_app/utils/chatBubble.dart';
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
                            children: [
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-5.jpg'),
                                name: 'Tinashe',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-1.jpg'),
                                name: 'Tinashe',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-3.jpg'),
                                name: 'Roy',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-2.jpg'),
                                name: 'Adil',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-4.jpg'),
                                name: 'Nashe',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-2.jpg'),
                                name: 'Adil',
                              ),
                              statusBubble(
                                imageUrl: const AssetImage(
                                    'assets/images/profile-4.jpg'),
                                name: 'Nashe',
                              ),
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        chatBubble(
                          imageUrl:
                              const AssetImage('assets/images/profile-1.jpg'),
                          name: 'Tinashe Mahwenda',
                        ),
                        chatBubble(
                          imageUrl:
                              const AssetImage('assets/images/profile-2.jpg'),
                          name: 'Roy Nyahunzvi',
                        ),
                        chatBubble(
                          imageUrl:
                              const AssetImage('assets/images/profile-3.jpg'),
                          name: 'Inshan Apple',
                        ),
                        chatBubble(
                          imageUrl:
                              const AssetImage('assets/images/profile-4.jpg'),
                          name: 'Tinashe New',
                        ),
                        chatBubble(
                          imageUrl:
                              const AssetImage('assets/images/profile-5.jpg'),
                          name: 'Tinashe',
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
