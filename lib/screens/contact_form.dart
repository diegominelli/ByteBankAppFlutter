import 'package:bytebankappflutter/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle style =
    //   ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Full name',
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: const InputDecoration(
                  labelText: 'Account number',
                ),
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  // style: style,
                  child: const Text('Create'),
                  onPressed: () {
                    // ignore: unused_local_variable
                    final String name = _nameController.text;
                    // ignore: unused_local_variable
                    final int? accountNumber =
                        int.tryParse(_accountNumberController.text);
                    final Contact newContact = Contact(name, accountNumber!);
                    Navigator.pop(context, newContact);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
