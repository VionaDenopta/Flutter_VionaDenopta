import 'package:flutter/material.dart';
import 'package:tugas/components/contact_list.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Contacts"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const ListTile(title: Text("Home")),
            ListTile(
              title: const Text("New Contact"),
              onTap: () {
                Navigator.pushNamed(context, "/contact/new");
              },
            ),
            const ListTile(title: Text("Settings")),
          ],
        ),
      ),
      body: const ContactList(),
    );
  }
}
