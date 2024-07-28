import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:encrypt/encrypt.dart';

import 'model_vh_contr.dart';

class DbHelperVhk {
  static final DbHelperVhk _dbHelperVhk = DbHelperVhk._internal();

  String tblTodo = 'todo';
  String colId = 'id';
  String colTitle = 'title';
  String coldate = 'date';

  String coldateProizv = 'dateProizv';
  String coldateObsl = 'dateObsl';
  String coltu = 'tu';
  String colpartiya = 'partiya';
  String colproizvoditel = 'proizvoditel';
  String colsertifikat = 'sertifikat';
  String colpokazatelname1 = 'pokazatelname1';
  String colntdpokazatel1 = 'ntdpokazatel1';
  String colnormatupokazatel1 = 'normatupokazatel1';
  String colsertpokazatel1 = 'sertpokazatel1';
  String colitogpokazatel1 = 'itogpokazatel1';
  String colpokazatelname2 = 'pokazatelname2';
  String colntdpokazatel2 = 'ntdpokazatel2';
  String colnormatupokazatel2 = 'normatupokazatel2';
  String colsertpokazatel2 = 'sertpokazatel2';
  String colitogpokazatel2 = 'itogpokazatel2';
  String colpokazatelname3 = 'pokazatelname3';
  String colntdpokazatel3 = 'ntdpokazatel3';
  String colnormatupokazatel3 = 'normatupokazatel3';
  String colsertpokazatel3 = 'sertpokazatel3';
  String colitogpokazatel3 = 'itogpokazatel3';
  String colpokazatelname4 = 'pokazatelname4';
  String colntdpokazatel4 = 'ntdpokazatel4';
  String colnormatupokazatel4 = 'normatupokazatel4';
  String colsertpokazatel4 = 'sertpokazatel4';
  String colitogpokazatel4 = 'itogpokazatel4';
  String colpokazatelname5 = 'pokazatelname5';
  String colntdpokazatel5 = 'ntdpokazatel5';
  String colnormatupokazatel5 = 'normatupokazatel5';
  String colsertpokazatel5 = 'sertpokazatel5';
  String colitogpokazatel5 = 'itogpokazatel5';
  String colzaklkachestvo = 'zaklkachestvo';
  String colzamechanie = 'zamechanie';
  String coldopolnitelno1 = 'dopolnitelno1';
  String coldopolnitelno2 = 'dopolnitelno2';
  String colpriborname1 = 'priborname1';
  String colpribornumb1 = 'pribornumb1';
  String colpribordate1 = 'pribordate1';
  String colpriborname2 = 'priborname2';
  String colpribornumb2 = 'pribornumb2';
  String colpribordate2 = 'pribordate2';
  String colpriborname3 = 'priborname3';
  String colpribornumb3 = 'pribornumb3';
  String colpribordate3 = 'pribordate3';
  String colpriborname4 = 'priborname4';
  String colpribornumb4 = 'pribornumb4';
  String colpribordate4 = 'pribordate4';
  String colpriborname5 = 'priborname5';
  String colpribornumb5 = 'pribornumb5';
  String colpribordate5 = 'pribordate5';
  String colfilial = 'filial';
  String coldolzhnpredskom = 'dolzhnpredskom';
  String colfiopredskom = 'fiopredskom';
  String coldolzhnproizvrab = 'dolzhnproizvrab';
  String colfioproizvrab = 'fioproizvrab';
  String colphoto1 = 'photo1';
  String colphoto2 = 'photo2';
  String colphoto3 = 'photo3';
  String colphoto4 = 'photo4';
  String colphoto5 = 'photo5';

  DbHelperVhk._internal() {}

  factory DbHelperVhk() {
    return _dbHelperVhk;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/todos_vhk.db';
    final Database dbTodos =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return dbTodos;
  }

  Future<void> _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tblTodo($colId INTEGER PRIMARY KEY, $colTitle TEXT, ' +
            '$coldate TEXT,$coldateProizv TEXT,$coldateObsl TEXT,$colphoto5 TEXT,$colphoto4 TEXT,$colphoto3 TEXT,$colphoto2 TEXT,$colphoto1 TEXT,$colfioproizvrab TEXT,$coldolzhnproizvrab TEXT,$colfiopredskom TEXT,$coldolzhnpredskom TEXT,$colfilial TEXT,$colzaklkachestvo TEXT,$colpribornumb3 TEXT,$colpribordate2 TEXT,$colpriborname3 TEXT,$colpribordate5 TEXT,$colpribornumb5 TEXT,$colpriborname5 TEXT,$colpribordate4 TEXT,$colpribornumb4 TEXT,$colpriborname4 TEXT,$colpribordate3 TEXT,$colpribornumb2 TEXT,$colpriborname2 TEXT,$colpribordate1 TEXT,$colpribornumb1 TEXT,$colpriborname1 TEXT,$coldopolnitelno2 TEXT,$coldopolnitelno1 TEXT,$colzamechanie TEXT,$colitogpokazatel5 TEXT,$colsertpokazatel5 TEXT,$colnormatupokazatel5 TEXT,$colntdpokazatel5 TEXT,$colpokazatelname5 TEXT,$colitogpokazatel4 TEXT,$colsertpokazatel4 TEXT,$colnormatupokazatel4 TEXT,$colntdpokazatel4 TEXT,$colpokazatelname4 TEXT,$colitogpokazatel3 TEXT,$colsertpokazatel3 TEXT,$colnormatupokazatel3 TEXT,$colntdpokazatel3 TEXT,$colpokazatelname3 TEXT,$colitogpokazatel2 TEXT,$colsertpokazatel2 TEXT,$colnormatupokazatel2 TEXT,$colntdpokazatel2 TEXT,$colpokazatelname2 TEXT,$colitogpokazatel1 TEXT,$colsertpokazatel1 TEXT,$colnormatupokazatel1 TEXT,$colntdpokazatel1 TEXT,$colpokazatelname1 TEXT,$colsertifikat TEXT,$colproizvoditel TEXT,$colpartiya TEXT,$coltu TEXT)');
  }

  Future<int> insertTodo(Todo todo) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblTodo, todo.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getTodos() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db
        ?.rawQuery('SELECT * FROM $tblTodo ORDER BY $colId DESC'); /*ASC */
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblTodo'));
    return result;
  }

  Future<int> getTodoCountVhk() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblTodo');
    final int countVhk = Sqflite.firstIntValue(result);
    return countVhk;
  }

  Future<int> updateTodo(Todo todo) async {
    final Database db = await this.db;
    final int result = await db?.update(tblTodo, todo.toMap(),
            where: '$colId = ?', whereArgs: [todo.id]) ??
        0;
    return result;
  }

  Future<int> deleteTodo(int id) async {
    int result;
    final Database db = await this.db;
    result =
        await db?.rawDelete('DELETE FROM $tblTodo WHERE $colId = $id') ?? 0;
    return result;
  }
}
