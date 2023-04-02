import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tugas/bloc/contact_bloc.dart';
import 'package:tugas/bloc/contact_event.dart';
import 'package:tugas/bloc/contact_state.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  void dispose() {
    super.dispose();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return state.contacts.isEmpty
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
                itemCount: state.contacts.length,
                // itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: state.contacts[index].color,
                      child: Text(
                        state.contacts[index].nama.substring(0, 1),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(state.contacts[index].nama),
                        Text(
                          DateFormat("dd-MM-yyyy")
                              .format(state.contacts[index].dateTime),
                        )
                      ],
                    ),
                    subtitle: Text(state.contacts[index].nomor),
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
                            context.read<ContactBloc>().add(Remove(index));
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
