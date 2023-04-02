import 'package:equatable/equatable.dart';
import 'package:tugas/models/contact_model.dart';

class ContactState {
  final List<ContactModel> contacts;

  const ContactState(this.contacts);

  @override
  List<Object?> get props => [contacts];
}
