import 'dart:convert';
import 'package:flutter/material.dart';


Contact detailContactResponseFromJson(String str) =>
    Contact.fromJson(json.decode(str));

String detailContactResponseToJson(Contact data) =>
    json.encode(data.toJson());

class Contact {
  Contact({
    required this.id,
    required this.name,
    required this.phone,
  });

  int id;
  String name;
  String phone;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      Contact(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
      };
      
}
List<ListContactResponse> listContactResponseFromJson(String str) =>
    List<ListContactResponse>.from(
      json.decode(str).map(
            (x) => ListContactResponse.fromJson(x),
          ),
    );

String listContactResponseToJson(List<ListContactResponse> data) => json.encode(
      List<dynamic>.from(
        data.map(
          (x) => x.toJson(),
        ),
      ),
    );

class ListContactResponse {
  ListContactResponse({
    this.id,
    this.name,
    this.phone,
  });

  int? id;
  String? name;
  String? phone;

  factory ListContactResponse.fromJson(Map<String, dynamic> json) =>
      ListContactResponse(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
      };
}

