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
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.indigo,
              child: SafeArea(
                child: Column(
                  children: const [],
                ),
              ),
            ),
          )),
          Expanded(
              flex: 2,
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
