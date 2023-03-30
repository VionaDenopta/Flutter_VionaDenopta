import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Application",
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialApp"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
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
      body: Center(
        child: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("L"),
              ),
              title: Text("Leanne Graham"),
              subtitle: Text("1-770-736-8031 x56442"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("E"),
              ),
              title: Text("Ervin Howell"),
              subtitle: Text("010-692-6593 x09125"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("C"),
              ),
              title: Text("Clementine Bauch"),
              subtitle: Text("1-463-123-4447"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("P"),
              ),
              title: Text("Patricia Lebsack"),
              subtitle: Text("493-170-9623 x156"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("C"),
              ),
              title: Text("Chelsea Dietrich"),
              subtitle: Text("(254)954-1289"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("M"),
              ),
              title: Text("Mrs. Dennis Schulist"),
              subtitle: Text("1-477-935-8478 x6430"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                child: Text("K"),
              ),
              title: Text("Kurtis Weissnat"),
              subtitle: Text("210-067 6132"),
            ),
          ],
        ),
      ),
    );
  }
}
