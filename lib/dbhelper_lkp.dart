import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './object_detail_lkp.dart';

import 'model_lkp.dart';

class DbHelperLkp {
  static final DbHelperLkp _dbHelperLkp = DbHelperLkp._internal();
  String tblTodo = 'todo';
  String colId = 'id';
  String coldate = 'date';
  String colTitle = 'title';
  String colDateObsl1 = 'dateObsl1';
  String colDateObsl2 = 'dateObsl2';
  String colsquareclear = 'squareclear';
  String colsquarerest = 'squarerest';
  String colconstroldcoat = 'constroldcoat';
  String colinst = 'inst';
  String coliso8501 = 'iso8501';
  String colprepmethod = 'prepmethod';
  String coldegrofdegr = 'degrofdegr';
  String coldegrofoxid = 'degrofoxid';
  String coldegrofdedust1 = 'degrofdedust1';
  String coldegrofdedust2 = 'degrofdedust2';
  String colroughness = 'roughness';
  String colsurfsalts = 'surfsalts';

  String coltempair = 'tempair';
  String coltempsurf = 'tempsurf';
  String colrelathumid = 'relathumid';
  String coldewpoint = 'dewpoint';
  String coldifftemp = 'difftemp';

  String coltechcondmat = 'techcondmat';
  String coltechcondmat1 = 'techcondmat1';
  String colnumdoflay = 'numdoflay';
  String colsquarenew = 'squarenew';
  String colthickofwellay = 'thickofwellay';
  String colthickofdrylay = 'thickofdrylay';
  String colthickofdrylay1 = 'thickofdrylay1';
  String colthickofdrylay2 = 'thickofdrylay2';
  String colthickofdrylay3 = 'thickofdrylay3';
  String colthickofdrylay4 = 'thickofdrylay4';
  String colthickofdrylay5 = 'thickofdrylay5';
  String colcontin = 'contin';
  String coltimedry = 'timedry';
  String coldegrdry = 'degrdry';
  String coldefdur = 'defdur';

  String colapperance = 'apperance';
  String colbgcolor = 'bgcolor';
  String colkatRal = 'katRal';
  String colcolorRal = 'colorRal';
  String colphotoRal = 'photoRal';
  String coladhesion = 'adhesion';
  String coladhesion1 = 'adhesion1';
  String coladhesion2 = 'adhesion2';
  String coladhesion3 = 'adhesion3';
  String coladhesion4 = 'adhesion4';
  String coladhesion5 = 'adhesion5';
  String colphotoAdhesion = 'photoAdhesion';
  String coladhesionmethod = 'adhesionmethod';
  String coldielcont = 'dielcont';

  String colthickinsulmeter = 'thickinsulmeter';
  String coltickinsulmeternumb = 'tickinsulmeternumb';
  String coltickinsulmeterdate = 'tickinsulmeterdate';
  String coladhesmeter = 'adhesmeter';
  String coladhesmeternumb = 'adhesmeternumb';
  String coladhesmeterdate = 'adhesmeterdate';
  String colcontinmeter = 'continmeter';
  String colcontinmeternumb = 'continmeternumb';
  String colcontinmeterdate = 'continmeterdate';
  String colsetvik = 'setvik';
  String colsetviknumb = 'setviknumb';
  String colsetvikdate = 'setvikdate';
  String colchangecolor = 'changecolor';
  String colchangegloss = 'changegloss';
  String colmudretant = 'mudretant';
  String colchalking = 'chalking';

  String colhighestDegreeD = 'highestDegreeD';
  String colrastresk = 'rastresk';
  String colotslaivan = 'otslaivan';
  String colvyvetriv = 'vyvetriv';
  String colpuzyr = 'puzyr';
  String colkorroziya = 'korroziya';
  String colhighestDegreeZ = 'highestDegreeZ';

  String coldescription = 'description';

  String colphoto = 'photo';
  String colphotoISO = 'photoISO';
  String colphotoDust = 'photoDust';
  String colphotoRoughness = 'photoRoughness';

