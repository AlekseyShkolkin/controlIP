import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Todo {
  int _id;
  String _title;
  String _osnovanie;
  String _piketkm;
  String _coordinate;
  String _lengthpit;
  String _depthpit;
  String _photo;
  String _potencial;
  String _zakl;
  String _soprgrunt;

  String _mesto;
  String _tipgrunta;
  String _vlaggrunt;
  String _distvtd;
  String _privmest;

  String _ph;
  String _davl;
  String _vlaga;

  String _photometdef1;
  String _photometdef2;
  String _photometdef3;
  String _photometdef4;
  String _photometdef5;
  String _photometdef6;
  String _photometdef7;
  String _photometdef8;
  String _photometdef9;
  String _photometdef10;
  String _photoinsuldef1;
  String _photoinsuldef2;
  String _photoinsuldef3;
  String _photoinsuldef4;
  String _photoinsuldef5;
  String _photoinsuldef6;
  String _photoinsuldef7;
  String _photoinsuldef8;
  String _photoinsuldef9;
  String _photoinsuldef10;
  String _photorest;
  String _photodesc;

  String _diameter;
  String _thickpipe;
  String _thickpipe1;
  String _thickpipe2;
  String _thickpipe3;
  String _thickpipe4;
  String _gradesteel;

  String _metalldamage;

  String _charmetdamage1;
  String _lochourmetdamage1;
  String _locrasstmetdamage1;
  String _sizelengthmetdamage1;
  String _sizewidthmetdamage1;
  String _sizedepthmetdamage1;

  String _charmetdamage2;
  String _lochourmetdamage2;
  String _locrasstmetdamage2;
  String _sizelengthmetdamage2;
  String _sizewidthmetdamage2;
  String _sizedepthmetdamage2;

  String _charmetdamage3;
  String _lochourmetdamage3;
  String _locrasstmetdamage3;
  String _sizelengthmetdamage3;
  String _sizewidthmetdamage3;
  String _sizedepthmetdamage3;

  String _typeinsul;
  String _insuladhes1;
  String _insuladhes2;
  String _insuladhes3;
  String _insuladhes4;
  String _insulcharadhes1;
  String _insulcharadhes2;
  String _insulcharadhes3;
  String _insulcharadhes4;
  String _insulcondit;
  String _thickinsul;
  String _thickinsul1;
  String _thickinsul2;
  String _thickinsul3;
  String _thickinsul4;
  String _thickinsul5;
  String _thickinsul6;
  String _thickinsul7;
  String _thickinsul8;
  String _thickinsul9;
  String _thickinsul10;
  String _thickinsul11;
  String _thickinsul12;

  String _insuldamage;

  String _charinsuldamage1;
  String _lochourinsuldamage1;
  String _locrasstinsuldamage1;
  String _sizelengthinsuldamage1;
  String _sizewidthinsuldamage1;
  String _sizedepthinsuldamage1;

  String _charinsuldamage2;
  String _lochourinsuldamage2;
  String _locrasstinsuldamage2;
  String _sizelengthinsuldamage2;
  String _sizewidthinsuldamage2;
  String _sizedepthinsuldamage2;

  String _charinsuldamage3;
  String _lochourinsuldamage3;
  String _locrasstinsuldamage3;
  String _sizelengthinsuldamage3;
  String _sizewidthinsuldamage3;
  String _sizedepthinsuldamage3;

  String _tempair; //температура воздуха
  String _tempsurf; //температура поверхности
  String _relathumid; //относительная влажность
  String _dewpoint; //точка росы
  String _difftemp; //разница температур

  String _typeinsulrest;
  String _insuladhesrest;
  String _insuladhesrest1;
  String _insuladhesrest2;
  String _insuladhesrest3;
  String _insulcharadhesrest1;
  String _insulcharadhesrest2;
  String _insulcharadhesrest3;
  String _insulcharadhesrest4;
  String _thickinsulrest;
  String _thickinsulrest1;
  String _thickinsulrest2;
  String _thickinsulrest3;
  String _thickinsulrest4;
  String _thickinsulrest5;
  String _thickinsulrest6;
  String _thickinsulrest7;
  String _thickinsulrest8;
  String _thickinsulrest9;
  String _thickinsulrest10;
  String _thickinsulrest11;
  String _thickinsulrest12;
  String _contininsulrest;
  String _metrrest;

  String _tickinsulmeter;
  String _tickinsulmeternumb;
  String _tickinsulmeterdate;
  String _tickmetallmeter;
  String _tickmetallmeternumb;
  String _tickmetallmeterdate;
  String _adhesmeter;
  String _adhesmeternumb;
  String _adhesmeterdate;
  String _continmeter;
  String _continmeternumb;
  String _continmeterdate;
  String _setvik;
  String _setviknumb;
  String _setvikdate;
  String _multimeter;
  String _multimeternumb;
  String _multimeterdate;

  String _description;
  String _date;
  String _dateObsl;
  String _dateObsl2;
  String _location;

  String _filial; //филиал

  String _dolzhnpredskom; //должность председателя комиссии
  String _fiopredskom; //фио председеателя комиссии

  String _dolzhnproizvrab; //Представитель службы ЗоК
  String _fioproizvrab; //Представитель службы ЗоК

  String _dolzhnnachuchastka; //должность начальника участка
  String _fionachuchastka; //фио начальника участка

  String _dolzhnpredstzakazch; //должность специалиста по НК изоляции
  String _fiopredstzakazch; //фио специалиста по НК и СК изоляции
  String _fiodruglic; //номер удостоверения по СК

  String _dolzhnpredstzakazchSK; //должность специалиста по НК мет
  String _fiopredstzakazchSK; //фио специалиста по НК мет

  String _dolzhnpredststroitSK; //должность представителя зоК
  String _fiopredststroitSK; //фио представителя зоК

  String _dolzhnpredststroit; //должность представителя строителя участка
  String _fiopredststroit; //фио представителя участка строителя
  String _dolzhndruglic; //должность других лиц

  Todo(
    this._title,
    this._date, [
    this._metrrest,
    this._ph,
    this._davl,
    this._vlaga,
    this._soprgrunt,
    this._mesto,
    this._tipgrunta,
    this._vlaggrunt,
    this._distvtd,
    this._privmest,
    this._potencial,
    this._zakl,
    this._location,
    this._dateObsl,
    this._dateObsl2,
    this._photometdef1,
    this._photometdef2,
    this._photometdef3,
    this._photometdef4,
    this._photometdef5,
    this._photometdef6,
    this._photometdef7,
    this._photometdef8,
    this._photometdef9,
    this._photometdef10,
    this._photoinsuldef1,
    this._photoinsuldef2,
    this._photoinsuldef3,
    this._photoinsuldef4,
    this._photoinsuldef5,
    this._photoinsuldef6,
    this._photoinsuldef7,
    this._photoinsuldef8,
    this._photoinsuldef9,
    this._photoinsuldef10,
    this._photorest,
    this._photodesc,
    this._photo,
    this._piketkm,
    this._coordinate,
    this._lengthpit,
    this._depthpit,
    this._osnovanie,
    this._description,
    this._diameter,
    this._thickpipe,
    this._thickpipe1,
    this._thickpipe2,
    this._thickpipe3,
    this._thickpipe4,
    this._gradesteel,
    this._metalldamage,
    this._charmetdamage1,
    this._lochourmetdamage1,
    this._locrasstmetdamage1,
    this._sizelengthmetdamage1,
    this._sizewidthmetdamage1,
    this._sizedepthmetdamage1,
    this._charmetdamage2,
    this._lochourmetdamage2,
    this._locrasstmetdamage2,
    this._sizelengthmetdamage2,
    this._sizewidthmetdamage2,
    this._sizedepthmetdamage2,
    this._charmetdamage3,
    this._lochourmetdamage3,
    this._locrasstmetdamage3,
    this._sizelengthmetdamage3,
    this._sizewidthmetdamage3,
    this._sizedepthmetdamage3,
    this._typeinsul,
    this._insuladhes1,
    this._insuladhes2,
    this._insuladhes3,
    this._insuladhes4,
    this._insulcharadhes1,
    this._insulcharadhes2,
    this._insulcharadhes3,
    this._insulcharadhes4,
    this._insulcondit,
    this._thickinsul1,
    this._thickinsul2,
    this._thickinsul3,
    this._thickinsul4,
    this._thickinsul5,
    this._thickinsul6,
    this._thickinsul7,
    this._thickinsul8,
    this._thickinsul9,
    this._thickinsul10,
    this._thickinsul11,
    this._thickinsul12,
    this._thickinsul,
    this._insuldamage,
    this._charinsuldamage1,
    this._lochourinsuldamage1,
    this._locrasstinsuldamage1,
    this._sizelengthinsuldamage1,
    this._sizewidthinsuldamage1,
    this._sizedepthinsuldamage1,
    this._charinsuldamage2,
    this._lochourinsuldamage2,
    this._locrasstinsuldamage2,
    this._sizelengthinsuldamage2,
    this._sizewidthinsuldamage2,
    this._sizedepthinsuldamage2,
    this._charinsuldamage3,
    this._lochourinsuldamage3,
    this._locrasstinsuldamage3,
    this._sizelengthinsuldamage3,
    this._sizewidthinsuldamage3,
    this._sizedepthinsuldamage3,
    this._tempair,
    this._tempsurf,
    this._relathumid,
    this._dewpoint,
    this._difftemp,
    this._typeinsulrest,
    this._insuladhesrest,
    this._insuladhesrest1,
    this._insuladhesrest2,
    this._insuladhesrest3,
    this._insulcharadhesrest1,
    this._insulcharadhesrest2,
    this._insulcharadhesrest3,
    this._insulcharadhesrest4,
    this._thickinsulrest,
    this._thickinsulrest1,
    this._thickinsulrest2,
    this._thickinsulrest3,
    this._thickinsulrest4,
    this._thickinsulrest5,
    this._thickinsulrest6,
    this._thickinsulrest7,
    this._thickinsulrest8,
    this._thickinsulrest9,
    this._thickinsulrest10,
    this._thickinsulrest11,
    this._thickinsulrest12,
    this._contininsulrest,
    this._tickinsulmeter,
    this._tickinsulmeternumb,
    this._tickinsulmeterdate,
    this._tickmetallmeter,
    this._tickmetallmeternumb,
    this._tickmetallmeterdate,
    this._adhesmeter,
    this._adhesmeternumb,
    this._adhesmeterdate,
    this._continmeter,
    this._continmeternumb,
    this._continmeterdate,
    this._setvik,
    this._setviknumb,
    this._setvikdate,
    this._multimeter,
    this._multimeternumb,
    this._multimeterdate,
    this._filial,
    this._dolzhnpredskom,
    this._fiopredskom,
    this._dolzhnproizvrab,
    this._fioproizvrab,
    this._dolzhnnachuchastka,
    this._fionachuchastka,
    this._dolzhnpredstzakazch,
    this._fiopredstzakazch,
    this._dolzhnpredstzakazchSK,
    this._fiopredstzakazchSK,
    this._dolzhnpredststroitSK,
    this._fiopredststroitSK,
    this._dolzhnpredststroit,
    this._fiopredststroit,
    this._dolzhndruglic,
    this._fiodruglic,
  ]);

  Todo.withId(
    this._id,
    this._title,
    this._date, [
    this._ph,
    this._davl,
    this._vlaga,
    this._mesto,
    this._tipgrunta,
    this._vlaggrunt,
    this._distvtd,
    this._privmest,
    this._soprgrunt,
    this._potencial,
    this._zakl,
    this._location,
    this._dateObsl,
    this._dateObsl2,
    this._photometdef1,
    this._photometdef2,
    this._photometdef3,
    this._photometdef4,
    this._photometdef5,
    this._photometdef6,
    this._photometdef7,
    this._photometdef8,
    this._photometdef9,
    this._photometdef10,
    this._photoinsuldef1,
    this._photoinsuldef2,
    this._photoinsuldef3,
    this._photoinsuldef4,
    this._photoinsuldef5,
    this._photoinsuldef6,
    this._photoinsuldef7,
    this._photoinsuldef8,
    this._photoinsuldef9,
    this._photoinsuldef10,
    this._photorest,
    this._photodesc,
    this._photo,
    this._piketkm,
    this._coordinate,
    this._lengthpit,
    this._depthpit,
    this._osnovanie,
    this._description,
    this._diameter,
    this._thickpipe,
    this._thickpipe1,
    this._thickpipe2,
    this._thickpipe3,
    this._thickpipe4,
    this._gradesteel,
    this._metalldamage,
    this._charmetdamage1,
    this._lochourmetdamage1,
    this._locrasstmetdamage1,
    this._sizelengthmetdamage1,
    this._sizewidthmetdamage1,
    this._sizedepthmetdamage1,
    this._charmetdamage2,
    this._lochourmetdamage2,
    this._locrasstmetdamage2,
    this._sizelengthmetdamage2,
    this._sizewidthmetdamage2,
    this._sizedepthmetdamage2,
    this._charmetdamage3,
    this._lochourmetdamage3,
    this._locrasstmetdamage3,
    this._sizelengthmetdamage3,
    this._sizewidthmetdamage3,
    this._sizedepthmetdamage3,
    this._typeinsul,
    this._insuladhes1,
    this._insuladhes2,
    this._insuladhes3,
    this._insuladhes4,
    this._insulcharadhes1,
    this._insulcharadhes2,
    this._insulcharadhes3,
    this._insulcharadhes4,
    this._insulcondit,
    this._thickinsul1,
    this._thickinsul2,
    this._thickinsul3,
    this._thickinsul4,
    this._thickinsul5,
    this._thickinsul6,
    this._thickinsul7,
    this._thickinsul8,
    this._thickinsul9,
    this._thickinsul10,
    this._thickinsul11,
    this._thickinsul12,
    this._thickinsul,
    this._insuldamage,
    this._charinsuldamage1,
    this._lochourinsuldamage1,
    this._locrasstinsuldamage1,
    this._sizelengthinsuldamage1,
    this._sizewidthinsuldamage1,
    this._sizedepthinsuldamage1,
    this._charinsuldamage2,
    this._lochourinsuldamage2,
    this._locrasstinsuldamage2,
    this._sizelengthinsuldamage2,
    this._sizewidthinsuldamage2,
    this._sizedepthinsuldamage2,
    this._charinsuldamage3,
    this._lochourinsuldamage3,
    this._locrasstinsuldamage3,
    this._sizelengthinsuldamage3,
    this._sizewidthinsuldamage3,
    this._sizedepthinsuldamage3,
    this._tempair,
    this._tempsurf,
    this._relathumid,
    this._dewpoint,
    this._difftemp,
    this._typeinsulrest,
    this._insuladhesrest,
    this._insuladhesrest1,
    this._insuladhesrest2,
    this._insuladhesrest3,
    this._insulcharadhesrest1,
    this._insulcharadhesrest2,
    this._insulcharadhesrest3,
    this._insulcharadhesrest4,
    this._thickinsulrest,
    this._thickinsulrest1,
    this._thickinsulrest2,
    this._thickinsulrest3,
    this._thickinsulrest4,
    this._thickinsulrest5,
    this._thickinsulrest6,
    this._thickinsulrest7,
    this._thickinsulrest8,
    this._thickinsulrest9,
    this._thickinsulrest10,
    this._thickinsulrest11,
    this._thickinsulrest12,
    this._contininsulrest,
    this._metrrest,
    this._tickinsulmeter,
    this._tickinsulmeternumb,
    this._tickinsulmeterdate,
    this._tickmetallmeter,
    this._tickmetallmeternumb,
    this._tickmetallmeterdate,
    this._adhesmeter,
    this._adhesmeternumb,
    this._adhesmeterdate,
    this._continmeter,
    this._continmeternumb,
    this._continmeterdate,
    this._setvik,
    this._setviknumb,
    this._setvikdate,
    this._multimeter,
    this._multimeternumb,
    this._multimeterdate,
    this._filial,
    this._dolzhnpredskom,
    this._fiopredskom,
    this._dolzhnproizvrab,
    this._fioproizvrab,
    this._dolzhnnachuchastka,
    this._fionachuchastka,
    this._dolzhnpredstzakazch,
    this._fiopredstzakazch,
    this._dolzhnpredstzakazchSK,
    this._fiopredstzakazchSK,
    this._dolzhnpredststroitSK,
    this._fiopredststroitSK,
    this._dolzhnpredststroit,
    this._fiopredststroit,
    this._dolzhndruglic,
    this._fiodruglic,
  ]);

  int get id => _id;

  String get ph => _ph;
  String get davl => _davl;
  String get vlaga => _vlaga;
  String get zakl => _zakl;

  String get potencial => _potencial;
  String get soprgrunt => _soprgrunt;

  String get mesto => _mesto;
  String get tipgrunta => _tipgrunta;
  String get vlaggrunt => _vlaggrunt;
  String get distvtd => _distvtd;
  String get privmest => _privmest;

  String get photometdef1 => _photometdef1;
  String get photometdef2 => _photometdef2;
  String get photometdef3 => _photometdef3;
  String get photometdef4 => _photometdef4;
  String get photometdef5 => _photometdef5;
  String get photometdef6 => _photometdef6;
  String get photometdef7 => _photometdef7;
  String get photometdef8 => _photometdef8;
  String get photometdef9 => _photometdef9;
  String get photometdef10 => _photometdef10;
  String get photoinsuldef1 => _photoinsuldef1;
  String get photoinsuldef2 => _photoinsuldef2;
  String get photoinsuldef3 => _photoinsuldef3;
  String get photoinsuldef4 => _photoinsuldef4;
  String get photoinsuldef5 => _photoinsuldef5;
  String get photoinsuldef6 => _photoinsuldef6;
  String get photoinsuldef7 => _photoinsuldef7;
  String get photoinsuldef8 => _photoinsuldef8;
  String get photoinsuldef9 => _photoinsuldef9;
  String get photoinsuldef10 => _photoinsuldef10;
  String get photorest => _photorest;
  String get photodesc => _photodesc;
  String get photo => _photo;
  String get title => _title;
  String get piketkm => _piketkm;
  String get coordinate => _coordinate;
  String get lengthpit => _lengthpit;
  String get depthpit => _depthpit;
  String get osnovanie => _osnovanie;
  String get todoDate => _date;
  String get dateObsl => _dateObsl;
  String get dateObsl2 => _dateObsl2;
  String get location => _location;
  String get description => _description;

  String get diameter => _diameter;
  String get thickpipe => _thickpipe;
  String get thickpipe1 => _thickpipe1;
  String get thickpipe2 => _thickpipe2;
  String get thickpipe3 => _thickpipe3;
  String get thickpipe4 => _thickpipe4;
  String get gradesteel => _gradesteel;
  String get metalldamage => _metalldamage;

  String get charmetdamage1 => _charmetdamage1;
  String get lochourmetdamage1 => _lochourmetdamage1;
  String get locrasstmetdamage1 => _locrasstmetdamage1;
  String get sizelengthmetdamage1 => _sizelengthmetdamage1;
  String get sizewidthmetdamage1 => _sizewidthmetdamage1;
  String get sizedepthmetdamage1 => _sizedepthmetdamage1;

  String get charmetdamage2 => _charmetdamage2;
  String get lochourmetdamage2 => _lochourmetdamage2;
  String get locrasstmetdamage2 => _locrasstmetdamage2;
  String get sizelengthmetdamage2 => _sizelengthmetdamage2;
  String get sizewidthmetdamage2 => _sizewidthmetdamage2;
  String get sizedepthmetdamage2 => _sizedepthmetdamage2;

  String get charmetdamage3 => _charmetdamage3;
  String get lochourmetdamage3 => _lochourmetdamage3;
  String get locrasstmetdamage3 => _locrasstmetdamage3;
  String get sizelengthmetdamage3 => _sizelengthmetdamage3;
  String get sizewidthmetdamage3 => _sizewidthmetdamage3;
  String get sizedepthmetdamage3 => _sizedepthmetdamage3;

  String get typeinsul => _typeinsul;

  String get insuladhes1 => _insuladhes1;
  String get insulcharadhes1 => _insulcharadhes1;
  String get thickinsul1 => _thickinsul1;

  String get insuladhes2 => _insuladhes2;
  String get insulcharadhes2 => _insulcharadhes2;
  String get thickinsul2 => _thickinsul2;

  String get insuladhes3 => _insuladhes3;
  String get insuladhes4 => _insuladhes4;
  String get insulcharadhes3 => _insulcharadhes3;
  String get insulcharadhes4 => _insulcharadhes4;
  String get thickinsul3 => _thickinsul3;
  String get thickinsul4 => _thickinsul4;
  String get thickinsul5 => _thickinsul5;
  String get thickinsul6 => _thickinsul6;
  String get thickinsul7 => _thickinsul7;
  String get thickinsul8 => _thickinsul8;
  String get thickinsul9 => _thickinsul9;
  String get thickinsul10 => _thickinsul10;
  String get thickinsul11 => _thickinsul11;
  String get thickinsul12 => _thickinsul12;
  String get thickinsul => _thickinsul;

  String get insuldamage => _insuldamage;
  String get insulcondit => _insulcondit;

  String get charinsuldamage1 => _charinsuldamage1;
  String get lochourinsuldamage1 => _lochourinsuldamage1;
  String get locrasstinsuldamage1 => _locrasstinsuldamage1;
  String get sizelengthinsuldamage1 => _sizelengthinsuldamage1;
  String get sizewidthinsuldamage1 => _sizewidthinsuldamage1;
  String get sizedepthinsuldamage1 => _sizedepthinsuldamage1;

  String get charinsuldamage2 => _charinsuldamage2;
  String get lochourinsuldamage2 => _lochourinsuldamage2;
  String get locrasstinsuldamage2 => _locrasstinsuldamage2;
  String get sizelengthinsuldamage2 => _sizelengthinsuldamage2;
  String get sizewidthinsuldamage2 => _sizewidthinsuldamage2;
  String get sizedepthinsuldamage2 => _sizedepthinsuldamage2;

  String get charinsuldamage3 => _charinsuldamage3;
  String get lochourinsuldamage3 => _lochourinsuldamage3;
  String get locrasstinsuldamage3 => _locrasstinsuldamage3;
  String get sizelengthinsuldamage3 => _sizelengthinsuldamage3;
  String get sizewidthinsuldamage3 => _sizewidthinsuldamage3;
  String get sizedepthinsuldamage3 => _sizedepthinsuldamage3;

  String get tempair => _tempair;
  String get tempsurf => _tempsurf;
  String get relathumid => _relathumid;
  String get dewpoint => _dewpoint;
  String get difftemp => _difftemp;

  String get typeinsulrest => _typeinsulrest;
  String get insuladhesrest => _insuladhesrest;
  String get insuladhesrest1 => _insuladhesrest1;
  String get insuladhesrest2 => _insuladhesrest2;
  String get insuladhesrest3 => _insuladhesrest3;
  String get insulcharadhesrest1 => _insulcharadhesrest1;
  String get insulcharadhesrest2 => _insulcharadhesrest2;
  String get insulcharadhesrest3 => _insulcharadhesrest3;
  String get insulcharadhesrest4 => _insulcharadhesrest4;
  String get thickinsulrest => _thickinsulrest;
  String get thickinsulrest1 => _thickinsulrest1;
  String get thickinsulrest2 => _thickinsulrest2;
  String get thickinsulrest3 => _thickinsulrest3;
  String get thickinsulrest4 => _thickinsulrest4;
  String get thickinsulrest5 => _thickinsulrest5;
  String get thickinsulrest6 => _thickinsulrest6;
  String get thickinsulrest7 => _thickinsulrest7;
  String get thickinsulrest8 => _thickinsulrest8;
  String get thickinsulrest9 => _thickinsulrest9;
  String get thickinsulrest10 => _thickinsulrest10;
  String get thickinsulrest11 => _thickinsulrest11;
  String get thickinsulrest12 => _thickinsulrest12;
  String get contininsulrest => _contininsulrest;
  String get metrrest => _metrrest;

  String get tickinsulmeter => _tickinsulmeter;
  String get tickinsulmeternumb => _tickinsulmeternumb;
  String get tickinsulmeterdate => _tickinsulmeterdate;
  String get tickmetallmeter => _tickmetallmeter;
  String get tickmetallmeternumb => _tickmetallmeternumb;
  String get tickmetallmeterdate => _tickmetallmeterdate;
  String get adhesmeter => _adhesmeter;
  String get adhesmeternumb => _adhesmeternumb;
  String get adhesmeterdate => _adhesmeterdate;
  String get continmeter => _continmeter;
  String get continmeternumb => _continmeternumb;
  String get continmeterdate => _continmeterdate;
  String get setvik => _setvik;
  String get setviknumb => _setviknumb;
  String get setvikdate => _setvikdate;
  String get multimeter => _multimeter;
  String get multimeternumb => _multimeternumb;
  String get multimeterdate => _multimeterdate;

  String get filial => _filial;
  String get dolzhnpredskom => _dolzhnpredskom;
  String get fiopredskom => _fiopredskom;
  String get dolzhnproizvrab => _dolzhnproizvrab;
  String get fioproizvrab => _fioproizvrab;
  String get dolzhnnachuchastka => _dolzhnnachuchastka;
  String get fionachuchastka => _fionachuchastka;
  String get dolzhnpredstzakazch => _dolzhnpredstzakazch;
  String get fiopredstzakazch => _fiopredstzakazch;
  String get dolzhnpredstzakazchSK => _dolzhnpredstzakazchSK;
  String get fiopredstzakazchSK => _fiopredstzakazchSK;
  String get dolzhnpredststroitSK => _dolzhnpredststroitSK;
  String get fiopredststroitSK => _fiopredststroitSK;
  String get dolzhnpredststroit => _dolzhnpredststroit;
  String get fiopredststroit => _fiopredststroit;
  String get dolzhndruglic => _dolzhndruglic;
  String get fiodruglic => _fiodruglic;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set location(String newlocation) {
    if ((newlocation?.length ?? 0) <= 255) {
      _location = newlocation;
    }
  }

  set ph(String newph) {
    if ((newph?.length ?? 0) <= 255) {
      _ph = newph;
    }
  }

  set davl(String newdavl) {
    if ((newdavl?.length ?? 0) <= 255) {
      _davl = newdavl;
    }
  }

  set vlaga(String newvlaga) {
    if ((newvlaga?.length ?? 0) <= 255) {
      _vlaga = newvlaga;
    }
  }

  set zakl(String newzakl) {
    if ((newzakl?.length ?? 0) <= 255) {
      _zakl = newzakl;
    }
  }

  set potencial(String newpotencial) {
    if ((newpotencial?.length ?? 0) <= 255) {
      _potencial = newpotencial;
    }
  }

  set privmest(String newprivmest) {
    if ((newprivmest?.length ?? 0) <= 255) {
      _privmest = newprivmest;
    }
  }

  set distvtd(String newdistvtd) {
    if ((newdistvtd?.length ?? 0) <= 255) {
      _distvtd = newdistvtd;
    }
  }

  set vlaggrunt(String newvlaggrunt) {
    if ((newvlaggrunt?.length ?? 0) <= 255) {
      _vlaggrunt = newvlaggrunt;
    }
  }

  set mesto(String newmesto) {
    if ((newmesto?.length ?? 0) <= 255) {
      _mesto = newmesto;
    }
  }

  set tipgrunta(String newtipgrunta) {
    if ((newtipgrunta?.length ?? 0) <= 255) {
      _tipgrunta = newtipgrunta;
    }
  }

  set soprgrunt(String newsoprgrunt) {
    if ((newsoprgrunt?.length ?? 0) <= 255) {
      _soprgrunt = newsoprgrunt;
    }
  }

  set photo(String newphoto) {
    if ((newphoto?.length ?? 0) <= 255) {
      _photo = newphoto;
    }
  }

  set photometdef1(String newphotometdef1) {
    if ((newphotometdef1?.length ?? 0) <= 255) {
      _photometdef1 = newphotometdef1;
    }
  }

  set photometdef2(String newphotometdef2) {
    if ((newphotometdef2?.length ?? 0) <= 255) {
      _photometdef2 = newphotometdef2;
    }
  }

  set photometdef3(String newphotometdef3) {
    if ((newphotometdef3?.length ?? 0) <= 255) {
      _photometdef3 = newphotometdef3;
    }
  }

  set photometdef4(String newphotometdef4) {
    if ((newphotometdef4?.length ?? 0) <= 255) {
      _photometdef4 = newphotometdef4;
    }
  }

  set photometdef5(String newphotometdef5) {
    if ((newphotometdef5?.length ?? 0) <= 255) {
      _photometdef5 = newphotometdef5;
    }
  }

  set photometdef6(String newphotometdef6) {
    if ((newphotometdef6?.length ?? 0) <= 255) {
      _photometdef6 = newphotometdef6;
    }
  }

  set photometdef7(String newphotometdef7) {
    if ((newphotometdef7?.length ?? 0) <= 255) {
      _photometdef7 = newphotometdef7;
    }
  }

  set photometdef8(String newphotometdef8) {
    if ((newphotometdef8?.length ?? 0) <= 255) {
      _photometdef8 = newphotometdef8;
    }
  }

  set photometdef9(String newphotometdef9) {
    if ((newphotometdef9?.length ?? 0) <= 255) {
      _photometdef9 = newphotometdef9;
    }
  }

  set photometdef10(String newphotometdef10) {
    if ((newphotometdef10?.length ?? 0) <= 255) {
      _photometdef10 = newphotometdef10;
    }
  }

  set photoinsuldef1(String newphotoinsuldef1) {
    if ((newphotoinsuldef1?.length ?? 0) <= 255) {
      _photoinsuldef1 = newphotoinsuldef1;
    }
  }

  set photoinsuldef2(String newphotoinsuldef2) {
    if ((newphotoinsuldef2?.length ?? 0) <= 255) {
      _photoinsuldef2 = newphotoinsuldef2;
    }
  }

  set photoinsuldef3(String newphotoinsuldef3) {
    if ((newphotoinsuldef3?.length ?? 0) <= 255) {
      _photoinsuldef3 = newphotoinsuldef3;
    }
  }

  set photoinsuldef4(String newphotoinsuldef4) {
    if ((newphotoinsuldef4?.length ?? 0) <= 255) {
      _photoinsuldef4 = newphotoinsuldef4;
    }
  }

  set photoinsuldef5(String newphotoinsuldef5) {
    if ((newphotoinsuldef5?.length ?? 0) <= 255) {
      _photoinsuldef5 = newphotoinsuldef5;
    }
  }

  set photoinsuldef6(String newphotoinsuldef6) {
    if ((newphotoinsuldef6?.length ?? 0) <= 255) {
      _photoinsuldef6 = newphotoinsuldef6;
    }
  }

  set photoinsuldef7(String newphotoinsuldef7) {
    if ((newphotoinsuldef7?.length ?? 0) <= 255) {
      _photoinsuldef7 = newphotoinsuldef7;
    }
  }

  set photoinsuldef8(String newphotoinsuldef8) {
    if ((newphotoinsuldef8?.length ?? 0) <= 255) {
      _photoinsuldef8 = newphotoinsuldef8;
    }
  }

  set photoinsuldef9(String newphotoinsuldef9) {
    if ((newphotoinsuldef9?.length ?? 0) <= 255) {
      _photoinsuldef9 = newphotoinsuldef9;
    }
  }

  set photoinsuldef10(String newphotoinsuldef10) {
    if ((newphotoinsuldef10?.length ?? 0) <= 255) {
      _photoinsuldef7 = newphotoinsuldef10;
    }
  }

  set photorest(String newpphotorest) {
    if ((newpphotorest?.length ?? 0) <= 255) {
      _photorest = newpphotorest;
    }
  }

  set photodesc(String newphotodesc) {
    if ((newphotodesc?.length ?? 0) <= 255) {
      _photodesc = newphotodesc;
    }
  }

  set piketkm(String newPiketkm) {
    if ((newPiketkm?.length ?? 0) <= 255) {
      _piketkm = newPiketkm;
    }
  }

  set coordinate(String newCoordinate) {
    if ((newCoordinate?.length ?? 0) <= 255) {
      _coordinate = newCoordinate;
    }
  }

  set lengthpit(String newLengthpit) {
    if ((newLengthpit?.length ?? 0) <= 255) {
      _lengthpit = newLengthpit;
    }
  }

  set depthpit(String newDepthpit) {
    if ((newDepthpit?.length ?? 0) <= 255) {
      _depthpit = newDepthpit;
    }
  }

  set osnovanie(String newOsnovanie) {
    if ((newOsnovanie?.length ?? 0) <= 255) {
      _osnovanie = newOsnovanie;
    }
  }

  set todoDate(newDate) {
    _date = newDate;
  }

  set dateObsl(String newdateObsl) {
    if ((newdateObsl?.length ?? 0) <= 255) {
      _dateObsl = newdateObsl;
    }
  }

  set dateObsl2(String newdateObsl2) {
    if ((newdateObsl2?.length ?? 0) <= 255) {
      _dateObsl2 = newdateObsl2;
    }
  }

  set description(String newDescription) {
    if ((newDescription?.length ?? 0) <= 255) {
      _description = newDescription;
    }
  }

  set diameter(String newdiameter) {
    if ((newdiameter?.length ?? 0) <= 255) {
      _diameter = newdiameter;
    }
  }

  set thickpipe(String newthickpipe) {
    if ((newthickpipe?.length ?? 0) <= 255) {
      _thickpipe = newthickpipe;
    }
  }

  set thickpipe1(String newthickpipe1) {
    if ((newthickpipe1?.length ?? 0) <= 255) {
      _thickpipe1 = newthickpipe1;
    }
  }

  set thickpipe2(String newthickpipe2) {
    if ((newthickpipe2?.length ?? 0) <= 255) {
      _thickpipe2 = newthickpipe2;
    }
  }

  set thickpipe3(String newthickpipe3) {
    if ((newthickpipe3?.length ?? 0) <= 255) {
      _thickpipe3 = newthickpipe3;
    }
  }

  set thickpipe4(String newthickpipe4) {
    if ((newthickpipe4?.length ?? 0) <= 255) {
      _thickpipe4 = newthickpipe4;
    }
  }

  set gradesteel(String newgradesteel) {
    if ((newgradesteel?.length ?? 0) <= 255) {
      _gradesteel = newgradesteel;
    }
  }

  set metalldamage(String newmetalldamage) {
    if ((newmetalldamage?.length ?? 0) <= 255) {
      _metalldamage = newmetalldamage;
    }
  }

  set charmetdamage1(String newcharmetdamage1) {
    if ((newcharmetdamage1?.length ?? 0) <= 255) {
      _charmetdamage1 = newcharmetdamage1;
    }
  }

  set lochourmetdamage1(String newlochourmetdamage1) {
    if ((newlochourmetdamage1?.length ?? 0) <= 255) {
      _lochourmetdamage1 = newlochourmetdamage1;
    }
  }

  set locrasstmetdamage1(String newlocrasstmetdamage1) {
    if ((newlocrasstmetdamage1?.length ?? 0) <= 255) {
      _locrasstmetdamage1 = newlocrasstmetdamage1;
    }
  }

  set sizelengthmetdamage1(String newsizelengthmetdamage1) {
    if ((newsizelengthmetdamage1?.length ?? 0) <= 255) {
      _sizelengthmetdamage1 = newsizelengthmetdamage1;
    }
  }

  set sizewidthmetdamage1(String newsizewidthmetdamage1) {
    if ((newsizewidthmetdamage1?.length ?? 0) <= 255) {
      _sizewidthmetdamage1 = newsizewidthmetdamage1;
    }
  }

  set sizedepthmetdamage1(String newsizedepthmetdamage1) {
    if ((sizedepthmetdamage1?.length ?? 0) <= 255) {
      _sizedepthmetdamage1 = newsizedepthmetdamage1;
    }
  }

  set charmetdamage2(String newcharmetdamage2) {
    if ((newcharmetdamage2?.length ?? 0) <= 255) {
      _charmetdamage2 = newcharmetdamage2;
    }
  }

  set lochourmetdamage2(String newlochourmetdamage2) {
    if ((newlochourmetdamage2?.length ?? 0) <= 255) {
      _lochourmetdamage2 = newlochourmetdamage2;
    }
  }

  set locrasstmetdamage2(String newlocrasstmetdamage2) {
    if ((newlocrasstmetdamage2?.length ?? 0) <= 255) {
      _locrasstmetdamage2 = newlocrasstmetdamage2;
    }
  }

  set sizelengthmetdamage2(String newsizelengthmetdamage2) {
    if ((newsizelengthmetdamage2?.length ?? 0) <= 255) {
      _sizelengthmetdamage2 = newsizelengthmetdamage2;
    }
  }

  set sizewidthmetdamage2(String newsizewidthmetdamage2) {
    if ((newsizewidthmetdamage2?.length ?? 0) <= 255) {
      _sizewidthmetdamage2 = newsizewidthmetdamage2;
    }
  }

  set sizedepthmetdamage2(String newsizedepthmetdamage2) {
    if ((sizedepthmetdamage2?.length ?? 0) <= 255) {
      _sizedepthmetdamage2 = newsizedepthmetdamage2;
    }
  }

  set charmetdamage3(String newcharmetdamage3) {
    if ((newcharmetdamage3?.length ?? 0) <= 255) {
      _charmetdamage3 = newcharmetdamage3;
    }
  }

  set lochourmetdamage3(String newlochourmetdamage3) {
    if ((newlochourmetdamage3?.length ?? 0) <= 255) {
      _lochourmetdamage3 = newlochourmetdamage3;
    }
  }

  set locrasstmetdamage3(String newlocrasstmetdamage3) {
    if ((newlocrasstmetdamage3?.length ?? 0) <= 255) {
      _locrasstmetdamage3 = newlocrasstmetdamage3;
    }
  }

  set sizelengthmetdamage3(String newsizelengthmetdamage3) {
    if ((newsizelengthmetdamage3?.length ?? 0) <= 255) {
      _sizelengthmetdamage3 = newsizelengthmetdamage3;
    }
  }

  set sizewidthmetdamage3(String newsizewidthmetdamage3) {
    if ((newsizewidthmetdamage3?.length ?? 0) <= 255) {
      _sizewidthmetdamage3 = newsizewidthmetdamage3;
    }
  }

  set sizedepthmetdamage3(String newsizedepthmetdamage3) {
    if ((sizedepthmetdamage3?.length ?? 0) <= 255) {
      _sizedepthmetdamage3 = newsizedepthmetdamage3;
    }
  }

  set typeinsul(String newtypeinsul) {
    if ((newtypeinsul?.length ?? 0) <= 255) {
      _typeinsul = newtypeinsul;
    }
  }

  set insuladhes1(String newinsuladhes1) {
    if ((newinsuladhes1?.length ?? 0) <= 255) {
      _insuladhes1 = newinsuladhes1;
    }
  }

  set insulcharadhes1(String newinsulcharadhes1) {
    if ((newinsulcharadhes1?.length ?? 0) <= 255) {
      _insulcharadhes1 = newinsulcharadhes1;
    }
  }

  set thickinsul1(String newthickinsul1) {
    if ((newthickinsul1?.length ?? 0) <= 255) {
      _thickinsul1 = newthickinsul1;
    }
  }

  set insuladhes2(String newinsuladhes2) {
    if ((newinsuladhes2?.length ?? 0) <= 255) {
      _insuladhes2 = newinsuladhes2;
    }
  }

  set insulcharadhes2(String newinsulcharadhes2) {
    if ((newinsulcharadhes2?.length ?? 0) <= 255) {
      _insulcharadhes2 = newinsulcharadhes2;
    }
  }

  set thickinsul2(String newthickinsul2) {
    if ((newthickinsul2?.length ?? 0) <= 255) {
      _thickinsul2 = newthickinsul2;
    }
  }

  set insuladhes3(String newinsuladhes3) {
    if ((newinsuladhes3?.length ?? 0) <= 255) {
      _insuladhes3 = newinsuladhes3;
    }
  }

  set insuladhes4(String newinsuladhes4) {
    if ((newinsuladhes4?.length ?? 0) <= 255) {
      _insuladhes4 = newinsuladhes4;
    }
  }

  set insulcharadhes3(String newinsulcharadhes3) {
    if ((newinsulcharadhes3?.length ?? 0) <= 255) {
      _insulcharadhes3 = newinsulcharadhes3;
    }
  }

  set insulcharadhes4(String newinsulcharadhes4) {
    if ((newinsulcharadhes4?.length ?? 0) <= 255) {
      _insulcharadhes4 = newinsulcharadhes4;
    }
  }

  set thickinsul3(String newthickinsul3) {
    if ((newthickinsul3?.length ?? 0) <= 255) {
      _thickinsul3 = newthickinsul3;
    }
  }

  set thickinsul4(String newthickinsul4) {
    if ((newthickinsul4?.length ?? 0) <= 255) {
      _thickinsul4 = newthickinsul4;
    }
  }

  set thickinsul5(String newthickinsul5) {
    if ((newthickinsul5?.length ?? 0) <= 255) {
      _thickinsul5 = newthickinsul5;
    }
  }

  set thickinsul6(String newthickinsul6) {
    if ((newthickinsul6?.length ?? 0) <= 255) {
      _thickinsul6 = newthickinsul6;
    }
  }

  set thickinsul7(String newthickinsul7) {
    if ((newthickinsul7?.length ?? 0) <= 255) {
      _thickinsul7 = newthickinsul7;
    }
  }

  set thickinsul8(String newthickinsul8) {
    if ((newthickinsul8?.length ?? 0) <= 255) {
      _thickinsul8 = newthickinsul8;
    }
  }

  set thickinsul9(String newthickinsul9) {
    if ((newthickinsul9?.length ?? 0) <= 255) {
      _thickinsul9 = newthickinsul9;
    }
  }

  set thickinsul10(String newthickinsul10) {
    if ((newthickinsul10?.length ?? 0) <= 255) {
      _thickinsul10 = newthickinsul10;
    }
  }

  set thickinsul11(String newthickinsul11) {
    if ((newthickinsul11?.length ?? 0) <= 255) {
      _thickinsul11 = newthickinsul11;
    }
  }

  set thickinsul12(String newthickinsul12) {
    if ((newthickinsul12?.length ?? 0) <= 255) {
      _thickinsul12 = newthickinsul12;
    }
  }

  set thickinsul(String newthickinsul) {
    if ((newthickinsul?.length ?? 0) <= 255) {
      _thickinsul = newthickinsul;
    }
  }

  set insulcondit(String newinsulcondit) {
    if ((newinsulcondit?.length ?? 0) <= 255) {
      _insulcondit = newinsulcondit;
    }
  }

  set insuldamage(String newinsuldamage) {
    if ((newinsuldamage?.length ?? 0) <= 255) {
      _insuldamage = newinsuldamage;
    }
  }

  set charinsuldamage1(String newcharinsuldamage1) {
    if ((newcharinsuldamage1?.length ?? 0) <= 255) {
      _charinsuldamage1 = newcharinsuldamage1;
    }
  }

  set lochourinsuldamage1(String newlochourinsuldamage1) {
    if ((newlochourinsuldamage1?.length ?? 0) <= 255) {
      _lochourinsuldamage1 = newlochourinsuldamage1;
    }
  }

  set locrasstinsuldamage1(String newlocrasstinsuldamage1) {
    if ((newlocrasstinsuldamage1?.length ?? 0) <= 255) {
      _locrasstinsuldamage1 = newlocrasstinsuldamage1;
    }
  }

  set sizelengthinsuldamage1(String newsizelengthinsuldamage1) {
    if ((newsizelengthinsuldamage1?.length ?? 0) <= 255) {
      _sizelengthinsuldamage1 = newsizelengthinsuldamage1;
    }
  }

  set sizewidthinsuldamage1(String newsizewidthinsuldamage1) {
    if ((newsizewidthinsuldamage1?.length ?? 0) <= 255) {
      _sizewidthinsuldamage1 = newsizewidthinsuldamage1;
    }
  }

  set sizedepthinsuldamage1(String newsizedepthinsuldamage1) {
    if ((sizedepthinsuldamage1?.length ?? 0) <= 255) {
      _sizedepthinsuldamage1 = newsizedepthinsuldamage1;
    }
  }

  set charinsuldamage2(String newcharinsuldamage2) {
    if ((newcharinsuldamage2?.length ?? 0) <= 255) {
      _charinsuldamage2 = newcharinsuldamage2;
    }
  }

  set lochourinsuldamage2(String newlochourinsuldamage2) {
    if ((newlochourinsuldamage2?.length ?? 0) <= 255) {
      _lochourinsuldamage2 = newlochourinsuldamage2;
    }
  }

  set locrasstinsuldamage2(String newlocrasstinsuldamage2) {
    if ((newlocrasstinsuldamage2?.length ?? 0) <= 255) {
      _locrasstinsuldamage2 = newlocrasstinsuldamage2;
    }
  }

  set sizelengthinsuldamage2(String newsizelengthinsuldamage2) {
    if ((newsizelengthinsuldamage2?.length ?? 0) <= 255) {
      _sizelengthinsuldamage2 = newsizelengthinsuldamage2;
    }
  }

  set sizewidthinsuldamage2(String newsizewidthinsuldamage2) {
    if ((newsizewidthinsuldamage2?.length ?? 0) <= 255) {
      _sizewidthinsuldamage2 = newsizewidthinsuldamage2;
    }
  }

  set sizedepthinsuldamage2(String newsizedepthinsuldamage2) {
    if ((sizedepthinsuldamage2?.length ?? 0) <= 255) {
      _sizedepthinsuldamage2 = newsizedepthinsuldamage2;
    }
  }

  set charinsuldamage3(String newcharinsuldamage3) {
    if ((newcharinsuldamage3?.length ?? 0) <= 255) {
      _charinsuldamage3 = newcharinsuldamage3;
    }
  }

  set lochourinsuldamage3(String newlochourinsuldamage3) {
    if ((newlochourinsuldamage3?.length ?? 0) <= 255) {
      _lochourinsuldamage3 = newlochourinsuldamage3;
    }
  }

  set locrasstinsuldamage3(String newlocrasstinsuldamage3) {
    if ((newlocrasstinsuldamage3?.length ?? 0) <= 255) {
      _locrasstinsuldamage3 = newlocrasstinsuldamage3;
    }
  }

  set sizelengthinsuldamage3(String newsizelengthinsuldamage3) {
    if ((newsizelengthinsuldamage3?.length ?? 0) <= 255) {
      _sizelengthinsuldamage3 = newsizelengthinsuldamage3;
    }
  }

  set sizewidthinsuldamage3(String newsizewidthinsuldamage3) {
    if ((newsizewidthinsuldamage3?.length ?? 0) <= 255) {
      _sizewidthinsuldamage3 = newsizewidthinsuldamage3;
    }
  }

  set sizedepthinsuldamage3(String newsizedepthinsuldamage3) {
    if ((sizedepthinsuldamage3?.length ?? 0) <= 255) {
      _sizedepthinsuldamage3 = newsizedepthinsuldamage3;
    }
  }

  set tempair(String newtempair) {
    if ((newtempair?.length ?? 0) <= 255) {
      _tempair = newtempair;
    }
  }

  set tempsurf(String newtempsurf) {
    if ((newtempsurf?.length ?? 0) <= 255) {
      _tempsurf = newtempsurf;
    }
  }

  set relathumid(String newrelathumid) {
    if ((newrelathumid?.length ?? 0) <= 255) {
      _relathumid = newrelathumid;
    }
  }

  set dewpoint(String newdewpoint) {
    if ((newdewpoint?.length ?? 0) <= 255) {
      _dewpoint = newdewpoint;
    }
  }

  set difftemp(String newdifftemp) {
    if ((newdifftemp?.length ?? 0) <= 255) {
      _difftemp = newdifftemp;
    }
  }

  set typeinsulrest(String newtypeinsulrest) {
    if ((newtypeinsulrest?.length ?? 0) <= 255) {
      _typeinsulrest = newtypeinsulrest;
    }
  }

  set insuladhesrest(String newinsuladhesrest) {
    if ((newinsuladhesrest?.length ?? 0) <= 255) {
      _insuladhesrest = newinsuladhesrest;
    }
  }

  set insuladhesrest2(String newinsuladhesrest2) {
    if ((newinsuladhesrest2?.length ?? 0) <= 255) {
      _insuladhesrest2 = newinsuladhesrest2;
    }
  }

  set insuladhesrest1(String newinsuladhesrest1) {
    if ((newinsuladhesrest1?.length ?? 0) <= 255) {
      _insuladhesrest1 = newinsuladhesrest1;
    }
  }

  set insuladhesrest3(String newinsuladhesrest3) {
    if ((newinsuladhesrest3?.length ?? 0) <= 255) {
      _insuladhesrest3 = newinsuladhesrest3;
    }
  }

  set insulcharadhesrest1(String newinsulcharadhesrest1) {
    if ((newinsulcharadhesrest1?.length ?? 0) <= 255) {
      _insulcharadhesrest1 = newinsulcharadhesrest1;
    }
  }

  set insulcharadhesrest2(String newinsulcharadhesrest2) {
    if ((newinsulcharadhesrest2?.length ?? 0) <= 255) {
      _insulcharadhesrest2 = newinsulcharadhesrest2;
    }
  }

  set insulcharadhesrest3(String newinsulcharadhesrest3) {
    if ((newinsulcharadhesrest3?.length ?? 0) <= 255) {
      _insulcharadhesrest3 = newinsulcharadhesrest3;
    }
  }

  set insulcharadhesrest4(String newinsulcharadhesrest4) {
    if ((newinsulcharadhesrest4?.length ?? 0) <= 255) {
      _insulcharadhesrest4 = newinsulcharadhesrest4;
    }
  }

  set thickinsulrest(String newthickinsulrest) {
    if ((newthickinsulrest?.length ?? 0) <= 255) {
      _thickinsulrest = newthickinsulrest;
    }
  }

  set thickinsulrest1(String newthickinsulrest1) {
    if ((newthickinsulrest1?.length ?? 0) <= 255) {
      _thickinsulrest1 = newthickinsulrest1;
    }
  }

  set thickinsulrest2(String newthickinsulrest2) {
    if ((newthickinsulrest2?.length ?? 0) <= 255) {
      _thickinsulrest2 = newthickinsulrest2;
    }
  }

  set thickinsulrest3(String newthickinsulrest3) {
    if ((newthickinsulrest3?.length ?? 0) <= 255) {
      _thickinsulrest3 = newthickinsulrest3;
    }
  }

  set thickinsulrest4(String newthickinsulrest4) {
    if ((newthickinsulrest4?.length ?? 0) <= 255) {
      _thickinsulrest4 = newthickinsulrest4;
    }
  }

  set thickinsulrest5(String newthickinsulrest5) {
    if ((newthickinsulrest5?.length ?? 0) <= 255) {
      _thickinsulrest5 = newthickinsulrest5;
    }
  }

  set thickinsulrest6(String newthickinsulrest6) {
    if ((newthickinsulrest6?.length ?? 0) <= 255) {
      _thickinsulrest6 = newthickinsulrest6;
    }
  }

  set thickinsulrest7(String newthickinsulrest7) {
    if ((newthickinsulrest7?.length ?? 0) <= 255) {
      _thickinsulrest7 = newthickinsulrest7;
    }
  }

  set thickinsulrest8(String newthickinsulrest8) {
    if ((newthickinsulrest8?.length ?? 0) <= 255) {
      _thickinsulrest8 = newthickinsulrest8;
    }
  }

  set thickinsulrest9(String newthickinsulrest9) {
    if ((newthickinsulrest9?.length ?? 0) <= 255) {
      _thickinsulrest9 = newthickinsulrest9;
    }
  }

  set thickinsulrest10(String newthickinsulrest10) {
    if ((newthickinsulrest10?.length ?? 0) <= 255) {
      _thickinsulrest10 = newthickinsulrest10;
    }
  }

  set thickinsulrest11(String newthickinsulrest11) {
    if ((newthickinsulrest11?.length ?? 0) <= 255) {
      _thickinsulrest11 = newthickinsulrest11;
    }
  }

  set thickinsulrest12(String newthickinsulrest12) {
    if ((newthickinsulrest12?.length ?? 0) <= 255) {
      _thickinsulrest12 = newthickinsulrest12;
    }
  }

  set contininsulrest(String newcontininsulrest) {
    if ((newcontininsulrest?.length ?? 0) <= 255) {
      _contininsulrest = newcontininsulrest;
    }
  }

  set metrrest(String newmetrrest) {
    if ((newmetrrest?.length ?? 0) <= 255) {
      _metrrest = newmetrrest;
    }
  }

  set tickinsulmeter(String newtickinsulmeter) {
    if ((newtickinsulmeter?.length ?? 0) <= 255) {
      _tickinsulmeter = newtickinsulmeter;
    }
  }

  set tickinsulmeternumb(String newtickinsulmeternumb) {
    if ((newtickinsulmeternumb?.length ?? 0) <= 255) {
      _tickinsulmeternumb = newtickinsulmeternumb;
    }
  }

  set tickinsulmeterdate(String newtickinsulmeterdate) {
    if ((newtickinsulmeterdate?.length ?? 0) <= 255) {
      _tickinsulmeterdate = newtickinsulmeterdate;
    }
  }

  set tickmetallmeter(String newtickmetallmeter) {
    if ((newtickmetallmeter?.length ?? 0) <= 255) {
      _tickmetallmeter = newtickmetallmeter;
    }
  }

  set tickmetallmeternumb(String newtickmetallmeternumb) {
    if ((newtickmetallmeternumb?.length ?? 0) <= 255) {
      _tickmetallmeternumb = newtickmetallmeternumb;
    }
  }

  set tickmetallmeterdate(String newtickmetallmeterdate) {
    if ((newtickmetallmeterdate?.length ?? 0) <= 255) {
      _tickmetallmeterdate = newtickmetallmeterdate;
    }
  }

  set adhesmeter(String newadhesmeter) {
    if ((newadhesmeter?.length ?? 0) <= 255) {
      _adhesmeter = newadhesmeter;
    }
  }

  set adhesmeternumb(String newadhesmeternumb) {
    if ((newadhesmeternumb?.length ?? 0) <= 255) {
      _adhesmeternumb = newadhesmeternumb;
    }
  }

  set adhesmeterdate(String newadhesmeterdate) {
    if ((newadhesmeterdate?.length ?? 0) <= 255) {
      _adhesmeterdate = newadhesmeterdate;
    }
  }

  set continmeter(String newcontinmeter) {
    if ((newcontinmeter?.length ?? 0) <= 255) {
      _continmeter = newcontinmeter;
    }
  }

  set continmeternumb(String newcontinmeternumb) {
    if ((newcontinmeternumb?.length ?? 0) <= 255) {
      _continmeternumb = newcontinmeternumb;
    }
  }

  set continmeterdate(String newcontinmeterdate) {
    if ((newcontinmeterdate?.length ?? 0) <= 255) {
      _continmeterdate = newcontinmeterdate;
    }
  }

  set setvik(String newsetvik) {
    if ((newsetvik?.length ?? 0) <= 255) {
      _setvik = newsetvik;
    }
  }

  set setviknumb(String newsetviknumb) {
    if ((newsetviknumb?.length ?? 0) <= 255) {
      _setviknumb = newsetviknumb;
    }
  }

  set setvikdate(String newsetvikdate) {
    if ((newsetvikdate?.length ?? 0) <= 255) {
      _setvikdate = newsetvikdate;
    }
  }

  set multimeter(String newmultimeter) {
    if ((newmultimeter?.length ?? 0) <= 255) {
      _multimeter = newmultimeter;
    }
  }

  set multimeternumb(String newmultimeternumb) {
    if ((newmultimeternumb?.length ?? 0) <= 255) {
      _multimeternumb = newmultimeternumb;
    }
  }

  set multimeterdate(String newmultimeterdate) {
    if ((newmultimeterdate?.length ?? 0) <= 255) {
      _multimeterdate = newmultimeterdate;
    }
  }

  set filial(String newfilial) {
    if ((newfilial?.length ?? 0) <= 255) {
      _filial = newfilial;
    }
  }

  set dolzhnpredskom(String newdolzhnpredskom) {
    if ((newdolzhnpredskom?.length ?? 0) <= 255) {
      _dolzhnpredskom = newdolzhnpredskom;
    }
  }

  set fiopredskom(String newfiopredskom) {
    if ((newfiopredskom?.length ?? 0) <= 255) {
      _fiopredskom = newfiopredskom;
    }
  }

  set dolzhnproizvrab(String newdolzhnproizvrab) {
    if ((newdolzhnproizvrab?.length ?? 0) <= 255) {
      _dolzhnproizvrab = newdolzhnproizvrab;
    }
  }

  set fioproizvrab(String newfioproizvrab) {
    if ((newfioproizvrab?.length ?? 0) <= 255) {
      _fioproizvrab = newfioproizvrab;
    }
  }

  set dolzhnnachuchastka(String newdolzhnnachuchastka) {
    if ((newdolzhnnachuchastka?.length ?? 0) <= 255) {
      _dolzhnnachuchastka = newdolzhnnachuchastka;
    }
  }

  set fionachuchastka(String newfionachuchastka) {
    if ((newfionachuchastka?.length ?? 0) <= 255) {
      _fionachuchastka = newfionachuchastka;
    }
  }

  set dolzhnpredstzakazch(String newdolzhnpredstzakazch) {
    if ((newdolzhnpredstzakazch?.length ?? 0) <= 255) {
      _dolzhnpredstzakazch = newdolzhnpredstzakazch;
    }
  }

  set fiopredstzakazch(String newfiopredstzakazch) {
    if ((newfiopredstzakazch?.length ?? 0) <= 255) {
      _fiopredstzakazch = newfiopredstzakazch;
    }
  }

  set dolzhnpredstzakazchSK(String newdolzhnpredstzakazchSK) {
    if ((newdolzhnpredstzakazchSK?.length ?? 0) <= 255) {
      _dolzhnpredstzakazchSK = newdolzhnpredstzakazchSK;
    }
  }

  set fiopredstzakazchSK(String newfiopredstzakazchSK) {
    if ((newfiopredstzakazchSK?.length ?? 0) <= 255) {
      _fiopredstzakazchSK = newfiopredstzakazchSK;
    }
  }

  set dolzhnpredststroitSK(String newdolzhnpredststroitSK) {
    if ((newdolzhnpredststroitSK?.length ?? 0) <= 255) {
      _dolzhnpredststroitSK = newdolzhnpredststroitSK;
    }
  }

  set fiopredststroitSK(String newfiopredststroitSK) {
    if ((newfiopredststroitSK?.length ?? 0) <= 255) {
      _fiopredststroitSK = newfiopredststroitSK;
    }
  }

  set dolzhnpredststroit(String newdolzhnpredststroit) {
    if ((newdolzhnpredststroit?.length ?? 0) <= 255) {
      _dolzhnpredststroit = newdolzhnpredststroit;
    }
  }

  set fiopredststroit(String newfiopredststroit) {
    if ((newfiopredststroit?.length ?? 0) <= 255) {
      _fiopredststroit = newfiopredststroit;
    }
  }

  set dolzhndruglic(String newdolzhndruglic) {
    if ((newdolzhndruglic?.length ?? 0) <= 255) {
      _dolzhndruglic = newdolzhndruglic;
    }
  }

  set fiodruglic(String newfiodruglic) {
    if ((newfiodruglic?.length ?? 0) <= 255) {
      _fiodruglic = newfiodruglic;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['location'] = _location;
    map['potencial'] = _potencial;
    map['soprgrunt'] = _soprgrunt;

    map['mesto'] = _mesto;
    map['tipgrunta'] = _tipgrunta;
    map['vlaggrunt'] = _vlaggrunt;
    map['distvtd'] = _distvtd;
    map['privmest'] = _privmest;

    map['ph'] = _ph;
    map['davl'] = _davl;
    map['vlaga'] = _vlaga;
    map['zakl'] = _zakl;

    map['piketkm'] = _piketkm;
    map['coordinate'] = _coordinate;
    map['lengthpit'] = _lengthpit;
    map['depthpit'] = _depthpit;
    map['osnovanie'] = _osnovanie;
    map['date'] = _date;
    map['dateObsl'] = _dateObsl;
    map['dateObsl2'] = _dateObsl2;
    map['description'] = _description;

    map['diameter'] = _diameter;
    map['thickpipe'] = _thickpipe;
    map['thickpipe1'] = _thickpipe1;
    map['thickpipe2'] = _thickpipe2;
    map['thickpipe3'] = _thickpipe3;
    map['thickpipe4'] = _thickpipe4;
    map['gradesteel'] = _gradesteel;
    map['metalldamage'] = _metalldamage;

    map['charmetdamage1'] = _charmetdamage1;
    map['lochourmetdamage1'] = _lochourmetdamage1;
    map['locrasstmetdamage1'] = _locrasstmetdamage1;
    map['sizelengthmetdamage1'] = _sizelengthmetdamage1;
    map['sizewidthmetdamage1'] = _sizewidthmetdamage1;
    map['sizedepthmetdamage1'] = _sizedepthmetdamage1;

    map['charmetdamage2'] = _charmetdamage2;
    map['lochourmetdamage2'] = _lochourmetdamage2;
    map['locrasstmetdamage2'] = _locrasstmetdamage2;
    map['sizelengthmetdamage2'] = _sizelengthmetdamage2;
    map['sizewidthmetdamage2'] = _sizewidthmetdamage2;
    map['sizedepthmetdamage2'] = _sizedepthmetdamage2;

    map['charmetdamage3'] = _charmetdamage3;
    map['lochourmetdamage3'] = _lochourmetdamage3;
    map['locrasstmetdamage3'] = _locrasstmetdamage3;
    map['sizelengthmetdamage3'] = _sizelengthmetdamage3;
    map['sizewidthmetdamage3'] = _sizewidthmetdamage3;
    map['sizedepthmetdamage3'] = _sizedepthmetdamage3;

    map['typeinsul'] = _typeinsul;
    map['insuladhes1'] = _insuladhes1;
    map['insulcharadhes1'] = _insulcharadhes1;
    map['thickinsul1'] = _thickinsul1;

    map['insuladhes2'] = _insuladhes2;
    map['insulcharadhes2'] = _insulcharadhes2;
    map['thickinsul2'] = _thickinsul2;

    map['insuladhes3'] = _insuladhes3;
    map['insulcharadhes3'] = _insulcharadhes3;
    map['insuladhes4'] = _insuladhes4;
    map['insulcharadhes4'] = _insulcharadhes4;
    map['thickinsul3'] = _thickinsul3;
    map['thickinsul4'] = _thickinsul4;
    map['thickinsul5'] = _thickinsul5;
    map['thickinsul6'] = _thickinsul6;
    map['thickinsul7'] = _thickinsul7;
    map['thickinsul8'] = _thickinsul8;
    map['thickinsul9'] = _thickinsul9;
    map['thickinsul10'] = _thickinsul10;
    map['thickinsul11'] = _thickinsul11;
    map['thickinsul12'] = _thickinsul12;
    map['thickinsul'] = _thickinsul;

    map['insulcondit'] = _insulcondit;
    map['insuldamage'] = _insuldamage;

    map['charinsuldamage1'] = _charinsuldamage1;
    map['lochourinsuldamage1'] = _lochourinsuldamage1;
    map['locrasstinsuldamage1'] = _locrasstinsuldamage1;
    map['sizelengthinsuldamage1'] = _sizelengthinsuldamage1;
    map['sizewidthinsuldamage1'] = _sizewidthinsuldamage1;
    map['sizedepthinsuldamage1'] = _sizedepthinsuldamage1;

    map['charinsuldamage2'] = _charinsuldamage2;
    map['lochourinsuldamage2'] = _lochourinsuldamage2;
    map['locrasstinsuldamage2'] = _locrasstinsuldamage2;
    map['sizelengthinsuldamage2'] = _sizelengthinsuldamage2;
    map['sizewidthinsuldamage2'] = _sizewidthinsuldamage2;
    map['sizedepthinsuldamage2'] = _sizedepthinsuldamage2;

    map['charinsuldamage3'] = _charinsuldamage3;
    map['lochourinsuldamage3'] = _lochourinsuldamage3;
    map['locrasstinsuldamage3'] = _locrasstinsuldamage3;
    map['sizelengthinsuldamage3'] = _sizelengthinsuldamage3;
    map['sizewidthinsuldamage3'] = _sizewidthinsuldamage3;
    map['sizedepthinsuldamage3'] = _sizedepthinsuldamage3;

    map['tempair'] = _tempair;
    map['tempsurf'] = _tempsurf;
    map['relathumid'] = _relathumid;
    map['dewpoint'] = _dewpoint;
    map['difftemp'] = _difftemp;

    map['typeinsulrest'] = _typeinsulrest;
    map['insuladhesrest'] = _insuladhesrest;
    map['insuladhesrest1'] = _insuladhesrest1;
    map['insuladhesrest2'] = _insuladhesrest2;
    map['insuladhesrest3'] = _insuladhesrest3;
    map['insulcharadhesrest1'] = _insulcharadhesrest1;
    map['insulcharadhesrest2'] = _insulcharadhesrest2;
    map['insulcharadhesrest3'] = _insulcharadhesrest3;
    map['insulcharadhesrest4'] = _insulcharadhesrest4;
    map['thickinsulrest'] = _thickinsulrest;
    map['thickinsulrest1'] = _thickinsulrest1;
    map['thickinsulrest2'] = _thickinsulrest2;
    map['thickinsulrest3'] = _thickinsulrest3;
    map['thickinsulrest4'] = _thickinsulrest4;
    map['thickinsulrest5'] = _thickinsulrest5;
    map['thickinsulrest6'] = _thickinsulrest6;
    map['thickinsulrest7'] = _thickinsulrest7;
    map['thickinsulrest8'] = _thickinsulrest8;
    map['thickinsulrest9'] = _thickinsulrest9;
    map['thickinsulrest10'] = _thickinsulrest10;
    map['thickinsulrest11'] = _thickinsulrest11;
    map['thickinsulrest12'] = _thickinsulrest12;
    map['contininsulrest'] = _contininsulrest;
    map['metrrest'] = _metrrest;

    map['tickinsulmeter'] = _tickinsulmeter;
    map['tickinsulmeternumb'] = _tickinsulmeternumb;
    map['tickinsulmeterdate'] = _tickinsulmeterdate;

    map['tickmetallmeter'] = _tickmetallmeter;
    map['tickmetallmeternumb'] = _tickmetallmeternumb;
    map['tickmetallmeterdate'] = _tickmetallmeterdate;

    map['adhesmeter'] = _adhesmeter;
    map['adhesmeternumb'] = _adhesmeternumb;
    map['adhesmeterdate'] = _adhesmeterdate;

    map['continmeter'] = _continmeter;
    map['continmeternumb'] = _continmeternumb;
    map['continmeterdate'] = _continmeterdate;

    map['setvik'] = _setvik;
    map['setviknumb'] = _setviknumb;
    map['setvikdate'] = _setvikdate;

    map['multimeter'] = _multimeter;
    map['multimeternumb'] = _multimeternumb;
    map['multimeterdate'] = _multimeterdate;

    map['photo'] = _photo;

    map['photometdef1'] = _photometdef1;
    map['photometdef2'] = _photometdef2;
    map['photometdef3'] = _photometdef3;
    map['photometdef4'] = _photometdef4;
    map['photometdef5'] = _photometdef5;
    map['photometdef6'] = _photometdef6;
    map['photometdef7'] = _photometdef7;
    map['photometdef8'] = _photometdef8;
    map['photometdef9'] = _photometdef9;
    map['photometdef10'] = _photometdef10;
    map['photoinsuldef1'] = _photoinsuldef1;
    map['photoinsuldef2'] = _photoinsuldef2;
    map['photoinsuldef3'] = _photoinsuldef3;
    map['photoinsuldef4'] = _photoinsuldef4;
    map['photoinsuldef5'] = _photoinsuldef5;
    map['photoinsuldef6'] = _photoinsuldef6;
    map['photoinsuldef7'] = _photoinsuldef7;
    map['photoinsuldef8'] = _photoinsuldef8;
    map['photoinsuldef9'] = _photoinsuldef9;
    map['photoinsuldef10'] = _photoinsuldef10;
    map['photorest'] = _photorest;
    map['photodesc'] = _photodesc;

    map['filial '] = _filial;
    map['dolzhnpredskom '] = _dolzhnpredskom;
    map['fiopredskom '] = _fiopredskom;
    map['dolzhnproizvrab '] = _dolzhnproizvrab;
    map['fioproizvrab '] = _fioproizvrab;
    map['dolzhnnachuchastka '] = _dolzhnnachuchastka;
    map['fionachuchastka '] = _fionachuchastka;
    map['dolzhnpredstzakazch '] = _dolzhnpredstzakazch;
    map['fiopredstzakazch '] = _fiopredstzakazch;
    map['dolzhnpredstzakazchSK '] = _dolzhnpredstzakazchSK;
    map['fiopredstzakazchSK '] = _fiopredstzakazchSK;
    map['dolzhnpredststroitSK '] = _dolzhnpredststroitSK;
    map['fiopredststroitSK '] = _fiopredststroitSK;
    map['dolzhnpredststroit '] = _dolzhnpredststroit;
    map['fiopredststroit '] = _fiopredststroit;
    map['dolzhndruglic '] = _dolzhndruglic;
    map['fiodruglic '] = _fiodruglic;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Todo.fromObject(dynamic o) {
    _id = o['id'];
    _title = o['title'];
    _location = o['location'];
    _potencial = o['potencial'];
    _soprgrunt = o['soprgrunt'];

    _mesto = o['mesto'];
    _tipgrunta = o['tipgrunta'];
    _vlaggrunt = o['vlaggrunt'];
    _distvtd = o['distvtd'];
    _privmest = o['privmest'];

    _ph = o['ph'];
    _davl = o['davl'];
    _vlaga = o['vlaga'];
    _zakl = o['zakl'];

    _piketkm = o['piketkm'];
    _coordinate = o['coordinate'];
    _lengthpit = o['lengthpit'];
    _depthpit = o['depthpit'];
    _osnovanie = o['osnovanie'];
    _date = o['date'];
    _dateObsl = o['dateObsl'];
    _dateObsl2 = o['dateObsl2'];
    _description = o['description'];

    _diameter = o['diameter'];
    _thickpipe = o['thickpipe'];
    _thickpipe1 = o['thickpipe1'];
    _thickpipe2 = o['thickpipe2'];
    _thickpipe3 = o['thickpipe3'];
    _thickpipe4 = o['thickpipe4'];
    _gradesteel = o['gradesteel'];
    _metalldamage = o['metalldamage'];

    _charmetdamage1 = o['charmetdamage1'];
    _lochourmetdamage1 = o['lochourmetdamage1'];
    _locrasstmetdamage1 = o['locrasstmetdamage1'];
    _sizelengthmetdamage1 = o['sizelengthmetdamage1'];
    _sizewidthmetdamage1 = o['sizewidthmetdamage1'];
    _sizedepthmetdamage1 = o['sizedepthmetdamage1'];

    _charmetdamage2 = o['charmetdamage2'];
    _lochourmetdamage2 = o['lochourmetdamage2'];
    _locrasstmetdamage2 = o['locrasstmetdamage2'];
    _sizelengthmetdamage2 = o['sizelengthmetdamage2'];
    _sizewidthmetdamage2 = o['sizewidthmetdamage2'];
    _sizedepthmetdamage2 = o['sizedepthmetdamage2'];

    _charmetdamage3 = o['charmetdamage3'];
    _lochourmetdamage3 = o['lochourmetdamage3'];
    _locrasstmetdamage3 = o['locrasstmetdamage3'];
    _sizelengthmetdamage3 = o['sizelengthmetdamage3'];
    _sizewidthmetdamage3 = o['sizewidthmetdamage3'];
    _sizedepthmetdamage3 = o['sizedepthmetdamage3'];

    _typeinsul = o['typeinsul'];
    _insuladhes1 = o['insuladhes1'];
    _insulcharadhes1 = o['insulcharadhes1'];
    _thickinsul1 = o['thickinsul1'];

    _insuladhes2 = o['insuladhes2'];
    _insulcharadhes2 = o['insulcharadhes2'];
    _thickinsul2 = o['thickinsul2'];

    _insuladhes3 = o['insuladhes3'];
    _insulcharadhes3 = o['insulcharadhes3'];
    _thickinsul3 = o['thickinsul3'];
    _insuladhes4 = o['insuladhes4'];
    _insulcharadhes4 = o['insulcharadhes4'];
    _thickinsul4 = o['thickinsul4'];
    _thickinsul5 = o['thickinsul5'];
    _thickinsul6 = o['thickinsul6'];
    _thickinsul7 = o['thickinsul7'];
    _thickinsul8 = o['thickinsul8'];
    _thickinsul9 = o['thickinsul9'];
    _thickinsul10 = o['thickinsul10'];
    _thickinsul11 = o['thickinsul11'];
    _thickinsul12 = o['thickinsul12'];
    _thickinsul = o['thickinsul'];

    _insulcondit = o['insulcondit'];
    _insuldamage = o['insuldamage'];

    _charinsuldamage1 = o['charinsuldamage1'];
    _lochourinsuldamage1 = o['lochourinsuldamage1'];
    _locrasstinsuldamage1 = o['locrasstinsuldamage1'];
    _sizelengthinsuldamage1 = o['sizelengthinsuldamage1'];
    _sizewidthinsuldamage1 = o['sizewidthinsuldamage1'];
    _sizedepthinsuldamage1 = o['sizedepthinsuldamage1'];

    _charinsuldamage2 = o['charinsuldamage2'];
    _lochourinsuldamage2 = o['lochourinsuldamage2'];
    _locrasstinsuldamage2 = o['locrasstinsuldamage2'];
    _sizelengthinsuldamage2 = o['sizelengthinsuldamage2'];
    _sizewidthinsuldamage2 = o['sizewidthinsuldamage2'];
    _sizedepthinsuldamage2 = o['sizedepthinsuldamage2'];

    _charinsuldamage3 = o['charinsuldamage3'];
    _lochourinsuldamage3 = o['lochourinsuldamage3'];
    _locrasstinsuldamage3 = o['locrasstinsuldamage3'];
    _sizelengthinsuldamage3 = o['sizelengthinsuldamage3'];
    _sizewidthinsuldamage3 = o['sizewidthinsuldamage3'];
    _sizedepthinsuldamage3 = o['sizedepthinsuldamage3'];

    _tempair = o['tempair'];
    _tempsurf = o['tempsurf'];
    _relathumid = o['relathumid'];
    _dewpoint = o['dewpoint'];
    _difftemp = o['difftemp'];

    _typeinsulrest = o['typeinsulrest'];
    _insuladhesrest = o['insuladhesrest'];
    _insuladhesrest1 = o['insuladhesrest1'];
    _insuladhesrest2 = o['insuladhesrest2'];
    _insuladhesrest3 = o['insuladhesrest3'];
    _insulcharadhesrest1 = o['insulcharadhesrest1'];
    _insulcharadhesrest2 = o['insulcharadhesrest2'];
    _insulcharadhesrest3 = o['insulcharadhesrest3'];
    _insulcharadhesrest4 = o['insulcharadhesrest4'];
    _thickinsulrest = o['thickinsulrest'];
    _thickinsulrest1 = o['thickinsulrest1'];
    _thickinsulrest2 = o['thickinsulrest2'];
    _thickinsulrest3 = o['thickinsulrest3'];
    _thickinsulrest4 = o['thickinsulrest4'];
    _thickinsulrest5 = o['thickinsulrest5'];
    _thickinsulrest6 = o['thickinsulrest6'];
    _thickinsulrest7 = o['thickinsulrest7'];
    _thickinsulrest8 = o['thickinsulrest8'];
    _thickinsulrest9 = o['thickinsulrest9'];
    _thickinsulrest10 = o['thickinsulrest10'];
    _thickinsulrest11 = o['thickinsulrest11'];
    _thickinsulrest12 = o['thickinsulrest12'];
    _contininsulrest = o['contininsulrest'];
    _metrrest = o['metrrest'];

    _tickinsulmeter = o['tickinsulmeter'];
    _tickinsulmeternumb = o['tickinsulmeternumb'];
    _tickinsulmeterdate = o['tickinsulmeterdate'];

    _tickmetallmeter = o['tickmetallmeter'];
    _tickmetallmeternumb = o['tickmetallmeternumb'];
    _tickmetallmeterdate = o['tickmetallmeterdate'];

    _adhesmeter = o['adhesmeter'];
    _adhesmeternumb = o['adhesmeternumb'];
    _adhesmeterdate = o['adhesmeterdate'];

    _continmeter = o['continmeter'];
    _continmeternumb = o['continmeternumb'];
    _continmeterdate = o['continmeterdate'];

    _setvik = o['setvik'];
    _setviknumb = o['setviknumb'];
    _setvikdate = o['setvikdate'];

    _multimeter = o['multimeter'];
    _multimeternumb = o['multimeternumb'];
    _multimeterdate = o['multimeterdate'];

    _photo = o['photo'];

    _photometdef1 = o['photometdef1'];
    _photometdef2 = o['photometdef2'];
    _photometdef3 = o['photometdef3'];
    _photometdef4 = o['photometdef4'];
    _photometdef5 = o['photometdef5'];
    _photometdef6 = o['photometdef6'];
    _photometdef7 = o['photometdef7'];
    _photometdef8 = o['photometdef8'];
    _photometdef9 = o['photometdef9'];
    _photometdef10 = o['photometdef10'];
    _photoinsuldef1 = o['photoinsuldef1'];
    _photoinsuldef2 = o['photoinsuldef2'];
    _photoinsuldef3 = o['photoinsuldef3'];
    _photoinsuldef4 = o['photoinsuldef4'];
    _photoinsuldef5 = o['photoinsuldef5'];
    _photoinsuldef6 = o['photoinsuldef6'];
    _photoinsuldef7 = o['photoinsuldef7'];
    _photoinsuldef8 = o['photoinsuldef8'];
    _photoinsuldef9 = o['photoinsuldef9'];
    _photoinsuldef10 = o['photoinsuldef10'];
    _photorest = o['photorest'];
    _photodesc = o['photodesc'];

    _filial = o['filial'];
    _dolzhnpredskom = o['dolzhnpredskom'];
    _fiopredskom = o['fiopredskom'];
    _dolzhnproizvrab = o['dolzhnproizvrab'];
    _fioproizvrab = o['fioproizvrab'];
    _dolzhnnachuchastka = o['dolzhnnachuchastka'];
    _fionachuchastka = o['fionachuchastka'];
    _dolzhnpredstzakazch = o['dolzhnpredstzakazch'];
    _fiopredstzakazch = o['fiopredstzakazch'];
    _dolzhnpredstzakazchSK = o['dolzhnpredstzakazchSK'];
    _fiopredstzakazchSK = o['fiopredstzakazchSK'];
    _dolzhnpredststroitSK = o['dolzhnpredststroitSK'];
    _fiopredststroitSK = o['fiopredststroitSK'];
    _dolzhnpredststroit = o['dolzhnpredststroit'];
    _fiopredststroit = o['fiopredststroit'];
    _dolzhndruglic = o['dolzhndruglic'];
    _fiodruglic = o['fiodruglic'];
  }
}
