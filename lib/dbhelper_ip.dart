import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './object_detail_ip.dart';
import './start_page.dart';

import 'model_ip.dart';

class DbHelperIp {
  static final DbHelperIp _dbHelperIp = DbHelperIp._internal();
  String tblTodo = 'todo';
  String colId = 'id';
  String colTitle = 'title';
  String colPiketkm = 'piketkm';
  String colCoordinate = 'coordinate';
  String colLengthpit = 'lengthpit';
  String colDepthpit = 'depthpit';
  String colOsnovanie = 'osnovanie';
  String colDate = 'date';
  String colDateObsl = 'dateObsl';
  String colDateObsl2 = 'dateObsl2';
  String colDescription = 'description';
  String coldiameter = 'diameter';
  String colthickpipe = 'thickpipe';

  String colthickpipe1 = 'thickpipe1';
  String colthickpipe2 = 'thickpipe2';
  String colthickpipe3 = 'thickpipe3';
  String colthickpipe4 = 'thickpipe4';
  String colgradesteel = 'gradesteel';
  String colmetalldamage = 'metalldamage';

  String colcharmetdamage1 = 'charmetdamage1';
  String collochourmetdamage1 = 'lochourmetdamage1';
  String collocrasstmetdamage1 = 'locrasstmetdamage1';
  String colsizelengthmetdamage1 = 'sizelengthmetdamage1';
  String colsizewidthmetdamage1 = 'sizewidthmetdamage1';
  String colsizedepthmetdamage1 = 'sizedepthmetdamage1';

  String colcharmetdamage2 = 'charmetdamage2';
  String collochourmetdamage2 = 'lochourmetdamage2';
  String collocrasstmetdamage2 = 'locrasstmetdamage2';
  String colsizelengthmetdamage2 = 'sizelengthmetdamage2';
  String colsizewidthmetdamage2 = 'sizewidthmetdamage2';
  String colsizedepthmetdamage2 = 'sizedepthmetdamage2';

  String colcharmetdamage3 = 'charmetdamage3';
  String collochourmetdamage3 = 'lochourmetdamage3';
  String collocrasstmetdamage3 = 'locrasstmetdamage3';
  String colsizelengthmetdamage3 = 'sizelengthmetdamage3';
  String colsizewidthmetdamage3 = 'sizewidthmetdamage3';
  String colsizedepthmetdamage3 = 'sizedepthmetdamage3';

  String coltypeinsul = 'typeinsul';
  String colinsuladhes1 = 'insuladhes1';
  String colinsulcharadhes1 = 'insulcharadhes1';
  String colthickinsul1 = 'thickinsul1';

  String colinsuladhes2 = 'insuladhes2';
  String colinsulcharadhes2 = 'insulcharadhes2';
  String colthickinsul2 = 'thickinsul2';

  String colinsuladhes3 = 'insuladhes3';
  String colinsulcharadhes3 = 'insulcharadhes3';
  String colinsuladhes4 = 'insuladhes4';
  String colinsulcharadhes4 = 'insulcharadhes4';
  String colthickinsul3 = 'thickinsul3';
  String colthickinsul4 = 'thickinsul4';
  String colthickinsul5 = 'thickinsul5';
  String colthickinsul6 = 'thickinsul6';
  String colthickinsul7 = 'thickinsul7';
  String colthickinsul8 = 'thickinsul8';
  String colthickinsul9 = 'thickinsul9';
  String colthickinsul10 = 'thickinsul10';
  String colthickinsul11 = 'thickinsul11';
  String colthickinsul12 = 'thickinsul12';
  String colthickinsul = 'thickinsul';

  String colinsuldamage = 'insuldamage';
  String colinsulcondit = 'insulcondit';

  String colcharinsuldamage1 = 'charinsuldamage1';
  String collochourinsuldamage1 = 'lochourinsuldamage1';
  String collocrasstinsuldamage1 = 'locrasstinsuldamage1';
  String colsizelengthinsuldamage1 = 'sizelengthinsuldamage1';
  String colsizewidthinsuldamage1 = 'sizewidthinsuldamage1';
  String colsizedepthinsuldamage1 = 'sizedepthinsuldamage1';

