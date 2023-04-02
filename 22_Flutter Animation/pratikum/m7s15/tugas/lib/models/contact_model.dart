import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ContactModel extends Equatable {
  final String nama;
  final String nomor;
  final Color color;
  final DateTime dateTime;

  const ContactModel({
    required this.nama,
    required this.nomor,
    required this.color,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [nama, nomor, color, dateTime];
}
