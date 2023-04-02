import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData.dark(),
      home: MyFlutterApp(),
    );
  }
}

class Person {
  String? name;
  String? phone;

  Person(this.name, this.phone);
}

// Soal Prioritas 1

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Person> persons = [
      Person("Leanne Graham", "1-770-736-8031 x56442"),
      Person("Ervin Howell", "010-692-6593 x09125"),
      Person("Clementine Bauch", "1-463-123-4447"),
      Person("Patricia Lebsack", "493-170-9623 x156"),
      Person("Chelsey Dietrich", "(254)954-1289"),
      Person("Mrs. Dennis Schulist", "1-477-935-8478 x6430"),
      Person("Kurtis Weissnat", "210.067.6132"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialApp"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              child: Text(
                "${persons[index].name?.substring(0, 1)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text("${persons[index].name}"),
            subtitle: Text("${persons[index].phone}"),
          );
        },
      ),
    );
  }
}

// Soal Explorasi

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      "Learn Flutter",
      "Learn ReactJS",
      "Learn VueJS",
      "Learn Tailwind CSS",
      "Learn UI/UX",
      "Learn Figma",
      "Learn Digital Marketing"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Information"),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