  String colcharinsuldamage2 = 'charinsuldamage2';
  String collochourinsuldamage2 = 'lochourinsuldamage2';
  String collocrasstinsuldamage2 = 'locrasstinsuldamage2';
  String colsizelengthinsuldamage2 = 'sizelengthinsuldamage2';
  String colsizewidthinsuldamage2 = 'sizewidthinsuldamage2';
  String colsizedepthinsuldamage2 = 'sizedepthinsuldamage2';

  String colcharinsuldamage3 = 'charinsuldamage3';
  String collochourinsuldamage3 = 'lochourinsuldamage3';
  String collocrasstinsuldamage3 = 'locrasstinsuldamage3';
  String colsizelengthinsuldamage3 = 'sizelengthinsuldamage3';
  String colsizewidthinsuldamage3 = 'sizewidthinsuldamage3';
  String colsizedepthinsuldamage3 = 'sizedepthinsuldamage3';

  String coltempair = 'tempair';
  String coltempsurf = 'tempsurf';
  String colrelathumid = 'relathumid';
  String coldewpoint = 'dewpoint';
  String coldifftemp = 'difftemp';
  String coltypeinsulrest = 'typeinsulrest';
  String colinsuladhesrest = 'insuladhesrest';
  String colinsulcharadhesrest1 = 'insulcharadhesrest1';
  String colinsulcharadhesrest2 = 'insulcharadhesrest2';
  String colinsulcharadhesrest3 = 'insulcharadhesrest3';
  String colinsulcharadhesrest4 = 'insulcharadhesrest4';
  String colinsuladhesrest1 = 'insuladhesrest1';
  String colinsuladhesrest2 = 'insuladhesrest2';
  String colinsuladhesrest3 = 'insuladhesrest3';
  String colthickinsulrest1 = 'thickinsulrest1';
  String colthickinsulrest2 = 'thickinsulrest2';
  String colthickinsulrest3 = 'thickinsulrest3';
  String colthickinsulrest4 = 'thickinsulrest4';
  String colthickinsulrest5 = 'thickinsulrest5';
  String colthickinsulrest6 = 'thickinsulrest6';
  String colthickinsulrest7 = 'thickinsulrest7';
  String colthickinsulrest8 = 'thickinsulrest8';
  String colthickinsulrest9 = 'thickinsulrest9';
  String colthickinsulrest10 = 'thickinsulrest10';
  String colthickinsulrest11 = 'thickinsulrest11';
  String colthickinsulrest12 = 'thickinsulrest12';

  String colthickinsulrest = 'thickinsulrest';
  String colcontininsulrest = 'contininsulrest';
  String colmetrrest = 'metrrest';

  String coltickinsulmeter = 'tickinsulmeter';
  String coltickinsulmeternumb = 'tickinsulmeternumb';
  String coltickinsulmeterdate = 'tickinsulmeterdate';
  String coltickmetallmeter = 'tickmetallmeter';
  String coltickmetallmeternumb = 'tickmetallmeternumb';
  String coltickmetallmeterdate = 'tickmetallmeterdate';
  String coladhesmeter = 'adhesmeter';
  String coladhesmeternumb = 'adhesmeternumb';
  String coladhesmeterdate = 'adhesmeterdate';
  String colcontinmeter = 'continmeter';
  String colcontinmeternumb = 'continmeternumb';
  String colcontinmeterdate = 'continmeterdate';
  String colsetvik = 'setvik';
  String colsetviknumb = 'setviknumb';
  String colsetvikdate = 'setvikdate';
  String colmultimeter = 'multimeter';
  String colmultimeternumb = 'multimeternumb';
  String colmultimeterdate = 'multimeterdate';
  String colphoto = 'photo';

