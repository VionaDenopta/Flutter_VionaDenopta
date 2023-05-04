import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:m8s17/contact.dart';
import 'package:m8s17/contact_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentDate = DateTime.now();

  List<Contact> contacts = List.empty(growable: true);

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  DateTime contactDate = DateTime.now();
  Color contactColor = Colors.blueAccent;

  int selectedId = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.phone_android,
              color: Colors.black54,
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Create New Contact",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            const Divider(height: 30, thickness: 2),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Harap isi field ini!";
                      }
                      if (!RegExp("^[A-Za-z]+(\\s[A-Za-z]+)+")
                          .hasMatch(value)) {
                        return "Nama minimal terdiri dari 2 kata.";
                      }
                      if (!RegExp("^[A-Z][a-z]+(\\s[A-Z][a-z]+)+")
                          .hasMatch(value)) {
                        return "Setiap kata harus dimulai dengan huruf kapital";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Insert your name",
                      labelText: "Name",
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: numberController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Harap isi field ini!";
                      }
                      if (!RegExp("^[0-9]+").hasMatch(value)) {
                        return "Harap isi dengan angka";
                      }
                      if (!RegExp("^[0][0-9]+").hasMatch(value)) {
                        return "Nomor telepon harus dimulai dengan angka 0";
                      }
                      if (value.length < 8 || value.length > 15) {
                        return "Nomor telepon harus memiliki minimal 8 digit dan maksimal 15 digit";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "+62 ....",
                      labelText: "Nomor",
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildDatePicker(context),
                  const SizedBox(height: 10),
                  buildColorPicker(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String name = nameController.text;
                          String number = numberController.text;
                          int id =0;
                          DateTime date = contactDate;
                          Color color = contactColor;

                          setState(() {
                            contacts.add(
                              Contact(
                                id: id,
                                  name: name,
                                  phone: number,
                            ),
                            );
                          });
                          clearForm();
                        },
                        child: const Text("Submit"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          String name = nameController.text;
                          String phone = numberController.text;
                          int id =0;

                          if (selectedId != -1) {
                            setState(() {
                              contacts[selectedId] = Contact(
                               id: id,
                                  name: name,
                                  phone: phone,
                            
                              );
                            });
                            clearForm();
                          }
                        },
                        child: const Text("Update"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          clearForm();
                        },
                        child: const Text("Cancel"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "List Contacts",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(

                      child: Text(
                        contacts[index].name.substring(0, 1),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(contacts[index].name),

                      ],
                    ),
                    subtitle: Text(contacts[index].phone),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {
                              nameController.text = contacts[index].name;
                              numberController.text = contacts[index].phone;

                              setState(() {
                                selectedId = index;
                              });
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                        onPressed: () {
                            setState(() {
                              contacts.removeAt(index);
                            });
                        },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void clearForm() {
    setState(() {
      nameController.clear();
      numberController.clear();
      contactDate = DateTime.now();
      contactColor = Colors.blueAccent;
    });
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Date"),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );
                if (selectDate != null) {
                  setState(() {
                    contactDate = selectDate;
                  });
                }
              },
              child: const Text("Select"),
            )
          ],
        ),
        Text(DateFormat("dd-MM-yyyy").format(contactDate))
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Color"),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 10,
          width: double.infinity,
          color: contactColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(contactColor),
            ),
            child: const Text("Pick color"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Pick Your Color"),
                    content: BlockPicker(
                      pickerColor: contactColor,
                      onColorChanged: (value) {
                        setState(() {
                          contactColor = value;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Save"),
                      )
                    ],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
