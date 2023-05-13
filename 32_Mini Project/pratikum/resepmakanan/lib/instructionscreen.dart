import 'package:flutter/material.dart';
import 'package:resepmakanan/models/Meal.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      appBar: AppBar(
        title: Text(meal.strMeal),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    meal.strMealThumb,
                    width: 400,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                )),
            const SizedBox(
              height: 16,
            ),
            Text(
              meal.strMeal,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Instruction : \n${meal.strInstruction}',
                maxLines: 15,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