  String colphotometdef1 = 'photometdef1';
  String colphotometdef2 = 'photometdef2';
  String colphotometdef3 = 'photometdef3';
  String colphotometdef4 = 'photometdef4';
  String colphotometdef5 = 'photometdef5';
  String colphotometdef6 = 'photometdef6';
  String colphotometdef7 = 'photometdef7';
  String colphotometdef8 = 'photometdef8';
  String colphotometdef9 = 'photometdef9';
  String colphotometdef10 = 'photometdef10';
  String colphotoinsuldef1 = 'photoinsuldef1';
  String colphotoinsuldef2 = 'photoinsuldef2';
  String colphotoinsuldef3 = 'photoinsuldef3';
  String colphotoinsuldef4 = 'photoinsuldef4';
  String colphotoinsuldef5 = 'photoinsuldef5';
  String colphotoinsuldef6 = 'photoinsuldef6';
  String colphotoinsuldef7 = 'photoinsuldef7';
  String colphotoinsuldef8 = 'photoinsuldef8';
  String colphotoinsuldef9 = 'photoinsuldef9';
  String colphotoinsuldef10 = 'photoinsuldef10';
  String colphotorest = 'photorest';
  String colphotodesc = 'photodesc';
  String collocation = 'location';
  String colpotencial = 'potencial';
  String colsoprgrunt = 'soprgrunt';

  String colmesto = 'mesto';
  String coltipgrunta = 'tipgrunta';
  String colvlaggrunt = 'vlaggrunt';
  String coldistvtd = 'distvtd';
  String colprivmest = 'privmest';

  String colph = 'ph';
  String coldavl = 'davl';
  String colvlaga = 'vlaga';
  String colzakl = 'zakl';

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

  DbHelperIp._internal();

  factory DbHelperIp() {
    return _dbHelperIp;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/todos_ip.db';
    final Database dbTodos =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return dbTodos;
  }

