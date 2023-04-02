import 'package:flutter/material.dart';
import 'package:tugas/models/contact_model.dart';

class ContactStore with ChangeNotifier {
  final List<ContactModel> _contacts = [];

  List<ContactModel> get contacts => _contacts;

  void add(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void update(int index, ContactModel contact) {
    _contacts[index] = contact;
    notifyListeners();
  }

  void delete(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
