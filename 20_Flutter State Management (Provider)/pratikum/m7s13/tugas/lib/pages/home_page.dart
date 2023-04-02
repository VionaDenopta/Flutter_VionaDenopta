import 'package:flutter/material.dart';
import 'package:tugas/components/contact_form.dart';
import 'package:tugas/components/contact_list.dart';
import 'package:tugas/pages/contact_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const ListTile(title: Text("Home")),
            ListTile(
              title: const Text("List Contacts"),
              onTap: () {
                Navigator.pushNamed(context, "/contactlist");
              },
            ),
            const ListTile(title: Text("Settings")),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: ContactListPage(),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: const [
      //       Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 16),
      //         child: ContactForm(),
      //       ),
      //       Flexible(child: ContactList())
      //     ],
      //   ),
      // ),
    );
  }
}
