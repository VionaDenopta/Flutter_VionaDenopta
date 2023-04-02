import 'package:equatable/equatable.dart';
import 'package:tugas/models/contact_model.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class Add extends ContactEvent {
  const Add(this.contactModel);

  final ContactModel contactModel;
}

class Remove extends ContactEvent {
  const Remove(this.index);

  final int index;
}

class Update extends ContactEvent {
  const Update(this.index, this.contactModel);

  final int index;
  final ContactModel contactModel;
}
