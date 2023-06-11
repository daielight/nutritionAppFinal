import 'package:flutter/material.dart';

class nutritionTracker extends StatefulWidget {
  const nutritionTracker({super.key});

  @override
  State<nutritionTracker> createState() => _nutritionTrackerState();
}

class _nutritionTrackerState extends State<nutritionTracker> {
  double stringToDouble(String str1, double calCount) {
    double inputVal;
    double finalCal = calCount;
    if (str1.isEmpty) {
      inputVal = 0;
    } else {
      inputVal = double.parse(str1);
    }
    finalCal = finalCal - inputVal;
    return finalCal;
  }

  @override
  Widget build(BuildContext context) {
    double calCountLeft = 2000;
    String breakfastInput;
    String lunchInput;
    String dinnerInput;
    final breakfastCalCount = TextEditingController();
    final lunchCalCount = TextEditingController();
    final dinnerCalCount = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '$calCountLeft Calories Left',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: breakfastCalCount,
                decoration: const InputDecoration(
                    hintText: 'Breakfast Calorie Count (Only numbers)',
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: lunchCalCount,
                decoration: const InputDecoration(
                    hintText: 'Lunch Calorie Count (Only numbers)',
                    border: OutlineInputBorder())),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: dinnerCalCount,
                decoration: const InputDecoration(
                    hintText: 'Dinner Calorie Count (Only numbers)',
                    border: OutlineInputBorder())),
          ),
          MaterialButton(
            onPressed: () {
              double newCalCount;
              breakfastInput = breakfastCalCount.text;
              newCalCount = stringToDouble(breakfastInput, calCountLeft);
              lunchInput = lunchCalCount.text;
              newCalCount = stringToDouble(lunchInput, calCountLeft);
              dinnerInput = dinnerCalCount.text;
              newCalCount = stringToDouble(dinnerInput, calCountLeft);
              setState(() {
                calCountLeft = newCalCount;
              });
            },
            color: Colors.blue,
            child: const Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
