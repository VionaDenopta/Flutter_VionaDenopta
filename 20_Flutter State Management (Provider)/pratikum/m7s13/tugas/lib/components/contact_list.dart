import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tugas/stores/contact_store.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactStore>(context);

    return contactProvider.contacts.isEmpty
        ? Column(
            children: const [
              SizedBox(height: 10),
              Center(
                child: Text("No contacts available"),
              )
            ],
          )
        : ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: false,
            // primary: false,
            itemCount: contactProvider.contacts.length,
            // itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Text(
                    contactProvider.contacts[index].nama.substring(0, 1),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(contactProvider.contacts[index].nama),
                    Text(
                      DateFormat("dd-MM-yyyy")
                          .format(contactProvider.contacts[index].dateTime),
                    )
                  ],
                ),
                subtitle: Text(contactProvider.contacts[index].nomor),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/contact/update",
                              arguments: index);
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          contactProvider.delete(index);
                        });
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
