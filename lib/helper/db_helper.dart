import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:get/get.dart';

class DbHelper {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    final currentDBPath = path.join(dbPath, "note.db");

    final database = await sql.openDatabase(
      currentDBPath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          "CREATE TABLE note (id INTEGER PRIMARY KEY, title  TEXT,  description TEXT)",
        );
      },
    );
    return database;
  }

  static Future<void> insert({
    required String title,
    required String decription,
  }) async {
    var db = await database();
    var data = await db.rawInsert(
      "INSERT INTO note(title , description) VALUES(? , ?)",
      [title, decription],
    );
    if (data == 0) {
      // SnackBar something wenot wrong
      Get.snackbar(
        "Data not Inserted",
        "Error",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      // Data Successfully inserted
      Get.snackbar(
        "Data Inserted",
        "success",
        backgroundColor: Colors.greenAccent,
        colorText: Colors.white,
      );
    }
  }

  static Future<List<Map>> get() async {
    var db = await database();
    return await db.rawQuery('SELECT * FROM note');
  }
}
