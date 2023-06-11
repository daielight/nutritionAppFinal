import 'package:flutter/material.dart';

class accInfo extends StatelessWidget {
  const accInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Name', border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Age', border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Height', border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Weight', border: OutlineInputBorder())),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Daily Calorie Intake',
                    border: OutlineInputBorder())),
          ),
        ],
      ),
    );
  }
}
