import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Todo {
  int _id;
  String _title; //наименование
  String _date;
  String _dateProizv;
  String _dateObsl;
  String _tu;
  String _partiya;
  String _proizvoditel;
  String _sertifikat;

  String _photo1;
  String _photo2;
  String _photo3;
  String _photo4;
  String _photo5;

  String _pokazatelname1;
  String _ntdpokazatel1;
  String _normatupokazatel1;
  String _sertpokazatel1;
  String _itogpokazatel1;

  String _pokazatelname2;
  String _ntdpokazatel2;
  String _normatupokazatel2;
  String _sertpokazatel2;
  String _itogpokazatel2;

  String _pokazatelname3;
  String _ntdpokazatel3;
  String _normatupokazatel3;
  String _sertpokazatel3;
  String _itogpokazatel3;

  String _pokazatelname4;
  String _ntdpokazatel4;
  String _normatupokazatel4;
  String _sertpokazatel4;
  String _itogpokazatel4;

  String _pokazatelname5;
  String _ntdpokazatel5;
  String _normatupokazatel5;
  String _sertpokazatel5;
  String _itogpokazatel5;

  String _zaklkachestvo;
  String _zamechanie;
  String _dopolnitelno1;
  String _dopolnitelno2;

  String _priborname1;
  String _pribornumb1;
  String _pribordate1;
  String _priborname2;
  String _pribornumb2;
  String _pribordate2;
  String _priborname3;
  String _pribornumb3;
  String _pribordate3;
  String _priborname4;
  String _pribornumb4;
  String _pribordate4;
  String _priborname5;
  String _pribornumb5;
  String _pribordate5;

  String _filial; //филиал
  String _dolzhnpredskom; //должность ответственного лица
  String _fiopredskom; //фио ответственного лица
  String _dolzhnproizvrab; //должность проводившего анализ
  String _fioproizvrab; //фио проводившего анализ

  Todo(
    this._title,
    this._date, [
    this._dateProizv,
    this._dateObsl,
    this._tu,
    this._partiya,
    this._proizvoditel,
    this._sertifikat,
    this._photo1,
    this._photo2,
    this._photo3,
    this._photo4,
    this._photo5,
    this._pokazatelname1,
    this._ntdpokazatel1,
    this._normatupokazatel1,
    this._sertpokazatel1,
    this._itogpokazatel1,
    this._pokazatelname2,
    this._ntdpokazatel2,
    this._normatupokazatel2,
    this._sertpokazatel2,
    this._itogpokazatel2,
    this._pokazatelname3,
    this._ntdpokazatel3,
    this._normatupokazatel3,
    this._sertpokazatel3,
    this._itogpokazatel3,
    this._pokazatelname4,
    this._ntdpokazatel4,
    this._normatupokazatel4,
    this._sertpokazatel4,
    this._itogpokazatel4,
    this._pokazatelname5,
    this._ntdpokazatel5,
    this._normatupokazatel5,
    this._sertpokazatel5,
    this._itogpokazatel5,
    this._zaklkachestvo,
    this._zamechanie,
    this._dopolnitelno1,
    this._dopolnitelno2,
    this._priborname1,
    this._pribornumb1,
    this._pribordate1,
    this._priborname2,
    this._pribornumb2,
    this._pribordate2,
    this._priborname3,
    this._pribornumb3,
    this._pribordate3,
    this._priborname4,
    this._pribornumb4,
    this._pribordate4,
    this._priborname5,
    this._pribornumb5,
    this._pribordate5,
    this._filial,
    this._dolzhnpredskom,
    this._fiopredskom,
    this._dolzhnproizvrab,
    this._fioproizvrab,
  ]);

  Todo.withId(
    this._id,
    this._title,
    this._date, [
    this._dateProizv,
    this._dateObsl,
    this._tu,
    this._partiya,
    this._proizvoditel,
    this._sertifikat,
    this._photo1,
    this._photo2,
    this._photo3,
    this._photo4,
    this._photo5,
    this._pokazatelname1,
    this._ntdpokazatel1,
    this._normatupokazatel1,
    this._sertpokazatel1,
    this._itogpokazatel1,
    this._pokazatelname2,
    this._ntdpokazatel2,
    this._normatupokazatel2,
    this._sertpokazatel2,
    this._itogpokazatel2,
    this._pokazatelname3,
    this._ntdpokazatel3,
    this._normatupokazatel3,
    this._sertpokazatel3,
    this._itogpokazatel3,
    this._pokazatelname4,
    this._ntdpokazatel4,
    this._normatupokazatel4,
    this._sertpokazatel4,
    this._itogpokazatel4,
    this._pokazatelname5,
    this._ntdpokazatel5,
    this._normatupokazatel5,
    this._sertpokazatel5,
    this._itogpokazatel5,
    this._zaklkachestvo,
    this._zamechanie,
    this._dopolnitelno1,
    this._dopolnitelno2,
    this._priborname1,
    this._pribornumb1,
    this._pribordate1,
    this._priborname2,
    this._pribornumb2,
    this._pribordate2,
    this._priborname3,
    this._pribornumb3,
    this._pribordate3,
    this._priborname4,
    this._pribornumb4,
    this._pribordate4,
    this._priborname5,
    this._pribornumb5,
    this._pribordate5,
    this._filial,
    this._dolzhnpredskom,
    this._fiopredskom,
    this._dolzhnproizvrab,
    this._fioproizvrab,
  ]);

  int get id => _id;

  String get title => _title;

  String get todoDate => _date;

  String get dateProizv => _dateProizv;
  String get dateObsl => _dateObsl;
  String get tu => _tu;
  String get partiya => _partiya;
  String get proizvoditel => _proizvoditel;
  String get sertifikat => _sertifikat;
  String get photo1 => _photo1;
  String get photo2 => _photo2;
  String get photo3 => _photo3;
  String get photo4 => _photo4;
  String get photo5 => _photo5;
  String get pokazatelname1 => _pokazatelname1;
  String get ntdpokazatel1 => _ntdpokazatel1;
  String get normatupokazatel1 => _normatupokazatel1;
  String get sertpokazatel1 => _sertpokazatel1;
  String get itogpokazatel1 => _itogpokazatel1;
  String get pokazatelname2 => _pokazatelname2;
  String get ntdpokazatel2 => _ntdpokazatel2;
  String get normatupokazatel2 => _normatupokazatel2;
  String get sertpokazatel2 => _sertpokazatel2;
  String get itogpokazatel2 => _itogpokazatel2;
  String get pokazatelname3 => _pokazatelname3;
  String get ntdpokazatel3 => _ntdpokazatel3;
  String get normatupokazatel3 => _normatupokazatel3;
  String get sertpokazatel3 => _sertpokazatel3;
  String get itogpokazatel3 => _itogpokazatel3;
  String get pokazatelname4 => _pokazatelname4;
  String get ntdpokazatel4 => _ntdpokazatel4;
  String get normatupokazatel4 => _normatupokazatel4;
  String get sertpokazatel4 => _sertpokazatel4;
  String get itogpokazatel4 => _itogpokazatel4;
  String get pokazatelname5 => _pokazatelname5;
  String get ntdpokazatel5 => _ntdpokazatel5;
  String get normatupokazatel5 => _normatupokazatel5;
  String get sertpokazatel5 => _sertpokazatel5;
  String get itogpokazatel5 => _itogpokazatel5;
  String get zaklkachestvo => _zaklkachestvo;
  String get zamechanie => _zamechanie;
  String get dopolnitelno1 => _dopolnitelno1;
  String get dopolnitelno2 => _dopolnitelno2;
  String get priborname1 => _priborname1;
  String get pribornumb1 => _pribornumb1;
  String get pribordate1 => _pribordate1;
  String get priborname2 => _priborname2;
  String get pribornumb2 => _pribornumb2;
  String get pribordate2 => _pribordate2;
  String get priborname3 => _priborname3;
  String get pribornumb3 => _pribornumb3;
  String get pribordate3 => _pribordate3;
  String get priborname4 => _priborname4;
  String get pribornumb4 => _pribornumb4;
  String get pribordate4 => _pribordate4;
  String get priborname5 => _priborname5;
  String get pribornumb5 => _pribornumb5;
  String get pribordate5 => _pribordate5;
  String get filial => _filial;
  String get dolzhnpredskom => _dolzhnpredskom;
  String get fiopredskom => _fiopredskom;
  String get dolzhnproizvrab => _dolzhnproizvrab;
  String get fioproizvrab => _fioproizvrab;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set todoDate(newDate) {
    _date = newDate;
  }

  set fioproizvrab(String newfioproizvrab) {
    if ((newfioproizvrab?.length ?? 0) <= 255) {
      _fioproizvrab = newfioproizvrab;
    }
  }

  set dolzhnproizvrab(String newdolzhnproizvrab) {
    if ((newdolzhnproizvrab?.length ?? 0) <= 255) {
      _dolzhnproizvrab = newdolzhnproizvrab;
    }
  }

  set fiopredskom(String newfiopredskom) {
    if ((newfiopredskom?.length ?? 0) <= 255) {
      _fiopredskom = newfiopredskom;
    }
  }

  set dolzhnpredskom(String newdolzhnpredskom) {
    if ((newdolzhnpredskom?.length ?? 0) <= 255) {
      _dolzhnpredskom = newdolzhnpredskom;
    }
  }

  set filial(String newfilial) {
    if ((newfilial?.length ?? 0) <= 255) {
      _filial = newfilial;
    }
  }

  set zaklkachestvo(String newzaklkachestvo) {
    if ((newzaklkachestvo?.length ?? 0) <= 255) {
      _zaklkachestvo = newzaklkachestvo;
    }
  }

  set zamechanie(String newzamechanie) {
    if ((newzamechanie?.length ?? 0) <= 255) {
      _zamechanie = newzamechanie;
    }
  }

  set dopolnitelno1(String newdopolnitelno1) {
    if ((newdopolnitelno1?.length ?? 0) <= 255) {
      _dopolnitelno1 = newdopolnitelno1;
    }
  }

  set dopolnitelno2(String newdopolnitelno2) {
    if ((newdopolnitelno2?.length ?? 0) <= 255) {
      _dopolnitelno2 = newdopolnitelno2;
    }
  }

  set priborname1(String newpriborname1) {
    if ((newpriborname1?.length ?? 0) <= 255) {
      _priborname1 = newpriborname1;
    }
  }

  set pribornumb1(String newpribornumb1) {
    if ((newpribornumb1?.length ?? 0) <= 255) {
      _pribornumb1 = newpribornumb1;
    }
  }

  set pribordate1(String newpribordate1) {
    if ((newpribordate1?.length ?? 0) <= 255) {
      _pribordate1 = newpribordate1;
    }
  }

  set priborname2(String newpriborname2) {
    if ((newpriborname2?.length ?? 0) <= 255) {
      _priborname2 = newpriborname2;
    }
  }

  set pribornumb2(String newpribornumb2) {
    if ((newpribornumb2?.length ?? 0) <= 255) {
      _pribornumb2 = newpribornumb2;
    }
  }

  set pribordate2(String newpribordate2) {
    if ((newpribordate2?.length ?? 0) <= 255) {
      _pribordate2 = newpribordate2;
    }
  }

  set priborname3(String newpriborname3) {
    if ((newpriborname3?.length ?? 0) <= 255) {
      _priborname3 = newpriborname3;
    }
  }

  set pribornumb3(String newpribornumb3) {
    if ((newpribornumb3?.length ?? 0) <= 255) {
      _pribornumb3 = newpribornumb3;
    }
  }

  set pribordate3(String newpribordate3) {
    if ((newpribordate3?.length ?? 0) <= 255) {
      _pribordate3 = newpribordate3;
    }
  }

  set priborname4(String newpriborname4) {
    if ((newpriborname4?.length ?? 0) <= 255) {
      _priborname4 = newpriborname4;
    }
  }

  set pribornumb4(String newpribornumb4) {
    if ((newpribornumb4?.length ?? 0) <= 255) {
      _pribornumb4 = newpribornumb4;
    }
  }

  set pribordate4(String newpribordate4) {
    if ((newpribordate4?.length ?? 0) <= 255) {
      _pribordate4 = newpribordate4;
    }
  }

  set priborname5(String newpriborname5) {
    if ((newpriborname5?.length ?? 0) <= 255) {
      _priborname5 = newpriborname5;
    }
  }

  set pribornumb5(String newpribornumb5) {
    if ((newpribornumb5?.length ?? 0) <= 255) {
      _pribornumb5 = newpribornumb5;
    }
  }

  set pribordate5(String newpribordate5) {
    if ((newpribordate5?.length ?? 0) <= 255) {
      _pribordate5 = newpribordate5;
    }
  }

  set itogpokazatel5(String newitogpokazatel5) {
    if ((newitogpokazatel5?.length ?? 0) <= 255) {
      _itogpokazatel5 = newitogpokazatel5;
    }
  }

  set sertpokazatel5(String newsertpokazatel5) {
    if ((newsertpokazatel5?.length ?? 0) <= 255) {
      _sertpokazatel5 = newsertpokazatel5;
    }
  }

  set normatupokazatel5(String newnormatupokazatel5) {
    if ((newnormatupokazatel5?.length ?? 0) <= 255) {
      _normatupokazatel5 = newnormatupokazatel5;
    }
  }

  set ntdpokazatel5(String newntdpokazatel5) {
    if ((newntdpokazatel5?.length ?? 0) <= 255) {
      _ntdpokazatel5 = newntdpokazatel5;
    }
  }

  set pokazatelname5(String newpokazatelname5) {
    if ((newpokazatelname5?.length ?? 0) <= 255) {
      _pokazatelname5 = newpokazatelname5;
    }
  }

  set itogpokazatel4(String newitogpokazatel4) {
    if ((newitogpokazatel4?.length ?? 0) <= 255) {
      _itogpokazatel4 = newitogpokazatel4;
    }
  }

  set sertpokazatel4(String newsertpokazatel4) {
    if ((newsertpokazatel4?.length ?? 0) <= 255) {
      _sertpokazatel4 = newsertpokazatel4;
    }
  }

  set normatupokazatel4(String newnormatupokazatel4) {
    if ((newnormatupokazatel4?.length ?? 0) <= 255) {
      _normatupokazatel4 = newnormatupokazatel4;
    }
  }

  set ntdpokazatel4(String newntdpokazatel4) {
    if ((newntdpokazatel4?.length ?? 0) <= 255) {
      _ntdpokazatel4 = newntdpokazatel4;
    }
  }

  set pokazatelname4(String newpokazatelname4) {
    if ((newpokazatelname4?.length ?? 0) <= 255) {
      _pokazatelname4 = newpokazatelname4;
    }
  }

  set itogpokazatel3(String newitogpokazatel3) {
    if ((newitogpokazatel3?.length ?? 0) <= 255) {
      _itogpokazatel3 = newitogpokazatel3;
    }
  }

  set sertpokazatel3(String newsertpokazatel3) {
    if ((newsertpokazatel3?.length ?? 0) <= 255) {
      _sertpokazatel3 = newsertpokazatel3;
    }
  }

  set normatupokazatel3(String newnormatupokazatel3) {
    if ((newnormatupokazatel3?.length ?? 0) <= 255) {
      _normatupokazatel3 = newnormatupokazatel3;
    }
  }

  set ntdpokazatel3(String newntdpokazatel3) {
    if ((newntdpokazatel3?.length ?? 0) <= 255) {
      _ntdpokazatel3 = newntdpokazatel3;
    }
  }

  set pokazatelname3(String newpokazatelname3) {
    if ((newpokazatelname3?.length ?? 0) <= 255) {
      _pokazatelname3 = newpokazatelname3;
    }
  }

  set itogpokazatel2(String newitogpokazatel2) {
    if ((newitogpokazatel2?.length ?? 0) <= 255) {
      _itogpokazatel2 = newitogpokazatel2;
    }
  }

  set sertpokazatel2(String newsertpokazatel2) {
    if ((newsertpokazatel2?.length ?? 0) <= 255) {
      _sertpokazatel2 = newsertpokazatel2;
    }
  }

  set normatupokazatel2(String newnormatupokazatel2) {
    if ((newnormatupokazatel2?.length ?? 0) <= 255) {
      _normatupokazatel2 = newnormatupokazatel2;
    }
  }

  set ntdpokazatel2(String newntdpokazatel2) {
    if ((newntdpokazatel2?.length ?? 0) <= 255) {
      _ntdpokazatel2 = newntdpokazatel2;
    }
  }

  set pokazatelname2(String newpokazatelname2) {
    if ((newpokazatelname2?.length ?? 0) <= 255) {
      _pokazatelname2 = newpokazatelname2;
    }
  }

  set itogpokazatel1(String newitogpokazatel1) {
    if ((newitogpokazatel1?.length ?? 0) <= 255) {
      _itogpokazatel1 = newitogpokazatel1;
    }
  }

  set sertpokazatel1(String newsertpokazatel1) {
    if ((newsertpokazatel1?.length ?? 0) <= 255) {
      _sertpokazatel1 = newsertpokazatel1;
    }
  }

  set normatupokazatel1(String newnormatupokazatel1) {
    if ((newnormatupokazatel1?.length ?? 0) <= 255) {
      _normatupokazatel1 = newnormatupokazatel1;
    }
  }

  set ntdpokazatel1(String newntdpokazatel1) {
    if ((newntdpokazatel1?.length ?? 0) <= 255) {
      _ntdpokazatel1 = newntdpokazatel1;
    }
  }

  set pokazatelname1(String newpokazatelname1) {
    if ((newpokazatelname1?.length ?? 0) <= 255) {
      _pokazatelname1 = newpokazatelname1;
    }
  }

  set dateProizv(String newdateProizv) {
    if ((newdateProizv?.length ?? 0) <= 255) {
      _dateProizv = newdateProizv;
    }
  }

  set dateObsl(String newdateObsl) {
    if ((newdateObsl?.length ?? 0) <= 255) {
      _dateObsl = newdateObsl;
    }
  }

  set tu(String newtu) {
    if ((newtu?.length ?? 0) <= 255) {
      _tu = newtu;
    }
  }

  set partiya(String newpartiya) {
    if ((newpartiya?.length ?? 0) <= 255) {
      _partiya = newpartiya;
    }
  }

  set proizvoditel(String newproizvoditel) {
    if ((newproizvoditel?.length ?? 0) <= 255) {
      _proizvoditel = newproizvoditel;
    }
  }

  set sertifikat(String newsertifikat) {
    if ((newsertifikat?.length ?? 0) <= 255) {
      _sertifikat = newsertifikat;
    }
  }

  set photo1(String newphoto1) {
    if ((newphoto1?.length ?? 0) <= 255) {
      _photo1 = newphoto1;
    }
  }

  set photo2(String newphoto2) {
    if ((newphoto2?.length ?? 0) <= 255) {
      _photo2 = newphoto2;
    }
  }

  set photo3(String newphoto3) {
    if ((newphoto3?.length ?? 0) <= 255) {
      _photo3 = newphoto3;
    }
  }

  set photo4(String newphoto4) {
    if ((newphoto4?.length ?? 0) <= 255) {
      _photo4 = newphoto4;
    }
  }

  set photo5(String newphoto5) {
    if ((newphoto5?.length ?? 0) <= 255) {
      _photo5 = newphoto5;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['date'] = _date;
    map['dateProizv'] = _dateProizv;
    map['dateObsl'] = _dateObsl;
    map['tu'] = _tu;
    map['partiya'] = _partiya;
    map['proizvoditel'] = _proizvoditel;
    map['sertifikat'] = _sertifikat;
    map['photo1'] = _photo1;
    map['photo2'] = _photo2;
    map['photo3'] = _photo3;
    map['photo4'] = _photo4;
    map['photo5'] = _photo5;
    map['pokazatelname1'] = _pokazatelname1;
    map['ntdpokazatel1'] = _ntdpokazatel1;
    map['normatupokazatel1'] = _normatupokazatel1;
    map['sertpokazatel1'] = _sertpokazatel1;
    map['itogpokazatel1'] = _itogpokazatel1;
    map['pokazatelname2'] = _pokazatelname2;
    map['ntdpokazatel2'] = _ntdpokazatel2;
    map['normatupokazatel2'] = _normatupokazatel2;
    map['sertpokazatel2'] = _sertpokazatel2;
    map['itogpokazatel2'] = _itogpokazatel2;
    map['pokazatelname3'] = _pokazatelname3;
    map['ntdpokazatel3'] = _ntdpokazatel3;
    map['normatupokazatel3'] = _normatupokazatel3;
    map['sertpokazatel3'] = _sertpokazatel3;
    map['itogpokazatel3'] = _itogpokazatel3;
    map['pokazatelname4'] = _pokazatelname4;
    map['ntdpokazatel4'] = _ntdpokazatel4;
    map['normatupokazatel4'] = _normatupokazatel4;
    map['sertpokazatel4'] = _sertpokazatel4;
    map['itogpokazatel4'] = _itogpokazatel4;
    map['pokazatelname5'] = _pokazatelname5;
    map['ntdpokazatel5'] = _ntdpokazatel5;
    map['normatupokazatel5'] = _normatupokazatel5;
    map['sertpokazatel5'] = _sertpokazatel5;
    map['itogpokazatel5'] = _itogpokazatel5;
    map['zaklkachestvo'] = _zaklkachestvo;
    map['zamechanie'] = _zamechanie;
    map['dopolnitelno1'] = _dopolnitelno1;
    map['dopolnitelno2'] = _dopolnitelno2;
    map['priborname1'] = _priborname1;
    map['pribornumb1'] = _pribornumb1;
    map['pribordate1'] = _pribordate1;
    map['priborname2'] = _priborname2;
    map['pribornumb2'] = _pribornumb2;
    map['pribordate2'] = _pribordate2;
    map['priborname3'] = _priborname3;
    map['pribornumb3'] = _pribornumb3;
    map['pribordate3'] = _pribordate3;
    map['priborname4'] = _priborname4;
    map['pribornumb4'] = _pribornumb4;
    map['pribordate4'] = _pribordate4;
    map['priborname5'] = _priborname5;
    map['pribornumb5'] = _pribornumb5;
    map['pribordate5'] = _pribordate5;

    map['filial'] = _filial;
    map['dolzhnpredskom'] = _dolzhnpredskom;
    map['fiopredskom'] = _fiopredskom;
    map['dolzhnproizvrab'] = _dolzhnproizvrab;
    map['fioproizvrab'] = _fioproizvrab;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Todo.fromObject(Map<String, dynamic> o) {
    _id = o['id'];
    _title = o['title'];
    _date = o['date'];

    _dateProizv = o['dateProizv'];
    _dateObsl = o['dateObsl'];
    _tu = o['tu'];
    _partiya = o['partiya'];
    _proizvoditel = o['proizvoditel'];
    _sertifikat = o['sertifikat'];
    _photo1 = o['photo1'];
    _photo2 = o['photo2'];
    _photo3 = o['photo3'];
    _photo4 = o['photo4'];
    _photo5 = o['photo5'];
    _pokazatelname1 = o['pokazatelname1'];
    _ntdpokazatel1 = o['ntdpokazatel1'];
    _normatupokazatel1 = o['normatupokazatel1'];
    _sertpokazatel1 = o['sertpokazatel1'];
    _itogpokazatel1 = o['itogpokazatel1'];
    _pokazatelname2 = o['pokazatelname2'];
    _ntdpokazatel2 = o['ntdpokazatel2'];
    _normatupokazatel2 = o['normatupokazatel2'];
    _sertpokazatel2 = o['sertpokazatel2'];
    _itogpokazatel2 = o['itogpokazatel2'];
    _pokazatelname3 = o['pokazatelname3'];
    _ntdpokazatel3 = o['ntdpokazatel3'];
    _normatupokazatel3 = o['normatupokazatel3'];
    _sertpokazatel3 = o['sertpokazatel3'];
    _itogpokazatel3 = o['itogpokazatel3'];
    _pokazatelname4 = o['pokazatelname4'];
    _ntdpokazatel4 = o['ntdpokazatel4'];
    _normatupokazatel4 = o['normatupokazatel4'];
    _sertpokazatel4 = o['sertpokazatel4'];
    _itogpokazatel4 = o['itogpokazatel4'];
    _pokazatelname5 = o['pokazatelname5'];
    _ntdpokazatel5 = o['ntdpokazatel5'];
    _normatupokazatel5 = o['normatupokazatel5'];
    _sertpokazatel5 = o['sertpokazatel5'];
    _itogpokazatel5 = o['itogpokazatel5'];
    _zaklkachestvo = o['zaklkachestvo'];
    _zamechanie = o['zamechanie'];
    _dopolnitelno1 = o['dopolnitelno1'];
    _dopolnitelno2 = o['dopolnitelno2'];
    _priborname1 = o['priborname1'];
    _pribornumb1 = o['pribornumb1'];
    _pribordate1 = o['pribordate1'];
    _priborname2 = o['priborname2'];
    _pribornumb2 = o['pribornumb2'];
    _pribordate2 = o['pribordate2'];
    _priborname3 = o['priborname3'];
    _pribornumb3 = o['pribornumb3'];
    _pribordate3 = o['pribordate3'];
    _priborname4 = o['priborname4'];
    _pribornumb4 = o['pribornumb4'];
    _pribordate4 = o['pribordate4'];
    _priborname5 = o['priborname5'];
    _pribornumb5 = o['pribornumb5'];
    _pribordate5 = o['pribordate5'];
    _filial = o['filial'];
    _dolzhnpredskom = o['dolzhnpredskom'];
    _fiopredskom = o['fiopredskom'];
    _dolzhnproizvrab = o['dolzhnproizvrab'];
    _fioproizvrab = o['fioproizvrab'];
  }
}
