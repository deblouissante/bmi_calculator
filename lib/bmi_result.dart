import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final bool isMale;
  final double height;
  final double weight;

  const BMIResult({
    super.key,
    required this.isMale,
    required this.weight,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBmi();
    String category = getCategory(bmi);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is:',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Category: $category',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            getIcon(category),
          ],
        ),
      ),
    );
  }

  double calculateBmi() {
    return weight / ((height / 100) * (height / 100));
  }

  String getCategory(double bmi) {
    if (isMale) {
      if (bmi < 18.5) {
        return 'Underweight';
      } else if (bmi < 25.0) {
        return 'Normal weight';
      } else {
        return 'Overweight';
      }
    } else {
      if (bmi < 18.5) {
        return 'Underweight';
      } else if (bmi < 24.0) {
        return 'Normal weight';
      } else {
        return 'Overweight';
      }
    }
  }
}

Widget getIcon(String category) {
  if (category == 'Underweight') {
    return Icon(Icons.adjust, color: const Color.fromARGB(255, 0, 49, 88));
  } else if (category == 'Normal weight') {
    return Icon(Icons.sentiment_satisfied,
        color: const Color.fromARGB(255, 0, 53, 2));
  } else if (category == 'Overweight') {
    return Icon(Icons.warning, color: Color.fromARGB(255, 70, 42, 0));
  } else {
    return Icon(Icons.error, color: const Color.fromARGB(255, 73, 5, 0));
  }
}
