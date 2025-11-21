import 'package:get/get.dart';
import 'package:note_app_starter/services/note_service.dart';

class NoteController extends GetxController {
  getNotes() {
    var noteService = NoteService();
    noteService.getNote();
  }

  postNotes(String title, String description) {
    var noteService = NoteService();
    noteService.addNote(title, description);
  }
}