  Future<void> _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tblTodo($colId INTEGER PRIMARY KEY, $colTitle TEXT, ' +
            '$colDescription TEXT,$coltempair TEXT,$coltempsurf TEXT,$colrelathumid TEXT,$coldewpoint TEXT,$coldifftemp TEXT,$coldistvtd TEXT,$colprivmest TEXT,$coltipgrunta TEXT,$colvlaggrunt TEXT,$colmesto TEXT,$colsoprgrunt TEXT,$colzakl TEXT,$colpotencial TEXT,$colph TEXT,$coldavl TEXT,$colvlaga TEXT,$collocation TEXT,$colfiodruglic TEXT,$coldolzhndruglic TEXT,$colfiopredststroit TEXT,$coldolzhnpredststroit TEXT,$colfiopredststroitSK TEXT,$coldolzhnpredststroitSK TEXT,$colfiopredstzakazch TEXT,$colfiopredstzakazchSK TEXT,$coldolzhnpredstzakazchSK TEXT,$coldolzhnpredstzakazch TEXT,$colfionachuchastka TEXT,$coldolzhnnachuchastka TEXT,$colfioproizvrab TEXT,$coldolzhnproizvrab TEXT,$colfiopredskom TEXT,$coldolzhnpredskom TEXT,$colfilial TEXT, $colphotodesc TEXT, $colphotorest TEXT, $colphotoinsuldef10 TEXT,$colphotoinsuldef9 TEXT,$colphotoinsuldef8 TEXT,$colphotoinsuldef7 TEXT,$colphotoinsuldef6 TEXT,$colphotoinsuldef5 TEXT,$colphotoinsuldef4 TEXT,$colphotoinsuldef3 TEXT,$colphotoinsuldef2 TEXT,$colphotoinsuldef1 TEXT, $colphotometdef10 TEXT,$colphotometdef9 TEXT,$colphotometdef8 TEXT,$colphotometdef7 TEXT,$colphotometdef6 TEXT,$colphotometdef5 TEXT,$colphotometdef4 TEXT,$colphotometdef3 TEXT,$colphotometdef2 TEXT,$colphotometdef1 TEXT, $colphoto TEXT,$colOsnovanie TEXT,$colPiketkm TEXT,$colCoordinate TEXT,$colLengthpit TEXT,$colDepthpit TEXT,$colDate TEXT,$colDateObsl2 TEXT,$colDateObsl TEXT,$coldiameter TEXT,$colthickpipe TEXT,$colthickpipe1 TEXT,$colthickpipe2 TEXT,$colthickpipe3 TEXT,$colthickpipe4 TEXT,$colgradesteel TEXT,$colmetalldamage TEXT,$colcharmetdamage1 TEXT,$collochourmetdamage1 TEXT,$collocrasstmetdamage1 TEXT,$colsizelengthmetdamage1 TEXT,$colsizewidthmetdamage1 TEXT,$colsizedepthmetdamage1 TEXT,$colcharmetdamage2 TEXT,$collochourmetdamage2 TEXT,$collocrasstmetdamage2 TEXT,$colsizelengthmetdamage2 TEXT,$colsizewidthmetdamage2 TEXT,$colsizedepthmetdamage2 TEXT,$colcharmetdamage3 TEXT,$collochourmetdamage3 TEXT,$collocrasstmetdamage3 TEXT,$colsizelengthmetdamage3 TEXT,$colsizewidthmetdamage3 TEXT,$colsizedepthmetdamage3 TEXT,$coltypeinsul TEXT,$colinsuladhes1 TEXT,$colinsulcharadhes1 TEXT,$colinsuladhes2 TEXT,$colinsulcharadhes2 TEXT,$colinsuladhes3 TEXT,$colinsulcharadhes3 TEXT,$colinsuladhes4 TEXT,$colinsulcharadhes4 TEXT,$colinsulcondit TEXT,$colthickinsul1 TEXT,$colthickinsul2 TEXT,$colthickinsul5 TEXT,$colthickinsul6 TEXT,$colthickinsul7 TEXT,$colthickinsul8 TEXT,$colthickinsul9 TEXT,$colthickinsul10 TEXT,$colthickinsul11 TEXT,$colthickinsul12 TEXT,$colthickinsul TEXT,$colthickinsul4 TEXT,$colthickinsul3 TEXT,$colinsuldamage TEXT,$colcharinsuldamage1 TEXT,$collochourinsuldamage1 TEXT,$collocrasstinsuldamage1 TEXT,$colsizelengthinsuldamage1 TEXT,$colsizewidthinsuldamage1 TEXT,$colsizedepthinsuldamage1 TEXT,$colcharinsuldamage2 TEXT,$collochourinsuldamage2 TEXT,$collocrasstinsuldamage2 TEXT,$colsizelengthinsuldamage2 TEXT,$colsizewidthinsuldamage2 TEXT,$colsizedepthinsuldamage2 TEXT,$colcharinsuldamage3 TEXT,$collochourinsuldamage3 TEXT,$collocrasstinsuldamage3 TEXT,$colsizelengthinsuldamage3 TEXT,$colsizewidthinsuldamage3 TEXT,$colsizedepthinsuldamage3 TEXT,$coltypeinsulrest TEXT,$colinsuladhesrest TEXT,$colinsuladhesrest1 TEXT,$colinsuladhesrest2 TEXT,$colinsuladhesrest3 TEXT,$colinsulcharadhesrest1 TEXT,$colinsulcharadhesrest2 TEXT,$colinsulcharadhesrest3 TEXT,$colinsulcharadhesrest4 TEXT,$colthickinsulrest TEXT,$colthickinsulrest1 TEXT,$colthickinsulrest2 TEXT,$colthickinsulrest3 TEXT,$colthickinsulrest4 TEXT,$colthickinsulrest5 TEXT,$colthickinsulrest6 TEXT,$colthickinsulrest7 TEXT,$colthickinsulrest8 TEXT,$colthickinsulrest9 TEXT,$colthickinsulrest10 TEXT,$colthickinsulrest11 TEXT,$colthickinsulrest12 TEXT,$colcontininsulrest TEXT,$colmetrrest TEXT,$coltickinsulmeter TEXT,$coltickinsulmeternumb TEXT,$coltickinsulmeterdate TEXT,$coltickmetallmeter TEXT,$coltickmetallmeternumb TEXT,$coltickmetallmeterdate TEXT,$coladhesmeter TEXT,$coladhesmeternumb TEXT,$coladhesmeterdate TEXT,$colcontinmeter TEXT,$colcontinmeternumb TEXT,$colcontinmeterdate TEXT,$colmultimeter TEXT,$colmultimeternumb TEXT,$colmultimeterdate TEXT,$colsetvik TEXT,$colsetviknumb TEXT,$colsetvikdate TEXT)');
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

  Future<int> getTodoCountIp() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblTodo');
    final int countIp = Sqflite.firstIntValue(result);
    return countIp;
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