  String colfilial = 'filial';
  String coldolzhnpredskom = 'dolzhnpredskom';
  String colfiopredskom = 'fiopredskom';
  String coldolzhnproizvrab = 'dolzhnproizvrab';
  String colfioproizvrab = 'fioproizvrab';
  String coldolzhnnachuchastka = 'dolzhnnachuchastka';
  String colfionachuchastka = 'fionachuchastka';
  String coldolzhnpredstzakazch = 'dolzhnpredstzakazch';
  String colfiopredstzakazch = 'fiopredstzakazch';
  String coldolzhnpredstzakazchSK = 'dolzhnpredstzakazchSK';
  String colfiopredstzakazchSK = 'fiopredstzakazchSK';
  String coldolzhnpredststroitSK = 'dolzhnpredststroitSK';
  String colfiopredststroitSK = 'fiopredststroitSK';
  String coldolzhnpredststroit = 'dolzhnpredststroit';
  String colfiopredststroit = 'fiopredststroit';
  String coldolzhndruglic = 'dolzhndruglic';
  String colfiodruglic = 'fiodruglic';

  DbHelperLkp._internal();

  factory DbHelperLkp() {
    return _dbHelperLkp;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/todos_1.db';
    final Database dbTodos =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return dbTodos;
  }

  Future<void> _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tblTodo($colId INTEGER PRIMARY KEY, $colTitle TEXT, ' +
            '$coldate TEXT,$colDateObsl1 TEXT,$colDateObsl2 TEXT,$colfiodruglic TEXT,$coldolzhndruglic  TEXT,$colfiopredststroit TEXT,$coldolzhnpredststroit TEXT,$colfiopredststroitSK TEXT,$coldolzhnpredststroitSK TEXT,$colfiopredstzakazch TEXT,$colfiopredstzakazchSK TEXT,$coldolzhnpredstzakazchSK TEXT,$coldolzhnpredstzakazch TEXT,$colfionachuchastka TEXT,$coldolzhnnachuchastka TEXT,$colfioproizvrab TEXT,$coldolzhnproizvrab TEXT,$colfiopredskom TEXT,$coldolzhnpredskom TEXT,$colfilial TEXT,$colphotoRoughness TEXT,$colphotoDust TEXT,$colphotoISO TEXT, $colphoto TEXT,$colsquareclear TEXT,$colsquarerest TEXT,$colconstroldcoat TEXT,$colinst TEXT,$coliso8501 TEXT,$colprepmethod TEXT,$coldegrofdegr TEXT,$coldegrofoxid TEXT,$coldegrofdedust1 TEXT,$coldegrofdedust2 TEXT,$colroughness TEXT,$colsurfsalts TEXT,$coltempair TEXT,$coltempsurf TEXT,$colrelathumid TEXT,$coldewpoint TEXT,$coldifftemp TEXT,$coltechcondmat TEXT,$coltechcondmat1 TEXT,$colnumdoflay TEXT,$colsquarenew TEXT,$colthickofwellay TEXT,$colthickofdrylay TEXT,$colthickofdrylay1 TEXT,$colthickofdrylay2 TEXT,$colthickofdrylay3 TEXT,$colthickofdrylay4 TEXT,$colthickofdrylay5 TEXT,$colcontin TEXT,$coltimedry TEXT,$coldegrdry TEXT,$coldefdur TEXT,$colapperance TEXT,$colbgcolor TEXT,$colkatRal TEXT,$colcolorRal TEXT,$colphotoRal TEXT,$coladhesion  TEXT,$coladhesion1 TEXT,$coladhesion2 TEXT,$coladhesion3 TEXT,$coladhesion4 TEXT,$coladhesion5 TEXT,$coladhesionmethod TEXT,$colphotoAdhesion TEXT,$coldielcont TEXT,$colthickinsulmeter TEXT,$coltickinsulmeternumb TEXT,$coltickinsulmeterdate TEXT,$coladhesmeter TEXT,$coladhesmeternumb TEXT,$coladhesmeterdate TEXT,$colcontinmeter TEXT,$colcontinmeternumb TEXT,$colcontinmeterdate TEXT,$colsetvik TEXT,$colsetviknumb TEXT,$colsetvikdate TEXT,$colchangecolor TEXT,$colchangegloss TEXT,$colmudretant TEXT,$colhighestDegreeD TEXT,$colrastresk TEXT,$colotslaivan TEXT,$colvyvetriv TEXT,$colpuzyr TEXT,$colkorroziya TEXT,$colhighestDegreeZ TEXT,$colchalking TEXT,$coldescription TEXT)');
  }

  Future<int> insertTodo(Todo todo) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblTodo, todo.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getTodos() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db?.rawQuery(
        'SELECT * FROM $tblTodo ORDER BY $colId DESC'); /*$colPriority ASC */
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblTodo'));
    return result;
  }

  Future<int> getTodoCountLkp() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblTodo');
    final int countLkp = Sqflite.firstIntValue(result);
    return countLkp;
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
