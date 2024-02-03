import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database? database;
List todosList = [];

class DbConnection {
  Future getDatabase() async {
    if (database != null) {
      return database;
    }
    database = await initializeDatabase('Local.db');
    return database;
  }

  Future initializeDatabase(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);
    return await openDatabase(path, version: 1, onCreate: createDatabase);
  }

  Future createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE localdata(id INTEGER PRIMARY KEY, Name TEXT NOT NULL)
      
      ''');
  }

  Future insertData({Name}) async {
    final db = await database;
    await db?.insert("localdata", {"Name": Name});
    print('$Name inserted successfully');
    return 'added';
  }

  Future readData() async {
    final db = await getDatabase();
    if (db != null) {
      final insertedData = await db.query('localdata');
      todosList = insertedData;
      // print('List is : $todosList');
      return 'successfully read';
    }
  }

  // Future removeData() async {}
}
