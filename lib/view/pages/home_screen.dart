import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app_starter/controller/note_controller.dart';
import 'package:note_app_starter/view/pages/form_screen.dart';
import 'package:note_app_starter/view/widgets/note_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NoteController());
    var noteController = Get.find<NoteController>();
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
        onPressed: () async {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const FormScreen()),
          // );
          await noteController.postNotes("Dummy", "Dummy");

          noteController.getNotes();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
