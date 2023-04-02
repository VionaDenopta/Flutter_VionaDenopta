import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas/bloc/contact_event.dart';
import 'package:tugas/bloc/contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactState(List.empty(growable: true))) {
    on<Add>((event, emit) {
      state.contacts.add(event.contactModel);
      emit(ContactState(state.contacts));
    });
    on<Remove>((event, emit) {
      state.contacts.removeAt(event.index);
      debugPrint("${state.contacts.length}");
      emit(ContactState(state.contacts));
    });
    on<Update>((event, emit) {
      state.contacts[event.index] = event.contactModel;
      emit(ContactState(state.contacts));
    });
  }
}
