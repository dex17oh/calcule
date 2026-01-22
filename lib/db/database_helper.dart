import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        specialite TEXT,
        annee TEXT,
        semestre TEXT,
        module TEXT,
        exam REAL,
        td REAL,
        tp REAL
      )
    ''');
  }

  

  Future<void> saveNote({
    required String specialite,
    required String annee,
    required String semestre,
    required String module,
    required double exam,
    double? td,
    double? tp,
  }) async {
    final db = await instance.database;

    await db.insert('notes', {
      'specialite': specialite,
      'annee': annee,
      'semestre': semestre,
      'module': module,
      'exam': exam,
      'td': td,
      'tp': tp,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Map<String, Map<String, double?>>> loadNotes({
    required String specialite,
    required String annee,
    required String semestre,
  }) async {
    final db = await instance.database;

    final result = await db.query(
      'notes',
      where: 'specialite = ? AND annee = ? AND semestre = ?',
      whereArgs: [specialite, annee, semestre],
    );

    Map<String, Map<String, double?>> data = {};

    for (var row in result) {
      data[row['module'] as String] = {
        'exam': row['exam'] as double?,
        'td': row['td'] as double?,
        'tp': row['tp'] as double?,
      };
    }

    return data;
  }
}
