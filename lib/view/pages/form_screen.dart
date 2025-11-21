import 'package:flutter/material.dart';
class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Title
              TextField(
                decoration: const InputDecoration(
                  hintText: "Title",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              // Image
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_a_photo,
                        size: 50,
                      ),
                      Flexible(
                        child: Text("Add Image"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Description
              TextField(
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "Description",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              // Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
