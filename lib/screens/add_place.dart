import 'package:flutter/material.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add new place')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Enter title',
            ),
            controller: _titleController,
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add Place')),
        ]),
      ),
    );
  }
}
