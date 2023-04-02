import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas/bloc/contact_bloc.dart';
import 'package:tugas/pages/contact_list_page.dart';
import 'package:tugas/pages/contact_new_page.dart';
import 'package:tugas/pages/contact_update_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => const ContactListPage(),
          "/contact/new": (context) => const ContactNewPage(),
          "/contact/update": (context) => const ContactUpdatePage()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        // home: const HomePage(),
      ),
    );
  }
}
