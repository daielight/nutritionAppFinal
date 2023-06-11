import 'package:flutter/material.dart';

class newsPage extends StatelessWidget {
  const newsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.blue,
              width: double.maxFinite,
              height: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              child: const Text(
                'News Article 1',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.blue,
              width: double.maxFinite,
              height: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              child: const Text(
                'News Article 2',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
                selectionColor: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Colors.blue,
              width: double.maxFinite,
              height: 100,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(30),
              child: const Text(
                'News Article 3',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
