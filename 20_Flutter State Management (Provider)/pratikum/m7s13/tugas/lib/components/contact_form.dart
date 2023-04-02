import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tugas/models/contact_model.dart';
import 'package:tugas/stores/contact_store.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key, this.updateRequestId = -1});

  final int updateRequestId;

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  DateTime currentDate = DateTime.now();
  DateTime _dueDate = DateTime.now();

  Color _currentColor = Colors.green;

  TextEditingController namaController = TextEditingController();
  TextEditingController nomorController = TextEditingController();
  Color colorController = Colors.green;
  DateTime dateTimeController = DateTime.now();

  int selectedId = -1;

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactStore>(context);

    if (widget.updateRequestId != -1) {
      namaController.text =
          contactProvider.contacts[widget.updateRequestId].nama;
      nomorController.text =
          contactProvider.contacts[widget.updateRequestId].nomor;
      colorController = contactProvider.contacts[widget.updateRequestId].color;
      dateTimeController =
          contactProvider.contacts[widget.updateRequestId].dateTime;
    }

    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Icon(
            Icons.phone_android,
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "Create New Contact",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
          ),
          const Divider(height: 30, thickness: 2),
          TextFormField(
            controller: namaController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Harap isi field ini!";
              }
              if (!RegExp("^[A-Za-z]+(\\s[A-Za-z]+)+").hasMatch(value)) {
                return "Nama minimal terdiri dari 2 kata.";
              }
              if (!RegExp("^[A-Z][a-z]+(\\s[A-Z][a-z]+)+").hasMatch(value)) {
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
            controller: nomorController,
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.updateRequestId != -1
                  ? const SizedBox(
                      width: 0,
                    )
                  : ElevatedButton(
                      onPressed: () {
                        String name = namaController.text;
                        String number = nomorController.text;
                        DateTime date = currentDate;
                        Color color = _currentColor;

                        contactProvider.add(
                          ContactModel(
                            color: color,
                            nama: name,
                            nomor: number,
                            dateTime: date,
                          ),
                        );
                        clearForm();
                      },
                      child: const Text("Submit"),
                    ),
              widget.updateRequestId != -1
                  ? ElevatedButton(
                      onPressed: () {
                        String name = namaController.text;
                        String number = nomorController.text;
                        DateTime date = dateTimeController;
                        Color color = colorController;

                        contactProvider.update(
                          widget.updateRequestId,
                          ContactModel(
                            nama: name,
                            nomor: number,
                            color: color,
                            dateTime: date,
                          ),
                        );
                        clearForm();
                      },
                      child: const Text("Update"),
                    )
                  : const SizedBox(width: 0),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  clearForm();
                },
                child: const Text("Cancel"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    _dueDate = selectDate;
                  });
                }
              },
              child: const Text("Select"),
            )
          ],
        ),
        Text(DateFormat("dd-MM-yyyy").format(_dueDate))
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Color"),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 20,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            child: const Text("Pick color"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Pick Your Color"),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (value) {
                        setState(() {
                          _currentColor = value;
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

  void clearForm() {
    setState(() {
      namaController.clear();
      nomorController.clear();
      dateTimeController = DateTime.now();
      colorController = Colors.green;
    });
  }
}
