import 'package:flutter/material.dart';
import 'package:resepmakanan/instructionscreen.dart';
import 'package:resepmakanan/models/Meal.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.meal});

  final Meal meal;

  String getMealIngredientList() {
    String output = "";
    for (int i = 0; i < meal.ingredients.length; i++) {
      if (meal.ingredients[i].toString().isEmpty) break;
      output +=
          "\u2022 ${meal.ingredients[i].strName} ${meal.ingredients[i].strMeasure}\n";
    }
    return "Recipe:\n$output";
  }

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
            Text(getMealIngredientList()),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: const Text("View Instruction"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InstructionPage(meal: meal),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class DetailScreen extends StatelessWidget {
//   final resep reseps;

//   const DetailScreen({Key? key, required this.reseps}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(reseps.name),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Image.asset(
//                   reseps.image,
//                   width: 400,
//                   height: 250,
//                   fit: BoxFit.cover,
//                 ),
//               )),
//           SizedBox(
//             height: 16,
//           ),
//           Text(
//             reseps.name,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 35,
//                 color: Colors.blueAccent),
//           ),
//           Text('HTM: ${reseps.htm}'),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Description : ' + reseps.tutorial,
//               maxLines: 15,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.brown,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
