import 'package:flutter/material.dart';
import 'package:tugas/components/contact_form.dart';

class ContactUpdatePage extends StatefulWidget {
  const ContactUpdatePage({super.key});

  @override
  State<ContactUpdatePage> createState() => _ContactUpdatePageState();
}

class _ContactUpdatePageState extends State<ContactUpdatePage> {
  @override
  Widget build(BuildContext context) {
    final selectedId = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("New Contact"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ContactForm(updateRequestId: selectedId),
      ),
    );
  }
}
