import 'package:note_app_starter/helper/db_helper.dart';

class NoteService {
  getNote() async {
    try {
      var data = await DbHelper.get();
      print(data);
    } catch (e) {
      print(e);
    }
  }

  addNote(String title, String description) {
    try {
      DbHelper.insert(title: title, decription: description);
    } catch (e) {
      print(e);
    }
  }
}
