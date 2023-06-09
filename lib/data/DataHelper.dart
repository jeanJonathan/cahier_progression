import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DataHelper { // Cette classe est conçue pour être un singleton
  static final _databaseName = "multimedia.db";
  static final _databaseVersion = 1;

  // qu'une seule instance de la classe DataHelper en cours d'utilisation dans l'application
  // Design pattern singleton
  static Database? _database; //renvoie une instance de la base de données
  //soit en la créant pour la première fois, soit en renvoyant l'instance existante si elle existe déjà

  static final DataHelper instance = DataHelper._privateConstructor();

  DataHelper._privateConstructor();

  // Renvoie l'instance singleton de la base de données
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  // Initialise la base de données
  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // Creation des tables de la base de données
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE notes (
      id INTEGER PRIMARY KEY,
      chapter TEXT NOT NULL,
      level TEXT NOT NULL,
      note TEXT NOT NULL
    )
    ''');

    await db.execute('''
    CREATE TABLE videos (
      id INTEGER PRIMARY KEY,
      sport TEXT NOT NULL,
      level TEXT NOT NULL,
      url TEXT NOT NULL
    )
    ''');
  }
}
