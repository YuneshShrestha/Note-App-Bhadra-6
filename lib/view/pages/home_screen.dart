import 'package:flutter/material.dart';
import 'package:note_app_starter/view/widgets/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Note App"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NoteCard(
              title: "Title ${index + 1}",
              description: "Description ${index + 1}",
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
