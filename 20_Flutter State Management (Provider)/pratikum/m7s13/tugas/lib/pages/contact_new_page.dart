import 'package:flutter/material.dart';
import 'package:tugas/components/contact_form.dart';

class ContactNewPage extends StatefulWidget {
  const ContactNewPage({super.key});

  @override
  State<ContactNewPage> createState() => _ContactNewPageState();
}

class _ContactNewPageState extends State<ContactNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("New Contact"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const ContactForm(),
      ),
    );
  }
}
