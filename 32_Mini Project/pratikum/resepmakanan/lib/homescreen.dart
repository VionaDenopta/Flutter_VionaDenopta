import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:resepmakanan/detailscreen.dart';
import 'package:resepmakanan/models/Meal.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiUrl = "https://www.themealdb.com/api/json/v1/1/search.php?s=";

  late Future<List<Meal>> meals;

  Future<List<Meal>> fetchMeal({String query = ""}) async {
    List<Meal> meals = List.empty(growable: true);

    final response = await http.get(Uri.parse(apiUrl + query));
    if (response.statusCode == 200) {
      for (var element in jsonDecode(response.body)["meals"]) {
        meals.add(Meal.fromJson(element));
      }
      return meals;
    } else {
      throw Exception("Failed to load meals");
    }
  }

  @override
  void initState() {
    super.initState();
    meals = fetchMeal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      appBar: AppBar(
        title: const Text('Resep makanan'),
      ),
      // body: Placeholder(),
      body: Center(
        child: FutureBuilder<List<Meal>>(
          key: UniqueKey(),
          future: meals,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Meal> meals = snapshot.data!;
              return ListView.builder(
                // separatorBuilder: (context, index) => const SizedBox(
                //   height: 5,
                // ),
                itemCount: meals.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      key: UniqueKey(),
                      contentPadding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(meal: meals[index]),
                          ),
                        );
                      },
                      leading: Image.network(
                        meals[index].strMealThumb,
                        width: 100,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        meals[index].strMeal,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(meals[index].excerpt),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Resep makanan'),
//       ),
//       body: ListView.builder(
//         itemCount: dataResep.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => DetailScreen(
//                       reseps: dataResep[index],
//                     ),
//                   ));
//             },
//             child: Card(
//                 child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(30),
//                     child: Image.asset(
//                       dataResep[index].image,
//                       width: 150,
//                       height: 150,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                   Text(
//                     dataResep[index].name,
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                         color: Colors.blueAccent),
//                   ),
//                   Text(' HTM:${dataResep[index].htm}'),
//                   ClipOval(
//                     child: Material(
//                         color: Colors.blue, //button color
//                         child: InkWell(
//                           splashColor: Colors.red,
//                           child: SizedBox(
//                               width: 30,
//                               height: 30,
//                               child: Icon(Icons.favorite)),
//                           onTap: () {},
//                         )),
//                   ),
//                 ])
//               ],
//             )),
//           );
//         },
//       ),
//     );
//   }
// }
