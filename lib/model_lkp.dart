import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Todo {
  int _id;

  String _date;
  String _dateObsl1;
  String _dateObsl2;
  String _title; //наименование
  String _squareclear; //площадь очистки
  String _squarerest;
  String _constroldcoat; //конструкция старого покрытия
  String _photo;
  String _photoISO;
  String _photoDust;
  String _photoRoughness;
  String _prepmethod; //способ подготовки
  String _iso8501;
  String _degrofdegr; //степень обезжиривания
  String _degrofoxid; //степень очистки от окислов
  String _degrofdedust1; //степень обеспыливания количество
  String _degrofdedust2; //степень обеспыливания размер
  String _roughness; //шероховатость
  String _surfsalts; //загрязнение поверхности солями
  String _inst;

  String _tempair; //температура воздуха
  String _tempsurf; //температура поверхности
  String _relathumid; //относительная влажность
  String _dewpoint; //точка росы
  String _difftemp; //разница температур

  String _techcondmat; //технические условия на материал
  String _techcondmat1; //технические условия на материал
  String _numdoflay; //количество слоев
  String _squarenew; //площадь очистки
  String _thickofwellay; // толщина мокрого слоя.
  String _thickofdrylay; //толщина сухого слоя
  String _thickofdrylay1; //толщина сухого слоя
  String _thickofdrylay2; //толщина сухого слоя
  String _thickofdrylay3; //толщина сухого слоя
  String _thickofdrylay4; //толщина сухого слоя
  String _thickofdrylay5; //толщина сухого слоя
  String _contin; //сплошность.
  String _timedry; //время сушки.
  String _degrdry; //степень сушки.
  String _defdur; //дефекты при нанесении

  String _apperance; //внешний вид
  String _bgcolor; // цвет
  String _katRal;
  String _colorRal;
  String _photoRal;
  String _adhesionmethod; //метод адгезии
  String _photoAdhesion; //фото адгезии
  String _adhesion; //адгезия
  String _adhesion5; //адгезия
  String _adhesion1; //адгезия
  String _adhesion2; //адгезия
  String _adhesion3; //адгезия
  String _adhesion4; //адгезия
  String _dielcont; //диэлектрическая сплошность

  String _thickinsulmeter; //толщиномер
  String _tickinsulmeternumb;
  String _tickinsulmeterdate;
  String _adhesmeter; //адгезиметр
  String _adhesmeternumb;
  String _adhesmeterdate;
  String _continmeter; //искровой дефектоскоп
  String _continmeternumb;
  String _continmeterdate;
  String _setvik; //комплект ВИК
  String _setviknumb;
  String _setvikdate;

  String _changecolor; //изменение цвета.
  String _changegloss; // изменение блеска.
  String _mudretant; //грязеудержание.
  String _chalking; //меление
  String _highestDegreeD;
  String _rastresk; //растрескивание
  String _otslaivan; // отслаивание
  String _vyvetriv; //выветривание
  String _puzyr; //пузыри
  String _korroziya; //коррозия
  String _highestDegreeZ;
  String _description;

  String _filial; //филиал
  String _dolzhnpredskom; //должность председателя комиссии
  String _fiopredskom; //фио председеателя комиссии
  String _dolzhnproizvrab; //должность производителя работ
  String _fioproizvrab; //фио производителя работ
  String _dolzhnnachuchastka; //должность начальника участка
  String _fionachuchastka; //фио начальника участка
  String _dolzhnpredstzakazch; //должность представителя заказчика
  String _fiopredstzakazch; //фио представителя заказчика
  String _dolzhnpredstzakazchSK; //должность представителя заказчика по СК
  String _fiopredstzakazchSK; //фио представителя заказчика
  String _dolzhnpredststroitSK; //должность представителя строителя по СК
  String _fiopredststroitSK; //фио представителя строителя по СК
  String _dolzhnpredststroit; //должность представителя строителя
  String _fiopredststroit; //фио представителя строителя
  String _dolzhndruglic; //должность других лиц
  String _fiodruglic; //фио других лиц

  Todo(
    this._title,
    this._date, [
    this._photo,
    this._dateObsl1,
    this._dateObsl2,
    this._photoISO,
    this._photoDust,
    this._photoRoughness,
    this._inst,
    this._iso8501,
    this._squareclear,
    this._squarerest,
    this._constroldcoat,
    this._prepmethod,
    this._degrofdegr,
    this._degrofoxid,
    this._degrofdedust1,
    this._degrofdedust2,
    this._roughness,
    this._surfsalts,
    this._tempair,
    this._tempsurf,
    this._relathumid,
    this._dewpoint,
    this._difftemp,
    this._techcondmat,
    this._techcondmat1,
    this._numdoflay,
    this._squarenew,
    this._thickofwellay,
    this._thickofdrylay,
    this._thickofdrylay1,
    this._thickofdrylay2,
    this._thickofdrylay3,
    this._thickofdrylay4,
    this._thickofdrylay5,
    this._contin,
    this._timedry,
    this._degrdry,
    this._defdur,
    this._apperance,
    this._bgcolor,
    this._katRal,
    this._colorRal,
    this._photoRal,
    this._adhesion,
    this._adhesion1,
    this._adhesion2,
    this._adhesion3,
    this._adhesion4,
    this._adhesion5,
    this._adhesionmethod,
    this._photoAdhesion,
    this._dielcont,
    this._thickinsulmeter,
    this._tickinsulmeternumb,
    this._tickinsulmeterdate,
    this._adhesmeter,
    this._adhesmeternumb,
    this._adhesmeterdate,
    this._continmeter,
    this._continmeternumb,
    this._continmeterdate,
    this._setvik,
    this._setviknumb,
    this._setvikdate,
    this._changecolor,
    this._changegloss,
    this._mudretant,
    this._chalking,
    this._highestDegreeD,
    this._rastresk, //растрескивание
    this._otslaivan, // отслаивание
    this._vyvetriv, //выветривание
    this._puzyr, //пузыри
    this._korroziya, //коррозия
    this._highestDegreeZ,
    this._description,
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
    this._dateObsl1,
    this._dateObsl2,
    this._photo,
    this._photoISO,
    this._photoDust,
    this._photoRoughness,
    this._inst,
    this._iso8501,
    this._squareclear,
    this._squarerest,
    this._constroldcoat,
    this._prepmethod,
    this._degrofdegr,
    this._degrofoxid,
    this._degrofdedust1,
    this._degrofdedust2,
    this._roughness,
    this._surfsalts,
    this._tempair,
    this._tempsurf,
    this._relathumid,
    this._dewpoint,
    this._difftemp,
    this._techcondmat,
    this._techcondmat1,
    this._numdoflay,
    this._squarenew,
    this._thickofwellay,
    this._thickofdrylay,
    this._thickofdrylay1,
    this._thickofdrylay2,
    this._thickofdrylay3,
    this._thickofdrylay4,
    this._thickofdrylay5,
    this._contin,
    this._timedry,
    this._degrdry,
    this._defdur,
    this._apperance,
    this._bgcolor,
    this._katRal,
    this._colorRal,
    this._photoRal,
    this._adhesion,
    this._adhesion1,
    this._adhesion2,
    this._adhesion3,
    this._adhesion4,
    this._adhesion5,
    this._adhesionmethod,
    this._photoAdhesion,
    this._dielcont,
    this._thickinsulmeter,
    this._tickinsulmeternumb,
    this._tickinsulmeterdate,
    this._adhesmeter,
    this._adhesmeternumb,
    this._adhesmeterdate,
    this._continmeter,
    this._continmeternumb,
    this._continmeterdate,
    this._setvik,
    this._setviknumb,
    this._setvikdate,
    this._changecolor,
    this._changegloss,
    this._mudretant,
    this._chalking,
    this._highestDegreeD,
    this._rastresk, //растрескивание
    this._otslaivan, // отслаивание
    this._vyvetriv, //выветривание
    this._puzyr, //пузыри
    this._korroziya, //коррозия
    this._highestDegreeZ,
    this._description,
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
  String get todoDate => _date;
  String get photo => _photo;
  String get photoISO => _photoISO;
  String get photoDust => _photoDust;
  String get photoRoughness => _photoRoughness;
  String get title => _title;
  String get dateObsl1 => _dateObsl1;
  String get dateObsl2 => _dateObsl2;

  String get squareclear => _squareclear;
  String get squarerest => _squarerest;
  String get constroldcoat => _constroldcoat;
  String get inst => _inst;
  String get iso8501 => _iso8501;
  String get prepmethod => _prepmethod;
  String get degrofdegr => _degrofdegr;
  String get degrofoxid => _degrofoxid;
  String get degrofdedust1 => _degrofdedust1;
  String get degrofdedust2 => _degrofdedust2;
  String get roughness => _roughness;
  String get surfsalts => _surfsalts;

  String get tempair => _tempair;
  String get tempsurf => _tempsurf;
  String get relathumid => _relathumid;
  String get dewpoint => _dewpoint;
  String get difftemp => _difftemp;

  String get techcondmat => _techcondmat;
  String get techcondmat1 => _techcondmat1;
  String get numdoflay => _numdoflay;
  String get squarenew => _squarenew;
  String get thickofwellay => _thickofwellay;
  String get thickofdrylay => _thickofdrylay;
  String get thickofdrylay1 => _thickofdrylay1;
  String get thickofdrylay2 => _thickofdrylay2;
  String get thickofdrylay3 => _thickofdrylay3;
  String get thickofdrylay4 => _thickofdrylay4;
  String get thickofdrylay5 => _thickofdrylay5;
  String get contin => _contin;
  String get timedry => _timedry;
  String get degrdry => _degrdry;
  String get defdur => _defdur;

  String get apperance => _apperance;
  String get bgcolor => _bgcolor;
  String get katRal => _katRal;
  String get colorRal => _colorRal;
  String get photoRal => _photoRal;
  String get adhesion => _adhesion;
  String get adhesion1 => _adhesion1;
  String get adhesion2 => _adhesion2;
  String get adhesion3 => _adhesion3;
  String get adhesion4 => _adhesion4;
  String get adhesion5 => _adhesion5;
  String get adhesionmethod => _adhesionmethod;
  String get photoAdhesion => _photoAdhesion;
  String get dielcont => _dielcont;

  String get thickinsulmeter => _thickinsulmeter;
  String get tickinsulmeternumb => _tickinsulmeternumb;
  String get tickinsulmeterdate => _tickinsulmeterdate;
  String get adhesmeter => _adhesmeter;
  String get adhesmeternumb => _adhesmeternumb;
  String get adhesmeterdate => _adhesmeterdate;
  String get continmeter => _continmeter;
  String get continmeternumb => _continmeternumb;
  String get continmeterdate => _continmeterdate;
  String get setvik => _setvik;
  String get setviknumb => _setviknumb;
  String get setvikdate => _setvikdate;

  String get changecolor => _changecolor;
  String get changegloss => _changegloss;
  String get mudretant => _mudretant;
  String get chalking => _chalking;
  String get highestDegreeD => _highestDegreeD;

  String get rastresk => _rastresk;
  String get otslaivan => _otslaivan;
  String get vyvetriv => _vyvetriv;
  String get puzyr => _puzyr;
  String get korroziya => _korroziya;
  String get highestDegreeZ => _highestDegreeZ;

  String get description => _description;

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

  set photo(String newphoto) {
    if ((newphoto?.length ?? 0) <= 255) {
      _photo = newphoto;
    }
  }

  set photoISO(String newphotoISO) {
    if ((newphotoISO?.length ?? 0) <= 255) {
      _photoISO = newphotoISO;
    }
  }

  set photoDust(String newphotoDust) {
    if ((newphotoDust?.length ?? 0) <= 255) {
      _photoDust = newphotoDust;
    }
  }

  set photoRoughness(String newphotoRoughness) {
    if ((newphotoRoughness?.length ?? 0) <= 255) {
      _photoRoughness = newphotoRoughness;
    }
  }

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set dateObsl1(String newdateObsl1) {
    if ((newdateObsl1?.length ?? 0) <= 255) {
      _dateObsl1 = newdateObsl1;
    }
  }

  set dateObsl2(String newdateObsl2) {
    if ((newdateObsl2?.length ?? 0) <= 255) {
      _dateObsl2 = newdateObsl2;
    }
  }

  set squareclear(String newsquareclear) {
    if ((newsquareclear?.length ?? 0) <= 255) {
      _squareclear = newsquareclear;
    }
  }

  set squarerest(String newssquarerest) {
    if ((newssquarerest?.length ?? 0) <= 255) {
      _squarerest = newssquarerest;
    }
  }

  set constroldcoat(String newconstroldcoat) {
    if ((newconstroldcoat?.length ?? 0) <= 255) {
      _constroldcoat = newconstroldcoat;
    }
  }

  set inst(String newInst) {
    if ((newInst?.length ?? 0) <= 255) {
      _inst = newInst;
    }
  }

  set iso8501(String newISO8501) {
    if ((newISO8501?.length ?? 0) <= 255) {
      _iso8501 = newISO8501;
    }
  }

  set prepmethod(String newPrepMethod) {
    if ((newPrepMethod?.length ?? 0) <= 255) {
      _prepmethod = newPrepMethod;
    }
  }

  set degrofdegr(String newdegrofdegr) {
    if ((newdegrofdegr?.length ?? 0) <= 255) {
      _degrofdegr = newdegrofdegr;
    }
  }

  set degrofoxid(String newdegrofoxid) {
    if ((newdegrofoxid?.length ?? 0) <= 255) {
      _degrofoxid = newdegrofoxid;
    }
  }

  set degrofdedust1(String newdegrofdedust1) {
    if ((newdegrofdedust1?.length ?? 0) <= 255) {
      _degrofdedust1 = newdegrofdedust1;
    }
  }

  set degrofdedust2(String newdegrofdedust2) {
    if ((newdegrofdedust2?.length ?? 0) <= 255) {
      _degrofdedust2 = newdegrofdedust2;
    }
  }

  set roughness(String newRoughness) {
    if ((newRoughness?.length ?? 0) <= 255) {
      _roughness = newRoughness;
    }
  }

  set surfsalts(String newsurfsalts) {
    if ((newsurfsalts?.length ?? 0) <= 255) {
      _surfsalts = newsurfsalts;
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

  set techcondmat(String newtechcondmat) {
    if ((newtechcondmat?.length ?? 0) <= 255) {
      _techcondmat = newtechcondmat;
    }
  }

  set techcondmat1(String newtechcondmat1) {
    if ((newtechcondmat1?.length ?? 0) <= 255) {
      _techcondmat1 = newtechcondmat1;
    }
  }

  set numdoflay(String newnumdoflay) {
    if ((newnumdoflay?.length ?? 0) <= 255) {
      _numdoflay = newnumdoflay;
    }
  }

  set squarenew(String newsquarenew) {
    if ((newsquarenew?.length ?? 0) <= 255) {
      _squarenew = newsquarenew;
    }
  }

  set thickofwellay(String newthickofwellay) {
    if ((newthickofwellay?.length ?? 0) <= 255) {
      _thickofwellay = newthickofwellay;
    }
  }

  set thickofdrylay(String newthickofdrylay) {
    if ((newthickofdrylay?.length ?? 0) <= 255) {
      _thickofdrylay = newthickofdrylay;
    }
  }

  set thickofdrylay1(String newthickofdrylay1) {
    if ((newthickofdrylay1?.length ?? 0) <= 255) {
      _thickofdrylay1 = newthickofdrylay1;
    }
  }

  set thickofdrylay2(String newthickofdrylay2) {
    if ((newthickofdrylay2?.length ?? 0) <= 255) {
      _thickofdrylay2 = newthickofdrylay2;
    }
  }

  set thickofdrylay3(String newthickofdrylay3) {
    if ((newthickofdrylay3?.length ?? 0) <= 255) {
      _thickofdrylay3 = newthickofdrylay3;
    }
  }

  set thickofdrylay4(String newthickofdrylay4) {
    if ((newthickofdrylay4?.length ?? 0) <= 255) {
      _thickofdrylay4 = newthickofdrylay4;
    }
  }

  set thickofdrylay5(String newthickofdrylay5) {
    if ((newthickofdrylay5?.length ?? 0) <= 255) {
      _thickofdrylay5 = newthickofdrylay5;
    }
  }

  set contin(String newcontin) {
    if ((newcontin?.length ?? 0) <= 255) {
      _contin = newcontin;
    }
  }

  set timedry(String newtimedry) {
    if ((newtimedry?.length ?? 0) <= 255) {
      _timedry = newtimedry;
    }
  }

  set degrdry(String newdegrdry) {
    if ((newdegrdry?.length ?? 0) <= 255) {
      _degrdry = newdegrdry;
    }
  }

  set defdur(String newdefdur) {
    if ((newdefdur?.length ?? 0) <= 255) {
      _defdur = newdefdur;
    }
  }

  set apperance(String newapperance) {
    if ((newapperance?.length ?? 0) <= 255) {
      _apperance = newapperance;
    }
  }

  set bgcolor(String newBgcolor) {
    if ((newBgcolor?.length ?? 0) <= 255) {
      _bgcolor = newBgcolor;
    }
  }

  set katRal(String newkatRal) {
    if ((newkatRal?.length ?? 0) <= 255) {
      _katRal = newkatRal;
    }
  }

  set colorRal(String newcolorRal) {
    if ((newcolorRal?.length ?? 0) <= 255) {
      _colorRal = newcolorRal;
    }
  }

  set photoRal(String newphotoRal) {
    if ((newphotoRal?.length ?? 0) <= 255) {
      _photoRal = newphotoRal;
    }
  }

  set adhesion(String newadhesion) {
    if ((newadhesion?.length ?? 0) <= 255) {
      _adhesion = newadhesion;
    }
  }

  set adhesion1(String newadhesion1) {
    if ((newadhesion1?.length ?? 0) <= 255) {
      _adhesion1 = newadhesion1;
    }
  }

  set adhesion2(String newadhesion2) {
    if ((newadhesion2?.length ?? 0) <= 255) {
      _adhesion2 = newadhesion2;
    }
  }

  set adhesion3(String newadhesion3) {
    if ((newadhesion3?.length ?? 0) <= 255) {
      _adhesion3 = newadhesion3;
    }
  }

  set adhesion4(String newadhesion4) {
    if ((newadhesion4?.length ?? 0) <= 255) {
      _adhesion4 = newadhesion4;
    }
  }

  set adhesion5(String newadhesion5) {
    if ((newadhesion5?.length ?? 0) <= 255) {
      _adhesion5 = newadhesion5;
    }
  }

  set photoAdhesion(String newphotoAdhesion) {
    if ((newphotoAdhesion?.length ?? 0) <= 255) {
      _photoAdhesion = newphotoAdhesion;
    }
  }

  set adhesionmethod(String newadhesionmethod) {
    if ((newadhesionmethod?.length ?? 0) <= 255) {
      _adhesionmethod = newadhesionmethod;
    }
  }

  set dielcont(String newdielcont) {
    if ((newdielcont?.length ?? 0) <= 255) {
      _dielcont = newdielcont;
    }
  }

  set thickinsulmeter(String newthickinsulmeter) {
    if ((newthickinsulmeter?.length ?? 0) <= 255) {
      _thickinsulmeter = newthickinsulmeter;
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

  set changecolor(String newchangecolor) {
    if ((newchangecolor?.length ?? 0) <= 255) {
      _changecolor = newchangecolor;
    }
  }

  set changegloss(String newchangegloss) {
    if ((newchangegloss?.length ?? 0) <= 255) {
      _changegloss = newchangegloss;
    }
  }

  set mudretant(String newmudretant) {
    if ((newmudretant?.length ?? 0) <= 255) {
      _mudretant = newmudretant;
    }
  }

  set chalking(String newchalking) {
    if ((newchalking?.length ?? 0) <= 255) {
      _chalking = newchalking;
    }
  }

  set highestDegreeD(String newhighestDegreeD) {
    if ((newhighestDegreeD?.length ?? 0) <= 255) {
      _highestDegreeD = newhighestDegreeD;
    }
  }

  set korroziya(String newkorroziya) {
    if ((newkorroziya?.length ?? 0) <= 255) {
      _korroziya = newkorroziya;
    }
  }

  set puzyr(String newpuzyr) {
    if ((newpuzyr?.length ?? 0) <= 255) {
      _puzyr = newpuzyr;
    }
  }

  set vyvetriv(String newvyvetriv) {
    if ((newvyvetriv?.length ?? 0) <= 255) {
      _vyvetriv = newvyvetriv;
    }
  }

  set otslaivan(String newotslaivan) {
    if ((newotslaivan?.length ?? 0) <= 255) {
      _otslaivan = newotslaivan;
    }
  }

  set rastresk(String newrastresk) {
    if ((newrastresk?.length ?? 0) <= 255) {
      _rastresk = newrastresk;
    }
  }

  set highestDegreeZ(String newhighestDegreeZ) {
    if ((newhighestDegreeZ?.length ?? 0) <= 255) {
      _highestDegreeZ = newhighestDegreeZ;
    }
  }

  set description(String newdescription) {
    if ((newdescription?.length ?? 0) <= 255) {
      _description = newdescription;
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

  set todoDate(newDate) {
    _date = newDate;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['dateObsl1'] = _dateObsl1;
    map['dateObsl2'] = _dateObsl2;

    map['date'] = _date;
    map['squareclear'] = _squareclear;
    map['squarerest'] = _squarerest;
    map['constroldcoat'] = _constroldcoat;
    map['inst'] = _inst;
    map['iso8501'] = _iso8501;
    map['prepmethod'] = _prepmethod;
    map['degrofdegr'] = _degrofdegr;
    map['degrofoxid'] = _degrofoxid;
    map['degrofdedust1'] = _degrofdedust1;
    map['degrofdedust2'] = _degrofdedust2;
    map['roughness'] = _roughness;
    map['surfsalts'] = _surfsalts;

    map['tempair'] = _tempair;
    map['tempsurf'] = _tempsurf;
    map['relathumid'] = _relathumid;
    map['dewpoint'] = _dewpoint;
    map['difftemp'] = _difftemp;

    map['techcondmat'] = _techcondmat;
    map['techcondmat1'] = _techcondmat1;
    map['numdoflay'] = _numdoflay;
    map['squarenew'] = _squarenew;
    map['thickofwellay'] = _thickofwellay;
    map['thickofdrylay'] = _thickofdrylay;
    map['thickofdrylay1'] = _thickofdrylay1;
    map['thickofdrylay2'] = _thickofdrylay2;
    map['thickofdrylay3'] = _thickofdrylay3;
    map['thickofdrylay4'] = _thickofdrylay4;
    map['thickofdrylay5'] = _thickofdrylay5;
    map['contin'] = _contin;
    map['timedry'] = _timedry;
    map['degrdry'] = _degrdry;
    map['defdur'] = _defdur;

    map['apperance'] = _apperance;
    map['bgcolor'] = _bgcolor;
    map['katRal'] = _katRal;
    map['colorRal'] = _colorRal;
    map['photoRal'] = _photoRal;
    map['adhesion'] = _adhesion;
    map['adhesion1'] = _adhesion1;
    map['adhesion2'] = _adhesion2;
    map['adhesion3'] = _adhesion3;
    map['adhesion4'] = _adhesion4;
    map['adhesion5'] = _adhesion5;
    map['photoAdhesion'] = _photoAdhesion;
    map['adhesionmethod'] = _adhesionmethod;
    map['dielcont'] = _dielcont;

    map['thickinsulmeter'] = _thickinsulmeter;
    map['tickinsulmeternumb'] = _tickinsulmeternumb;
    map['tickinsulmeterdate'] = _tickinsulmeterdate;
    map['adhesmeter'] = _adhesmeter;
    map['adhesmeternumb'] = _adhesmeternumb;
    map['adhesmeterdate'] = _adhesmeterdate;

    map['continmeter'] = _continmeter;
    map['continmeternumb'] = _continmeternumb;
    map['continmeterdate'] = _continmeterdate;

    map['setvik'] = _setvik;
    map['setviknumb'] = _setviknumb;
    map['setvikdate'] = _setvikdate;

    map['changecolor'] = _changecolor;
    map['changegloss'] = _changegloss;
    map['mudretant'] = _mudretant;
    map['chalking'] = _chalking;
    map['highestDegreeD'] = _highestDegreeD;
    map['rastresk'] = _rastresk;
    map['otslaivan'] = _otslaivan;
    map['vyvetriv'] = _vyvetriv;
    map['puzyr'] = _puzyr;
    map['korroziya'] = _korroziya;
    map['highestDegreeZ'] = _highestDegreeZ;
    map['description'] = _description;
    map['photo'] = _photo;
    map['photoISO'] = _photoISO;
    map['photoDust'] = _photoDust;
    map['photoRoughness'] = _photoRoughness;

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
    _dateObsl1 = o['dateObsl1'];
    _dateObsl2 = o['dateObsl2'];

    _date = o['date'];
    _squareclear = o['squareclear'];
    _squarerest = o['squarerest'];
    _constroldcoat = o['constroldcoat'];
    _inst = o['inst'];
    _iso8501 = o['iso8501'];
    _prepmethod = o['prepmethod'];
    _degrofdegr = o['degrofdegr'];
    _degrofoxid = o['degrofoxid'];
    _degrofdedust1 = o['degrofdedust1'];
    _degrofdedust2 = o['degrofdedust2'];
    _roughness = o['roughness'];
    _surfsalts = o['surfsalts'];
    _tempair = o['tempair'];
    _tempsurf = o['tempsurf'];
    _relathumid = o['relathumid'];
    _dewpoint = o['dewpoint'];
    _difftemp = o['difftemp'];
    _techcondmat = o['techcondmat'];
    _techcondmat1 = o['techcondmat1'];
    _numdoflay = o['numdoflay'];
    _squarenew = o['squarenew'];
    _thickofwellay = o['thickofwellay'];
    _thickofdrylay = o['thickofdrylay'];
    _thickofdrylay1 = o['thickofdrylay1'];
    _thickofdrylay2 = o['thickofdrylay2'];
    _thickofdrylay3 = o['thickofdrylay3'];
    _thickofdrylay4 = o['thickofdrylay4'];
    _thickofdrylay5 = o['thickofdrylay5'];
    _contin = o['contin'];
    _timedry = o['timedry'];
    _degrdry = o['degrdry'];
    _defdur = o['defdur'];
    _apperance = o['apperance'];
    _bgcolor = o['bgcolor'];
    _katRal = o['katRal'];
    _colorRal = o['colorRal'];
    _photoRal = o['photoRal'];
    _adhesion = o['adhesion'];
    _adhesion1 = o['adhesion1'];
    _adhesion2 = o['adhesion2'];
    _adhesion3 = o['adhesion3'];
    _adhesion4 = o['adhesion4'];
    _adhesion5 = o['adhesion5'];
    _photoAdhesion = o['photoAdhesion'];
    _adhesionmethod = o['adhesionmethod'];
    _dielcont = o['dielcont'];
    _thickinsulmeter = o['thickinsulmeter'];
    _tickinsulmeternumb = o['tickinsulmeternumb'];
    _tickinsulmeterdate = o['tickinsulmeterdate'];
    _adhesmeter = o['adhesmeter'];
    _adhesmeternumb = o['adhesmeternumb'];
    _adhesmeterdate = o['adhesmeterdate'];

    _continmeter = o['continmeter'];
    _continmeternumb = o['continmeternumb'];
    _continmeterdate = o['continmeterdate'];

    _setvik = o['setvik'];
    _setviknumb = o['setviknumb'];
    _setvikdate = o['setvikdate'];
    _changecolor = o['changecolor'];
    _changegloss = o['changegloss'];
    _mudretant = o['mudretant'];
    _chalking = o['chalking'];
    _highestDegreeD = o['highestDegreeD'];
    _rastresk = o['rastresk'];
    _otslaivan = o['otslaivan'];
    _vyvetriv = o['vyvetriv'];
    _puzyr = o['puzyr'];
    _korroziya = o['korroziya'];
    _highestDegreeZ = o['highestDegreeZ'];
    _description = o['description'];
    _photo = o['photo'];
    _photoISO = o['photoISO'];
    _photoDust = o['photoDust'];
    _photoRoughness = o['photoRoughness'];

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
