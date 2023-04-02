import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas/pages/contact_list_page.dart';
import 'package:tugas/pages/contact_new_page.dart';
import 'package:tugas/pages/contact_update_page.dart';
import 'package:tugas/pages/home_page.dart';
import 'package:tugas/stores/contact_store.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactStore(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const ContactListPage(),
        "/contact/new": (context) => const ContactNewPage(),
        "/contact/update": (context) => const ContactUpdatePage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: const HomePage(),
    );
  }
}
