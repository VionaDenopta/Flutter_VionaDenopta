import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('MaterialApp'),
        backgroundColor: Colors.black,
      ) ,
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: const[
            ListTile(title: Text("Home Page")),
            ListTile(title: Text("About Page")),
          ],
        ),
      ),

      body: const Center(

        child: Text('This is MaterialApp'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    ) ;
  }
}