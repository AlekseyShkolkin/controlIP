import 'dart:io';
import 'dart:math';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import './camera_page_ip.dart';
import './img_screen_ip.dart';
import './model_ip.dart';
import './object_list_ip.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ObjectDetailIp extends StatefulWidget {
  const ObjectDetailIp({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailIpState(object);
}

class ObjectDetailIpState extends State<ObjectDetailIp> {
  Todo object;
  String locationData = '';

  DateTime dateObsl1; // Дата выбранная для dateObsl1
  DateTime dateObsl2; // Дата выбранная для dateObsl2

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();
  FocusNode focusNode6 = FocusNode();
  FocusNode focusNode7 = FocusNode();
  FocusNode focusNode8 = FocusNode();
  FocusNode focusNode9 = FocusNode();
  FocusNode focusNode10 = FocusNode();
  FocusNode focusNode11 = FocusNode();
  FocusNode focusNode12 = FocusNode();
  FocusNode focusNode13 = FocusNode();
  FocusNode focusNode14 = FocusNode();
  FocusNode focusNode15 = FocusNode();
  FocusNode focusNode16 = FocusNode();
  FocusNode focusNode17 = FocusNode();
  FocusNode focusNode18 = FocusNode();
  FocusNode focusNode19 = FocusNode();
  FocusNode focusNode20 = FocusNode();
  FocusNode focusNode21 = FocusNode(); //free
  FocusNode focusNode22 = FocusNode(); //free
  FocusNode focusNode23 = FocusNode();
  FocusNode focusNode24 = FocusNode();
  FocusNode focusNode25 = FocusNode();
  FocusNode focusNode26 = FocusNode();
  FocusNode focusNode27 = FocusNode();
  FocusNode focusNode28 = FocusNode();
  FocusNode focusNode29 = FocusNode();
  FocusNode focusNode30 = FocusNode();
  FocusNode focusNode31 = FocusNode();
  FocusNode focusNode32 = FocusNode();
  FocusNode focusNode33 = FocusNode();
  FocusNode focusNode34 = FocusNode();
  FocusNode focusNode35 = FocusNode();
  FocusNode focusNode36 = FocusNode();
  FocusNode focusNode37 = FocusNode();
  FocusNode focusNode38 = FocusNode();
  FocusNode focusNode39 = FocusNode();
  FocusNode focusNode40 = FocusNode();
  FocusNode focusNode41 = FocusNode();
  FocusNode focusNode42 = FocusNode();
  FocusNode focusNode43 = FocusNode();
  FocusNode focusNode44 = FocusNode();
  FocusNode focusNode45 = FocusNode();
  FocusNode focusNode46 = FocusNode();
  FocusNode focusNode47 = FocusNode();
  FocusNode focusNode48 = FocusNode();
  FocusNode focusNode49 = FocusNode();
  FocusNode focusNode50 = FocusNode();
  FocusNode focusNode51 = FocusNode();
  FocusNode focusNode52 = FocusNode();
  FocusNode focusNode53 = FocusNode();
  FocusNode focusNode54 = FocusNode();
  FocusNode focusNode55 = FocusNode();
  FocusNode focusNode56 = FocusNode();
  FocusNode focusNode57 = FocusNode();
  FocusNode focusNode58 = FocusNode();
  FocusNode focusNode59 = FocusNode();
  FocusNode focusNode60 = FocusNode();
  FocusNode focusNode61 = FocusNode();
  FocusNode focusNode62 = FocusNode();
  FocusNode focusNode63 = FocusNode();
  FocusNode focusNode64 = FocusNode();
  FocusNode focusNode65 = FocusNode();
  FocusNode focusNode66 = FocusNode();
  FocusNode focusNode67 = FocusNode();
  FocusNode focusNode68 = FocusNode();
  FocusNode focusNode69 = FocusNode();
  FocusNode focusNode70 = FocusNode();
  FocusNode focusNode71 = FocusNode();
  FocusNode focusNode72 = FocusNode();
  FocusNode focusNode73 = FocusNode();
  FocusNode focusNode74 = FocusNode();
  FocusNode focusNode75 = FocusNode();
  FocusNode focusNode76 = FocusNode();
  FocusNode focusNode77 = FocusNode();
  FocusNode focusNode78 = FocusNode();
  FocusNode focusNode79 = FocusNode();
  FocusNode focusNode80 = FocusNode();
  FocusNode focusNode81 = FocusNode();
  FocusNode focusNode82 = FocusNode();
  FocusNode focusNode83 = FocusNode();
  FocusNode focusNode84 = FocusNode();
  FocusNode focusNode85 = FocusNode();
  FocusNode focusNode86 = FocusNode();
  FocusNode focusNode87 = FocusNode();
  FocusNode focusNode88 = FocusNode();
  FocusNode focusNode89 = FocusNode();
  FocusNode focusNode90 = FocusNode();
  FocusNode focusNode91 = FocusNode();
  FocusNode focusNode92 = FocusNode();
  FocusNode focusNode93 = FocusNode();
  FocusNode focusNode94 = FocusNode();
  FocusNode focusNode95 = FocusNode();
  FocusNode focusNode96 = FocusNode();
  FocusNode focusNode97 = FocusNode();
  FocusNode focusNode98 = FocusNode();
  FocusNode focusNode99 = FocusNode();
  FocusNode focusNode100 = FocusNode();
  FocusNode focusNode101 = FocusNode();
  FocusNode focusNode102 = FocusNode();
  FocusNode focusNode103 = FocusNode();
  FocusNode focusNode104 = FocusNode();
  FocusNode focusNode105 = FocusNode();
  FocusNode focusNode106 = FocusNode();
  FocusNode focusNode107 = FocusNode();
  FocusNode focusNode108 = FocusNode();
  FocusNode focusNode109 = FocusNode();
  FocusNode focusNode110 = FocusNode();
  FocusNode focusNode111 = FocusNode();
  FocusNode focusNode112 = FocusNode();
  FocusNode focusNode113 = FocusNode();
  FocusNode focusNode114 = FocusNode();
  FocusNode focusNode115 = FocusNode();
  FocusNode focusNode116 = FocusNode();
  FocusNode focusNode117 = FocusNode();
  FocusNode focusNode118 = FocusNode();
  FocusNode focusNode119 = FocusNode(); //free
  FocusNode focusNode120 = FocusNode(); //free
  FocusNode focusNode121 = FocusNode(); //free
  FocusNode focusNode122 = FocusNode(); //free
  FocusNode focusNode123 = FocusNode(); //free
  FocusNode focusNode124 = FocusNode(); //free
  FocusNode focusNode125 = FocusNode(); //free
  FocusNode focusNode126 = FocusNode(); //free
  FocusNode focusNode127 = FocusNode(); //free
  FocusNode focusNode128 = FocusNode(); //free
  FocusNode focusNode129 = FocusNode(); //free
  FocusNode focusNode130 = FocusNode(); //free
  FocusNode focusNode131 = FocusNode(); //free
  FocusNode focusNode132 = FocusNode(); //free
  FocusNode focusNode133 = FocusNode(); //free
  FocusNode focusNode134 = FocusNode(); //free
  FocusNode focusNode135 = FocusNode(); //free
  FocusNode focusNode136 = FocusNode(); //free
  FocusNode focusNode137 = FocusNode(); //free
  FocusNode focusNode138 = FocusNode(); //free
  FocusNode focusNode139 = FocusNode(); //free
  FocusNode focusNode140 = FocusNode(); //free
  FocusNode focusNode141 = FocusNode(); //free
  FocusNode focusNode142 = FocusNode(); //free
  FocusNode focusNode143 = FocusNode(); //free
  FocusNode focusNode144 = FocusNode(); //free
  FocusNode focusNode145 = FocusNode(); //free
  FocusNode focusNode146 = FocusNode(); //free
  FocusNode focusNode147 = FocusNode(); //free
  FocusNode focusNode148 = FocusNode(); //free
  FocusNode focusNode149 = FocusNode(); //free
  FocusNode focusNode150 = FocusNode(); //free
  FocusNode focusNode151 = FocusNode(); //free

  File _image;

  File _imageDefmet1;
  File _imageDefmet2;
  File _imageDefmet3;

  File _imageDefInsul1;
  File _imageDefInsul2;
  File _imageDefInsul3;

  Color _cardColor = Colors.white;

  final List<String> _filial = [
    'Арзамасское ЛПУМГ',
    'Владимирское ЛПУМГ',
    'Волжское ЛПУМГ',
    'Вятское ЛПУМГ',
    'Заволжское ЛПУМГ',
    'Ивановское ЛПУМГ',
    'Кировское ЛПУМГ',
    'Моркинское ЛПУМГ',
    'Пензенское ЛПУМГ',
    'Пильнинское ЛПУМГ',
    'Починковское ЛПУМГ',
    'Приокское ЛПУМГ',
    'Семеновское ЛПУМГ',
    'Сеченовское ЛПУМГ',
    'Торбеевское ЛПУМГ',
    'Чебоксарское ЛПУМГ',
    'ИТЦ',
    'УАВР'
  ];
  final List<String> _dolzhnpredskom = [
    'Начальник',
    'Главный инженер-заместитель начальника',
    'Заместитель начальника'
  ];
  final List<String> _dolzhnproizvrab = [
    'Начальник службы ЗоК',
    'ВрИО начальника службы ЗоК',
    'ИО начальника службы ЗоК',
    'Начальник участка',
  ];

  final List<String> _dolzhnpredststroitSK = [
    'Монтёр ЗПТК',
    'Электромонтёр по РиОЭ',
    'Электромонтёр по РиМВЛ',
    'Электромонтёр по РиМКЛ',
  ];

  final List<String> _dolzhnpredststroit = [
    'Инженер ЛЭС',
    'Старший мастер',
    'Мастер',
    'Инженер КС',
    'Линейный трубопроводчик',
    'Оператор МГ',
    'Обходчик',
    'Машинист',
    'Электромонтёр по РиМКЛ',
    'Инженер по диагностике',
    'Инженер-диагност',
  ];

  final List<String> _dolzhnnachuchastka = [
    'Начальник службы ЗоК',
    'ВрИО начальника службы ЗоК',
    'ИО начальника службы ЗоК',
    'Начальник ЛЭС',
    'ВрИО начальника ЛЭС',
    'ИО начальника ЛЭС',
    'Начальник ГКС',
    'ВрИО начальника ГКС',
    'ИО начальника ГКС',
  ];

  final List<String> _dolzhnpredstzakazch = [
    'Специалист по НК изоляции',
    'Специалист ИТЦ',
    'Инженер по ЭХЗ',
    'Старший мастер',
    'Мастер',
    'Инженер по диагностике',
    'Инженер-диагност',
    'Дефктоскопист',
  ];

  final List<String> _mesto = [
    'Склон',
    'Дно оврага',
    'Пойма',
    'Равнина',
    'Проходимое болото',
    'Непроходимое болото',
    'Ручей',
    'Край водоема',
    'Старица',
    'Размыв',
  ];

  final List<String> _tipgrunt = [
    'Глина',
    'Песок',
    'Суглинок',
    'Супесь',
    'Торф',
    'В воде',
    'В болоте',
    'Солончак',
    'Солонцы',
    'Чернозем',
    'Смешанный',
  ];

  final List<String> _vlaggrunt = [
    'Сухой',
    'Влажный',
    'Мокрый',
    'Водянистый',
  ];

  final List<String> _zakl = [
    'Ремонт изоляционного покрытия',
    'Ремонт дефектов металла и изоляционного покрытия',
    'Ремонт дефектов металла, сварных соединений и изоляционного покрытия',
    'Ремонт сварных соединений и изоляционного покрытия',
  ];

  final List<String> _osnovanie = [
    'ВТД (НО в шурфе)',
    'ВТД (Ремонт трубы)',
    'ВТД (Ремонт СС)',
    'ВТД (Замена трубы)',
    'КО',
    'КО (Контрольная шурфовка)',
    'КО (Осмотр изоляции)',
    'КО (Ремонт дефекта изоляции)',
    'Техническое диагностирование',
    'ЭПБ',
    'Плановые работы',
    'Обследование тройников и тройниковых соединений',
    'План шурфов на КС',
    'Замена тройникового соединения',
  ];
  final List<String> _diameter = [
    '59',
    '89',
    '108',
    '159',
    '219',
    '273',
    '325',
    '377',
    '426',
    '530',
    '720',
    '820',
    '1020',
    '1220',
    '1420',
    'нет данных'
  ];
  final List<String> _gradesteel = [
    'Ст20',
    '09Г2С',
    '10Г2ФБЮ',
    'К60',
    'К56',
    'К55',
    'К54',
    'К52',
    '13ХФА',
    '09ГСФ',
    '17Г1С',
    'нет данных'
  ];
  final List<String> _metalldamage = ['Да', 'Нет', 'нет данных'];
  final List<String> _insuldamage = ['Да', 'Нет', 'нет данных'];
  final List<String> _charmetdamage1 = [
    'Сплошная коррозия',
    'Местная коррозия',
    'КРН',
    'Механическое повреждение',
    'нет данных'
  ];
  final List<String> _charmetdamage2 = [
    'Сплошная коррозия',
    'Местная коррозия',
    'КРН',
    'Механическое повреждение',
    'нет данных'
  ];
  final List<String> _charmetdamage3 = [
    'Сплошная коррозия',
    'Местная коррозия',
    'КРН',
    'Механическое повреждение',
    'нет данных'
  ];
  final List<String> _charinsuldamage1 = [
    'Отсутствуют',
    'Включения',
    'Вмятина',
    'Гофры',
    'Дефект ремонта',
    'Задир',
    'Несплошности',
    'Отрыв',
    'Отслоение',
    'Охрупчивание',
    'Порез',
    'Прокол',
    'Пропуск',
    'Расслоения',
    'Сдир',
    'Складки',
    'Трещины',
    'Утонение',
    'Царапина',
  ];
  final List<String> _charinsuldamage2 = [
    'Отсутствуют',
    'Включения',
    'Вмятина',
    'Гофры',
    'Дефект ремонта',
    'Задир',
    'Несплошности',
    'Отрыв',
    'Отслоение',
    'Охрупчивание',
    'Порез',
    'Прокол',
    'Пропуск',
    'Расслоения',
    'Сдир',
    'Складки',
    'Трещины',
    'Утонение',
    'Царапина',
  ];
  final List<String> _charinsuldamage3 = [
    'Отсутствуют',
    'Включения',
    'Вмятина',
    'Гофры',
    'Дефект ремонта',
    'Задир',
    'Несплошности',
    'Отрыв',
    'Отслоение',
    'Охрупчивание',
    'Порез',
    'Прокол',
    'Пропуск',
    'Расслоения',
    'Сдир',
    'Складки',
    'Трещины',
    'Утонение',
    'Царапина',
    'Нет данных',
  ];

  final List<String> _typeinsul = [
    'Заводское',
    'РАМ',
    'Мастичное',
    'Полиэтиленовое',
    'Ленточное',
    'Лакокрасочное',
    'Полиуретановое',
    'Покрытие отсутствует',
    'Нет данных',
  ];
  final List<String> _insulcharadhes = [
    'Адгезионный',
    'Когезионный',
    'Смешанный',
    'Нет данных',
  ];
  final List<String> _insulcondit = [
    'Неудовлетворительное',
    'Удовлетворительное',
    'Нет данных',
  ];

  final List<String> _vlaga = [
    'Да',
    'Нет',
    'Нет данных',
  ];

  final List<String> _typeinsulrest = [
    'Грунтовка + РАМ 1 слой + Литкор НК Газ',
    'Грунтовка + РАМ 2 слоя + Литкор НК Газ',
    'БИУРС',
    'Термоусаживающаяся манжета',
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController piketkmController = TextEditingController();
  TextEditingController coordinateController = TextEditingController();
  TextEditingController lengthpitController = TextEditingController();
  TextEditingController depthpitController = TextEditingController();
  TextEditingController potencialController = TextEditingController();
  TextEditingController soprgruntController = TextEditingController();
  TextEditingController phController = TextEditingController();
  TextEditingController davlController = TextEditingController();
  TextEditingController vlagaController = TextEditingController();
  TextEditingController zaklController = TextEditingController();

  TextEditingController mestoController = TextEditingController();
  TextEditingController vlaggruntController = TextEditingController();
  TextEditingController tipgruntaController = TextEditingController();
  TextEditingController distvtdController = TextEditingController();
  TextEditingController privmestController = TextEditingController();

  TextEditingController diameterController = TextEditingController();
  TextEditingController thickpipeController = TextEditingController();
  TextEditingController thickpipeController1 = TextEditingController();
  TextEditingController thickpipeController2 = TextEditingController();
  TextEditingController thickpipeController3 = TextEditingController();
  TextEditingController thickpipeController4 = TextEditingController();
  TextEditingController gradesteelController = TextEditingController();

  TextEditingController metalldamageController = TextEditingController();

  TextEditingController charmetdamageController1 = TextEditingController();
  TextEditingController lochourmetdamageController1 = TextEditingController();
  TextEditingController locrasstmetdamageController1 = TextEditingController();
  TextEditingController sizelengthmetdamageController1 =
      TextEditingController();
  TextEditingController sizewidthmetdamageController1 = TextEditingController();
  TextEditingController sizedepthmetdamageController1 = TextEditingController();

  TextEditingController charmetdamageController2 = TextEditingController();
  TextEditingController lochourmetdamageController2 = TextEditingController();
  TextEditingController locrasstmetdamageController2 = TextEditingController();
  TextEditingController sizelengthmetdamageController2 =
      TextEditingController();
  TextEditingController sizewidthmetdamageController2 = TextEditingController();
  TextEditingController sizedepthmetdamageController2 = TextEditingController();

  TextEditingController charmetdamageController3 = TextEditingController();
  TextEditingController lochourmetdamageController3 = TextEditingController();
  TextEditingController locrasstmetdamageController3 = TextEditingController();
  TextEditingController sizelengthmetdamageController3 =
      TextEditingController();
  TextEditingController sizewidthmetdamageController3 = TextEditingController();
  TextEditingController sizedepthmetdamageController3 = TextEditingController();

  TextEditingController typeinsulController = TextEditingController();

  TextEditingController insuladhesController1 = TextEditingController();
  TextEditingController insuladhesController4 = TextEditingController();
  TextEditingController insulcharadhesController1 = TextEditingController();
  TextEditingController thickinsulController1 = TextEditingController();
  TextEditingController thickinsulController4 = TextEditingController();
  TextEditingController thickinsulController5 = TextEditingController();
  TextEditingController thickinsulController = TextEditingController();
  TextEditingController thickinsulController6 = TextEditingController();
  TextEditingController thickinsulController7 = TextEditingController();
  TextEditingController thickinsulController8 = TextEditingController();
  TextEditingController thickinsulController9 = TextEditingController();
  TextEditingController thickinsulController10 = TextEditingController();
  TextEditingController thickinsulController11 = TextEditingController();
  TextEditingController thickinsulController12 = TextEditingController();

  TextEditingController insuladhesController2 = TextEditingController();
  TextEditingController insulcharadhesController2 = TextEditingController();
  TextEditingController thickinsulController2 = TextEditingController();

  TextEditingController insuladhesController3 = TextEditingController();
  TextEditingController insulcharadhesController3 = TextEditingController();
  TextEditingController thickinsulController3 = TextEditingController();

  TextEditingController insulconditController = TextEditingController();
  TextEditingController insuldamageController = TextEditingController();

  TextEditingController charinsuldamageController1 = TextEditingController();
  TextEditingController lochourinsuldamageController1 = TextEditingController();
  TextEditingController locrasstinsuldamageController1 =
      TextEditingController();
  TextEditingController sizelengthinsuldamageController1 =
      TextEditingController();
  TextEditingController sizewidthinsuldamageController1 =
      TextEditingController();
  TextEditingController sizedepthinsuldamageController1 =
      TextEditingController();

  TextEditingController charinsuldamageController2 = TextEditingController();
  TextEditingController lochourinsuldamageController2 = TextEditingController();
  TextEditingController locrasstinsuldamageController2 =
      TextEditingController();
  TextEditingController sizelengthinsuldamageController2 =
      TextEditingController();
  TextEditingController sizewidthinsuldamageController2 =
      TextEditingController();
  TextEditingController sizedepthinsuldamageController2 =
      TextEditingController();

  TextEditingController charinsuldamageController3 = TextEditingController();
  TextEditingController lochourinsuldamageController3 = TextEditingController();
  TextEditingController locrasstinsuldamageController3 =
      TextEditingController();
  TextEditingController sizelengthinsuldamageController3 =
      TextEditingController();
  TextEditingController sizewidthinsuldamageController3 =
      TextEditingController();
  TextEditingController sizedepthinsuldamageController3 =
      TextEditingController();

  TextEditingController tempairController = TextEditingController();
  TextEditingController tempsurfController = TextEditingController();
  TextEditingController relathumidController = TextEditingController();
  TextEditingController dewpointController = TextEditingController();
  TextEditingController difftempController = TextEditingController();

  TextEditingController typeinsulrestController = TextEditingController();
  TextEditingController insuladhesrestController = TextEditingController();
  TextEditingController insuladhesrestController1 = TextEditingController();
  TextEditingController insuladhesrestController2 = TextEditingController();
  TextEditingController insuladhesrestController3 = TextEditingController();
  TextEditingController insulcharadhesrestController1 = TextEditingController();
  TextEditingController insulcharadhesrestController2 = TextEditingController();
  TextEditingController insulcharadhesrestController3 = TextEditingController();
  TextEditingController insulcharadhesrestController4 = TextEditingController();

  TextEditingController thickinsulrestController = TextEditingController();
  TextEditingController thickinsulrestController1 = TextEditingController();
  TextEditingController thickinsulrestController2 = TextEditingController();
  TextEditingController thickinsulrestController3 = TextEditingController();
  TextEditingController thickinsulrestController4 = TextEditingController();
  TextEditingController thickinsulrestController5 = TextEditingController();
  TextEditingController thickinsulrestController6 = TextEditingController();
  TextEditingController thickinsulrestController7 = TextEditingController();
  TextEditingController thickinsulrestController8 = TextEditingController();
  TextEditingController thickinsulrestController9 = TextEditingController();
  TextEditingController thickinsulrestController10 = TextEditingController();
  TextEditingController thickinsulrestController11 = TextEditingController();
  TextEditingController thickinsulrestController12 = TextEditingController();
  TextEditingController contininsulrestController = TextEditingController();
  TextEditingController metrrestController = TextEditingController();

  TextEditingController tickinsulmeterController = TextEditingController();
  TextEditingController tickinsulmeternumbController = TextEditingController();
  TextEditingController tickinsulmeterdateController = TextEditingController();
  TextEditingController tickmetallmeterController = TextEditingController();
  TextEditingController tickmetallmeternumbController = TextEditingController();
  TextEditingController tickmetallmeterdateController = TextEditingController();
  TextEditingController adhesmeterController = TextEditingController();
  TextEditingController adhesmeternumbController = TextEditingController();
  TextEditingController adhesmeterdateController = TextEditingController();
  TextEditingController continmeterController = TextEditingController();
  TextEditingController continmeternumbController = TextEditingController();
  TextEditingController continmeterdateController = TextEditingController();
  TextEditingController setvikController = TextEditingController();
  TextEditingController setviknumbController = TextEditingController();
  TextEditingController setvikdateController = TextEditingController();
  TextEditingController multimeterController = TextEditingController();
  TextEditingController multimeternumbController = TextEditingController();
  TextEditingController multimeterdateController = TextEditingController();

  TextEditingController osnovanieController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  TextEditingController filialController = TextEditingController();
  TextEditingController predskomController = TextEditingController();
  TextEditingController fiopredskomController = TextEditingController();
  TextEditingController dolzhnproizvrabController = TextEditingController();
  TextEditingController fioproizvrabController = TextEditingController();
  TextEditingController dolzhnnachuchastkaController = TextEditingController();
  TextEditingController fionachuchastkaController = TextEditingController();
  TextEditingController dolzhnpredstzakazchController = TextEditingController();
  TextEditingController fiopredstzakazchController = TextEditingController();
  TextEditingController fiodruglicController = TextEditingController();

  TextEditingController dateObslController = TextEditingController();
  TextEditingController dateObsl2Controller = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController dolzhnpredstzakazchSKController =
      TextEditingController();
  TextEditingController fiopredstzakazchSKController = TextEditingController();

  TextEditingController dolzhnpredststroitSKController =
      TextEditingController();
  TextEditingController fiopredststroitSKController = TextEditingController();
  TextEditingController dolzhnpredststroitController = TextEditingController();
  TextEditingController fiopredststroitController = TextEditingController();

  bool isEdit;
  final GlobalKey<FormState> _1formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _2formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _3formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _4formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _5formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _6formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _7formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _8formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    print('открыли: ${object.photometdef1.toString()}');
    isEdit = object.title == '' ? false : true;
    object.photo == '' ? false : true;
    object.photometdef1 == '' ? false : true;
    titleController.text = object.title ?? '';
    locationController.text = object.location ?? '';
    print('дата обследования: ${object.dateObsl}');
    dateObslController.text = object.dateObsl ?? '';
    dateObsl2Controller.text = object.dateObsl2 ?? '';
    piketkmController.text = object.piketkm ?? '';
    coordinateController.text = object.coordinate ?? '';
    lengthpitController.text = object.lengthpit ?? '';
    depthpitController.text = object.depthpit ?? '';
    potencialController.text = object.potencial ?? '';
    soprgruntController.text = object.soprgrunt ?? '';

    phController.text = object.ph ?? '';
    davlController.text = object.davl ?? '';
    vlagaController.text = object.vlaga ?? '';
    zaklController.text = object.zakl ?? '';

    diameterController.text = object.diameter ?? '';
    thickpipeController.text = object.thickpipe ?? '';
    thickpipeController1.text = object.thickpipe1 ?? '';
    thickpipeController2.text = object.thickpipe2 ?? '';
    thickpipeController3.text = object.thickpipe3 ?? '';
    thickpipeController4.text = object.thickpipe4 ?? '';
    gradesteelController.text = object.gradesteel ?? '';

    metalldamageController.text = object.metalldamage ?? '';

    charmetdamageController1.text = object.charmetdamage1 ?? '';
    lochourmetdamageController1.text = object.lochourmetdamage1 ?? '';
    locrasstmetdamageController1.text = object.locrasstmetdamage1 ?? '';
    sizelengthmetdamageController1.text = object.sizelengthmetdamage1 ?? '';
    sizewidthmetdamageController1.text = object.sizewidthmetdamage1 ?? '';
    sizedepthmetdamageController1.text = object.sizedepthmetdamage1 ?? '';

    charmetdamageController2.text = object.charmetdamage2 ?? '';
    lochourmetdamageController2.text = object.lochourmetdamage2 ?? '';
    locrasstmetdamageController2.text = object.locrasstmetdamage2 ?? '';
    sizelengthmetdamageController2.text = object.sizelengthmetdamage2 ?? '';
    sizewidthmetdamageController2.text = object.sizewidthmetdamage2 ?? '';
    sizedepthmetdamageController2.text = object.sizedepthmetdamage2 ?? '';

    charmetdamageController3.text = object.charmetdamage3 ?? '';
    lochourmetdamageController3.text = object.lochourmetdamage3 ?? '';
    locrasstmetdamageController3.text = object.locrasstmetdamage3 ?? '';
    sizelengthmetdamageController3.text = object.sizelengthmetdamage3 ?? '';
    sizewidthmetdamageController3.text = object.sizewidthmetdamage3 ?? '';
    sizedepthmetdamageController3.text = object.sizedepthmetdamage3 ?? '';

    typeinsulController.text = object.typeinsul ?? '';
    insuladhesController1.text = object.insuladhes1 ?? '';
    insuladhesController4.text = object.insuladhes4 ?? '';
    insulcharadhesController1.text = object.insulcharadhes1 ?? '';
    thickinsulController1.text = object.thickinsul1 ?? '';
    thickinsulController4.text = object.thickinsul4 ?? '';
    thickinsulController5.text = object.thickinsul5 ?? '';
    thickinsulController6.text = object.thickinsul6 ?? '';
    thickinsulController7.text = object.thickinsul7 ?? '';
    thickinsulController8.text = object.thickinsul8 ?? '';
    thickinsulController9.text = object.thickinsul9 ?? '';
    thickinsulController10.text = object.thickinsul10 ?? '';
    thickinsulController11.text = object.thickinsul11 ?? '';
    thickinsulController12.text = object.thickinsul12 ?? '';
    thickinsulController.text = object.thickinsul ?? '';

    insuladhesController2.text = object.insuladhes2 ?? '';
    insulcharadhesController2.text = object.insulcharadhes2 ?? '';
    thickinsulController2.text = object.thickinsul2 ?? '';

    insuladhesController3.text = object.insuladhes3 ?? '';
    insulcharadhesController3.text = object.insulcharadhes3 ?? '';
    thickinsulController3.text = object.thickinsul3 ?? '';

    insulconditController.text = object.insulcondit ?? '';
    insuldamageController.text = object.insuldamage ?? '';

    charinsuldamageController1.text = object.charinsuldamage1 ?? '';
    lochourinsuldamageController1.text = object.lochourinsuldamage1 ?? '';
    locrasstinsuldamageController1.text = object.locrasstinsuldamage1 ?? '';
    sizelengthinsuldamageController1.text = object.sizelengthinsuldamage1 ?? '';
    sizewidthinsuldamageController1.text = object.sizewidthinsuldamage1 ?? '';
    sizedepthinsuldamageController1.text = object.sizedepthinsuldamage1 ?? '';

    charinsuldamageController2.text = object.charinsuldamage2 ?? '';
    lochourinsuldamageController2.text = object.lochourinsuldamage2 ?? '';
    locrasstinsuldamageController2.text = object.locrasstinsuldamage2 ?? '';
    sizelengthinsuldamageController2.text = object.sizelengthinsuldamage2 ?? '';
    sizewidthinsuldamageController2.text = object.sizewidthinsuldamage2 ?? '';
    sizedepthinsuldamageController2.text = object.sizedepthinsuldamage2 ?? '';

    charinsuldamageController3.text = object.charinsuldamage3 ?? '';
    lochourinsuldamageController3.text = object.lochourinsuldamage3 ?? '';
    locrasstinsuldamageController3.text = object.locrasstinsuldamage3 ?? '';
    sizelengthinsuldamageController3.text = object.sizelengthinsuldamage3 ?? '';
    sizewidthinsuldamageController3.text = object.sizewidthinsuldamage3 ?? '';
    sizedepthinsuldamageController3.text = object.sizedepthinsuldamage3 ?? '';

    tempairController.text = object.tempair ?? '';
    tempsurfController.text = object.tempsurf ?? '';
    relathumidController.text = object.relathumid ?? '';
    dewpointController.text = object.dewpoint ?? '';
    difftempController.text = object.difftemp ?? '';

    typeinsulrestController.text = object.typeinsulrest ?? '';
    insuladhesrestController.text = object.insuladhesrest ?? '';
    insuladhesrestController1.text = object.insuladhesrest1 ?? '';
    insuladhesrestController2.text = object.insuladhesrest2 ?? '';
    insuladhesrestController3.text = object.insuladhesrest3 ?? '';
    insulcharadhesrestController1.text = object.insulcharadhesrest1 ?? '';
    insulcharadhesrestController2.text = object.insulcharadhesrest2 ?? '';
    insulcharadhesrestController3.text = object.insulcharadhesrest3 ?? '';
    insulcharadhesrestController4.text = object.insulcharadhesrest4 ?? '';
    thickinsulrestController.text = object.thickinsulrest ?? '';
    thickinsulrestController1.text = object.thickinsulrest1 ?? '';
    thickinsulrestController2.text = object.thickinsulrest2 ?? '';
    thickinsulrestController3.text = object.thickinsulrest3 ?? '';
    thickinsulrestController4.text = object.thickinsulrest4 ?? '';
    thickinsulrestController5.text = object.thickinsulrest5 ?? '';
    thickinsulrestController6.text = object.thickinsulrest6 ?? '';
    thickinsulrestController7.text = object.thickinsulrest7 ?? '';
    thickinsulrestController8.text = object.thickinsulrest8 ?? '';
    thickinsulrestController9.text = object.thickinsulrest9 ?? '';
    thickinsulrestController10.text = object.thickinsulrest10 ?? '';
    thickinsulrestController11.text = object.thickinsulrest11 ?? '';
    thickinsulrestController12.text = object.thickinsulrest12 ?? '';
    contininsulrestController.text = object.contininsulrest ?? '';
    metrrestController.text = object.metrrest ?? '';

    tickinsulmeterController.text = object.tickinsulmeter ?? '';
    tickinsulmeternumbController.text = object.tickinsulmeternumb ?? '';
    tickinsulmeterdateController.text = object.tickinsulmeterdate ?? '';
    tickmetallmeterController.text = object.tickmetallmeter ?? '';
    tickmetallmeternumbController.text = object.tickmetallmeternumb ?? '';
    tickmetallmeterdateController.text = object.tickmetallmeterdate ?? '';
    adhesmeterController.text = object.adhesmeter ?? '';
    adhesmeternumbController.text = object.adhesmeternumb ?? '';
    adhesmeterdateController.text = object.adhesmeterdate ?? '';
    continmeterController.text = object.continmeter ?? '';
    continmeternumbController.text = object.continmeternumb ?? '';
    continmeterdateController.text = object.continmeterdate ?? '';
    setvikController.text = object.setvik ?? '';
    setviknumbController.text = object.setviknumb ?? '';
    setvikdateController.text = object.setvikdate ?? '';
    multimeterController.text = object.multimeter ?? '';
    multimeternumbController.text = object.multimeternumb ?? '';
    multimeterdateController.text = object.multimeterdate ?? '';

    osnovanieController.text = object.osnovanie ?? '';
    descriptionController.text = object.description ?? '';

    filialController.text = object.filial ?? '';
    predskomController.text = object.dolzhnpredskom ?? '';
    fiopredskomController.text = object.fiopredskom ?? '';
    dolzhnproizvrabController.text = object.dolzhnproizvrab ?? '';
    fioproizvrabController.text = object.fioproizvrab ?? '';
    dolzhnnachuchastkaController.text = object.dolzhnnachuchastka ?? '';
    fionachuchastkaController.text = object.fionachuchastka ?? '';
    dolzhnpredstzakazchController.text = object.dolzhnpredstzakazch ?? '';
    fiopredstzakazchController.text = object.fiopredstzakazch ?? '';
    fiodruglicController.text = object.fiodruglic ?? '';
    fiopredstzakazchSKController.text = object.fiopredstzakazchSK ?? '';
    dolzhnpredstzakazchSKController.text = object.dolzhnpredstzakazchSK ?? '';

    dolzhnpredststroitSKController.text = object.dolzhnpredststroitSK ?? '';
    fiopredststroitSKController.text = object.fiopredststroitSK ?? '';
    dolzhnpredststroitController.text = object.dolzhnpredststroit ?? '';
    fiopredststroitController.text = object.fiopredststroit ?? '';

    mestoController.text = object.mesto ?? '';
    tipgruntaController.text = object.tipgrunta ?? '';
    vlaggruntController.text = object.vlaggrunt ?? '';
    distvtdController.text = object.distvtd ?? '';
    privmestController.text = object.privmest ?? '';
  }

  ObjectDetailIpState(this.object);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 8,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: _cardColor,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: isEdit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ИЗМЕНИТЬ ЗАПИСЬ',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Color.fromRGBO(187, 30, 16, 1.0),
                          size: 32,
                        ),
                        onPressed: () {
                          debugPrint('Click Floated Back.');
                          confirmDelete();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Theme.of(context).accentColor,
                          size: 32,
                        ),
                        onPressed: () {
                          if (_1formKey.currentState != null) {
                            _1formKey.currentState.validate();
                            saveForm12();
                          } else if (_2formKey.currentState != null) {
                            _2formKey.currentState.validate();
                            saveForm22();
                          } else if (_3formKey.currentState != null) {
                            _3formKey.currentState.validate();
                            saveForm32();
                          } else if (_4formKey.currentState != null) {
                            _4formKey.currentState.validate();
                            saveForm42();
                          } else if (_5formKey.currentState != null) {
                            _5formKey.currentState.validate();
                            saveForm52();
                          } else if (_6formKey.currentState != null) {
                            _6formKey.currentState.validate();
                            saveForm62();
                          } else if (_7formKey.currentState != null) {
                            _7formKey.currentState.validate();
                            saveForm72();
                          } else if (_8formKey.currentState != null) {
                            _8formKey.currentState.validate();
                            saveForm82();
                          }
                        },
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ДОБАВИТЬ ЗАПИСЬ',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Theme.of(context).accentColor,
                          size: 32,
                        ),
                        onPressed: () {
                          if (_1formKey.currentState != null) {
                            _1formKey.currentState.validate();
                            saveForm1();
                          } else if (_2formKey.currentState != null) {
                            _2formKey.currentState.validate();
                            saveForm2();
                          } else if (_3formKey.currentState != null) {
                            _3formKey.currentState.validate();
                            saveForm3();
                          } else if (_4formKey.currentState != null) {
                            _4formKey.currentState.validate();
                            saveForm4();
                          } else if (_5formKey.currentState != null) {
                            _5formKey.currentState.validate();
                            saveForm5();
                          } else if (_6formKey.currentState != null) {
                            _6formKey.currentState.validate();
                            saveForm6();
                          } else if (_7formKey.currentState != null) {
                            _7formKey.currentState.validate();
                            saveForm7();
                          } else if (_8formKey.currentState != null) {
                            _8formKey.currentState.validate();
                            saveForm82();
                          }
                        },
                      ),
                    ],
                  ),
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 4,
                  color: Theme.of(context).accentColor,
                ),
              ),
              labelStyle: TextStyle(
                fontSize: 44,
                color: Theme.of(context).accentColor, // цвет выбранной иконки
              ),
              unselectedLabelStyle: TextStyle(
                // fontSize: 32,
                color: Colors.white, // цвет невыбранных иконок
              ),
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.notes_rounded,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.radio_button_unchecked_sharp,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.radio_button_on_sharp,
                  size: 32,
                  // color: Colors.white,
                )),
                const Tab(
                    icon: Icon(
                  Icons.build_circle_sharp,
                  size: 32,
                )),
                Tab(
                    icon: Icon(
                  Icons.align_vertical_bottom_rounded,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.design_services_sharp,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.playlist_add_circle_sharp,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.person_add_alt_rounded,
                  size: 32,
                )),
              ],
            )),
        body: TabBarView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _1formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ОБЩИЕ ДАННЫЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          // setState(() {
                          object.title = value;
                          // titleController.text = object.title ?? '';
                          // });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Наименование не введено';
                          } else if (value.length > 50) {
                            return 'Максимальная длина 50';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        controller: titleController,
                        focusNode: focusNode1,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Наименование объекта *',
                          hintText: 'Как называется объект контроля',
                          prefixIcon: Icon(
                            Icons.account_balance_outlined,
                            color: focusNode1.hasFocus ||
                                    titleController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              titleController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            focusNode1.requestFocus();
                            object.title = value;
                            object.title = titleController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Дата начала работ:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Дата окончания работ:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            focusNode: focusNode41,
                            onPressed: () async {
                              DateTime selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015),
                                lastDate: dateObsl2 ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  dateObsl1 = selectedDate;
                                  dateObslController.text =
                                      DateFormat('dd.MM.yyyy')
                                          .format(selectedDate);
                                  object.dateObsl = dateObslController.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode41.hasFocus ||
                                      dateObslController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              dateObslController.text,
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: IconButton(
                              focusNode: focusNode10,
                              onPressed: () async {
                                DateTime selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: dateObsl2 ?? DateTime.now(),
                                  firstDate: dateObsl1 ?? DateTime.now(),
                                  lastDate: DateTime(2100),
                                  locale: const Locale("ru",
                                      "RU"), // Установите локаль на русский язык
                                );

                                if (selectedDate != null) {
                                  setState(() {
                                    dateObsl2 = selectedDate;
                                    dateObsl2Controller.text =
                                        DateFormat('dd.MM.yyyy')
                                            .format(selectedDate);
                                    object.dateObsl2 = dateObsl2Controller.text;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.calendar_month_outlined,
                                color: focusNode10.hasFocus ||
                                        dateObsl2Controller.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              dateObsl2Controller.text,
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode2,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Основание для проведения шурфовки',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.wysiwyg_rounded,
                            color: focusNode2.hasFocus ||
                                    osnovanieController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _osnovanie.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.osnovanie,
                        onChanged: (String value) {
                          setState(() {
                            focusNode2.requestFocus();
                            object.osnovanie = value;
                            object.osnovanie = osnovanieController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode3,
                        maxLength: 10,
                        onFieldSubmitted: (value) {
                          object.piketkm = value;
                        },
                        controller: piketkmController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Километр газопровода',
                          hintText: 'Километр проведения',
                          helperText: 'км',
                          prefixIcon: Icon(
                            Icons.add_location_outlined,
                            color: focusNode3.hasFocus ||
                                    piketkmController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              piketkmController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (String value) {
                          setState(() {
                            focusNode3.requestFocus();
                            object.piketkm = value;
                            object.piketkm = piketkmController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode4,
                        maxLength: 50,
                        onSaved: (value) {
                          object.location = value;
                        },
                        controller: locationController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Координаты места шурфовки',
                          hintText: 'Координаты места шурфовки',
                          helperText: 'NN.NNNNNN/EE.EEEEEE',
                          prefixIcon: Icon(
                            Icons.map_sharp,
                            color: focusNode4.hasFocus ||
                                    locationController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              getLocation();
                            },
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.green,
                              size: 32,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (String value) {
                          setState(() {
                            focusNode4.requestFocus();
                            object.location = value;
                            object.location = locationController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode100,
                        maxLength: 20,
                        onFieldSubmitted: (value) {
                          object.distvtd = value;
                        },
                        controller: distvtdController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Дистанция по ВТД',
                          hintText: '№ трубы',
                          helperText: '№ ....',
                          prefixIcon: Icon(
                            Icons.pin_drop,
                            color: focusNode100.hasFocus ||
                                    distvtdController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              distvtdController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: (String value) {
                          setState(() {
                            focusNode100.requestFocus();
                            object.distvtd = value;
                            object.distvtd = distvtdController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode5,
                        onChanged: (String value) {
                          setState(() {
                            focusNode5.requestFocus();
                            object.lengthpit = value;
                            object.lengthpit = lengthpitController.text;
                          });
                        },
                        maxLength: 6,
                        onSaved: (value) {
                          object.lengthpit = value;
                        },
                        controller: lengthpitController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Длина шурфа',
                          hintText: 'Введите длину шурфа',
                          helperText: 'м',
                          prefixIcon: Icon(
                            Icons.arrow_forward_rounded,
                            color: focusNode5.hasFocus ||
                                    lengthpitController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              lengthpitController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp(r'^\d+\,?\d{0,3}'),
                              allow: true)
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode6,
                        onChanged: (String value) {
                          setState(() {
                            focusNode6.requestFocus();
                            object.depthpit = value;
                            object.depthpit = depthpitController.text;
                          });
                        },
                        maxLength: 6,
                        onSaved: (value) {
                          object.depthpit = value;
                        },
                        controller: depthpitController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Глубина шурфа',
                          hintText: 'Введите глубину шурфа',
                          helperText: 'м',
                          prefixIcon: Icon(
                            Icons.arrow_downward_sharp,
                            color: focusNode6.hasFocus ||
                                    depthpitController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              depthpitController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter(RegExp(r'^\d+\,?\d{0,3}'),
                              allow: true)
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode50,
                        onChanged: (String value) {
                          setState(() {
                            focusNode50.requestFocus();
                            object.potencial = value;
                            object.potencial = potencialController.text;
                          });
                        },
                        maxLength: 5,
                        onSaved: (value) {
                          object.potencial = value;
                        },
                        controller: potencialController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Потенциал "труба-земля"',
                          hintText: 'Введите значение',
                          helperText: 'В',
                          prefixIcon: Icon(
                            Icons.bolt_rounded,
                            color: focusNode50.hasFocus ||
                                    potencialController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              potencialController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter(RegExp(r'^\d+\,?\d{0,3}'),
                        //       allow: true)
                        // ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode51,
                        onChanged: (String value) {
                          setState(() {
                            focusNode51.requestFocus();
                            object.soprgrunt = value;
                            object.soprgrunt = soprgruntController.text;
                          });
                        },
                        maxLength: 4,
                        onSaved: (value) {
                          object.soprgrunt = value;
                        },
                        controller: soprgruntController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Удельное сопротивление грунта',
                          hintText: 'Введите значение',
                          helperText: 'Ом*м',
                          prefixIcon: Icon(
                            Icons.bolt_rounded,
                            color: focusNode51.hasFocus ||
                                    soprgruntController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              soprgruntController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        // inputFormatters: [
                        //   FilteringTextInputFormatter(RegExp(r'^\d+\,?\d{0,3}'),
                        //       allow: true)
                        // ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode90,
                        onChanged: (String value) {
                          setState(() {
                            focusNode90.requestFocus();
                            object.ph = value;
                            object.ph = phController.text;
                          });
                        },
                        maxLength: 4,
                        onSaved: (value) {
                          object.ph = value;
                        },
                        controller: phController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'pH грунта',
                          hintText: 'Введите значение',
                          helperText: 'pH',
                          prefixIcon: Icon(
                            Icons.equalizer,
                            color: focusNode90.hasFocus ||
                                    phController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              phController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode96,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Местность',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.wysiwyg_rounded,
                            color: focusNode96.hasFocus ||
                                    mestoController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _mesto.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.mesto,
                        onChanged: (String value) {
                          setState(() {
                            focusNode96.requestFocus();
                            object.mesto = value;
                            object.mesto = mestoController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode97,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Тип грунта',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.wysiwyg_rounded,
                            color: focusNode97.hasFocus ||
                                    tipgruntaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _tipgrunt.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.tipgrunta,
                        onChanged: (String value) {
                          setState(() {
                            focusNode97.requestFocus();
                            object.tipgrunta = value;
                            object.tipgrunta = tipgruntaController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode98,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Влажность грунта',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.wysiwyg_rounded,
                            color: focusNode98.hasFocus ||
                                    vlaggruntController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _vlaggrunt.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.vlaggrunt,
                        onChanged: (String value) {
                          setState(() {
                            focusNode98.requestFocus();
                            object.vlaggrunt = value;
                            object.vlaggrunt = vlaggruntController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode99,
                        onChanged: (String value) {
                          setState(() {
                            focusNode99.requestFocus();
                            object.privmest = value;
                            object.privmest = privmestController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.privmest = value;
                        },
                        controller: privmestController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Привязка на местности',
                          hintText: 'привязка',
                          helperText: '....',
                          prefixIcon: Icon(
                            Icons.wysiwyg_rounded,
                            color: focusNode99.hasFocus ||
                                    privmestController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              privmestController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm1(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _2formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ДАННЫЕ О ТРУБЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode7,
                        onChanged: (String value) {
                          setState(() {
                            focusNode7.requestFocus();
                            object.diameter = value;
                            object.diameter = diameterController.text;
                          });
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Диаметр газопровода',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.not_interested_sharp,
                            color: (focusNode7.hasFocus ||
                                    diameterController.text.isNotEmpty)
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _diameter.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.diameter,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Толщина стенки',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  thickpipeController1.clear();
                                  thickpipeController2.clear();
                                  thickpipeController3.clear();
                                  thickpipeController4.clear();
                                  thickpipeController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 100),
                              Expanded(
                                child: TextFormField(
                                  onChanged: (String value) {
                                    setState(() {
                                      object.thickpipe1 = value;
                                      object.thickpipe1 =
                                          thickpipeController1.text;
                                      focusNode115.requestFocus();
                                      minipipe();
                                    });
                                  },
                                  focusNode: focusNode115,
                                  maxLength: 4,
                                  onSaved: (value) {
                                    object.thickpipe1 = value;
                                  },
                                  controller: thickpipeController1,
                                  style: textStyle,
                                  decoration: InputDecoration(
                                    focusColor: Theme.of(context).primaryColor,
                                    labelStyle: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    labelText: '12ч',
                                    hintText: 'Введите толщину стенки',
                                    helperText: 'мм',
                                    prefixIcon: Icon(
                                      Icons.vertical_align_center_sharp,
                                      color: (focusNode115.hasFocus ||
                                              thickpipeController1
                                                  .text.isNotEmpty)
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey,
                                      size: 32,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 2),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 100),
                            ],
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode118.requestFocus();
                                  minipipe();
                                  object.thickpipe4 = value;
                                  object.thickpipe4 = thickpipeController4.text;
                                });
                              },
                              focusNode: focusNode118,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickpipe4 = value;
                              },
                              controller: thickpipeController4,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '9ч',
                                hintText: '9ч',
                                helperText: 'мм',
                                // prefixIcon: Icon(
                                //   Icons.vertical_align_center_sharp,
                                //   color: (focusNode118.hasFocus ||
                                //           thickpipeController4.text.isNotEmpty)
                                //       ? Theme.of(context).primaryColor
                                //       : Colors.grey,
                                //   size: 22,
                                // ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 8,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'мин: ${thickpipeController.text}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_left,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode116.requestFocus();
                                  minipipe();
                                  object.thickpipe2 = value;
                                  object.thickpipe2 = thickpipeController2.text;
                                });
                              },
                              focusNode: focusNode116,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickpipe2 = value;
                              },
                              controller: thickpipeController2,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '3ч',
                                hintText: '3ч',
                                helperText: 'мм',
                                // prefixIcon: Icon(
                                //   Icons.vertical_align_center_sharp,
                                //   color: (focusNode116.hasFocus ||
                                //           thickpipeController2.text.isNotEmpty)
                                //       ? Theme.of(context).primaryColor
                                //       : Colors.grey,
                                //   size: 32,
                                // ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 100),
                              Expanded(
                                child: TextFormField(
                                  onChanged: (String value) {
                                    setState(() {
                                      focusNode117.requestFocus();
                                      minipipe();
                                      object.thickpipe3 = value;
                                      object.thickpipe3 =
                                          thickpipeController3.text;
                                    });
                                  },
                                  focusNode: focusNode117,
                                  maxLength: 4,
                                  onSaved: (value) {
                                    object.thickpipe3 = value;
                                  },
                                  controller: thickpipeController3,
                                  style: textStyle,
                                  decoration: InputDecoration(
                                    focusColor: Theme.of(context).primaryColor,
                                    labelStyle: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    labelText: '6ч',
                                    hintText: 'Введите толщину стенки',
                                    helperText: 'мм',
                                    prefixIcon: Icon(
                                      Icons.vertical_align_center_sharp,
                                      color: (focusNode117.hasFocus ||
                                              thickpipeController3
                                                  .text.isNotEmpty)
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey,
                                      size: 32,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 2),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 100),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode9,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.star_border_sharp,
                            color: focusNode9.hasFocus ||
                                    gradesteelController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Марка стали',
                        ),
                        items: _gradesteel.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.gradesteel,
                        onChanged: (String value) {
                          setState(() {
                            focusNode9.requestFocus();
                            object.gradesteel = value;
                            object.gradesteel = gradesteelController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        onChanged: (String value) {
                          setState(() {
                            focusNode93.requestFocus();
                            object.davl = value;
                            object.davl = davlController.text;
                          });
                        },
                        focusNode: focusNode93,
                        maxLength: 6,
                        onSaved: (value) {
                          object.davl = value;
                        },
                        controller: davlController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Рабочее давление',
                          hintText: 'Введите значение',
                          helperText: 'МПа',
                          prefixIcon: Icon(
                            Icons.warning_amber_rounded,
                            color: (focusNode93.hasFocus ||
                                    davlController.text.isNotEmpty)
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              davlController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode10,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.ssid_chart_sharp,
                            color: focusNode10.hasFocus ||
                                    metalldamageController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Повреждения металла',
                        ),
                        items: _metalldamage.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.metalldamage,
                        onChanged: (String value) {
                          setState(() {
                            focusNode10.requestFocus();
                            object.metalldamage = value;
                            object.metalldamage = metalldamageController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте №1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode11,
                                      decoration: InputDecoration(
                                          focusColor:
                                              Theme.of(context).primaryColor,
                                          labelStyle: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                width: 2),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.ssid_chart_sharp,
                                            color: focusNode11.hasFocus ||
                                                    charmetdamageController1
                                                        .text.isNotEmpty
                                                ? Theme.of(context).primaryColor
                                                : Colors.grey,
                                            size: 32,
                                          ),
                                          labelText: 'Характер дефекта',
                                          suffixIcon: GestureDetector(
                                              onTap: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CameraPageIp()),
                                                ).then((value) {
                                                  setState(() async {
                                                    if (value != null) {
                                                      _imageDefmet1 = value;
                                                      if (_2formKey.currentState
                                                          .validate()) {
                                                        _2formKey.currentState
                                                            .save();
                                                        if (_imageDefmet1 !=
                                                            null) {
                                                          final Directory
                                                              extDir =
                                                              await getApplicationDocumentsDirectory();
                                                          final String dirPath =
                                                              '${extDir.path}/Pictures/flutter';
                                                          await Directory(
                                                                  dirPath)
                                                              .create(
                                                                  recursive:
                                                                      true);
                                                          final String
                                                              filePath =
                                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                          await _imageDefmet1
                                                              .copy(filePath);
                                                          object.photometdef1 =
                                                              filePath;
                                                          print(
                                                              'сделали: ${object.photometdef1.toString()}');
                                                        }
                                                      }
                                                    }
                                                  });
                                                });
                                              },
                                              child: Icon(
                                                  Icons.camera_alt_sharp,
                                                  color: Color.fromRGBO(
                                                      97, 153, 59, 1.0)))),
                                      items:
                                          _charmetdamage1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.charmetdamage1,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode11.requestFocus();
                                          object.charmetdamage1 = value;
                                          object.charmetdamage1 =
                                              charmetdamageController1.text;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photometdef1)),
                                              );
                                            },
                                            child: Center(
                                              child: object.photometdef1 != null
                                                  ? Image.file(
                                                      File(object.photometdef1),
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          Alignment.center,
                                                      width: 100,
                                                      height: 100,
                                                    )
                                                  : Center(
                                                      child: Image.asset(
                                                        'assets/images/defaultimage.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №1',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourmetdamageController1
                                                  .clear();
                                              locrasstmetdamageController1
                                                  .clear();
                                              sizelengthmetdamageController1
                                                  .clear();
                                              sizewidthmetdamageController1
                                                  .clear();
                                              sizedepthmetdamageController1
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode12.requestFocus();

                                                object.lochourmetdamage1 =
                                                    value;
                                                object.lochourmetdamage1 =
                                                    lochourmetdamageController1
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode12,
                                            maxLength: 2,
                                            onSaved: (value) {
                                              object.lochourmetdamage1 = value;
                                            },
                                            controller:
                                                lochourmetdamageController1,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Час',
                                              hintText: '1-12',
                                              helperText: 'ЧАС',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode12.hasFocus ||
                                                        lochourmetdamageController1
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode55.requestFocus();
                                                object.locrasstmetdamage1 =
                                                    value;
                                                object.locrasstmetdamage1 =
                                                    locrasstmetdamageController1
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode55,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.locrasstmetdamage1 = value;
                                            },
                                            controller:
                                                locrasstmetdamageController1,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'от Шва',
                                              hintText: 'по ХГ',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode55.hasFocus ||
                                                        locrasstmetdamageController1
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode13.requestFocus();
                                                object.sizelengthmetdamage1 =
                                                    value;
                                                object.sizelengthmetdamage1 =
                                                    sizelengthmetdamageController1
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode13,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizelengthmetdamage1 =
                                                  value;
                                            },
                                            controller:
                                                sizelengthmetdamageController1,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Длина',
                                              hintText: 'L',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode13.hasFocus ||
                                                        sizelengthmetdamageController1
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode56.requestFocus();
                                                object.sizewidthmetdamage1 =
                                                    value;
                                                object.sizewidthmetdamage1 =
                                                    sizewidthmetdamageController1
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode56,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizewidthmetdamage1 =
                                                  value;
                                            },
                                            controller:
                                                sizewidthmetdamageController1,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Ширина',
                                              hintText: 'W',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode56.hasFocus ||
                                                        sizewidthmetdamageController1
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode57.requestFocus();
                                                object.sizedepthmetdamage1 =
                                                    value;
                                                object.sizedepthmetdamage1 =
                                                    sizedepthmetdamageController1
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode57,
                                            maxLength: 3,
                                            onSaved: (value) {
                                              object.sizedepthmetdamage1 =
                                                  value;
                                            },
                                            controller:
                                                sizedepthmetdamageController1,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Глубина',
                                              hintText: 'H',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode57.hasFocus ||
                                                        sizedepthmetdamageController1
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте №2',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode49,
                                      decoration: InputDecoration(
                                          focusColor:
                                              Theme.of(context).primaryColor,
                                          labelStyle: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                width: 2),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.ssid_chart_sharp,
                                            color: focusNode49.hasFocus ||
                                                    charmetdamageController2
                                                        .text.isNotEmpty
                                                ? Theme.of(context).primaryColor
                                                : Colors.grey,
                                            size: 32,
                                          ),
                                          labelText: 'Характер дефекта',
                                          suffixIcon: GestureDetector(
                                              onTap: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CameraPageIp()),
                                                ).then((value) {
                                                  setState(() async {
                                                    if (value != null) {
                                                      _imageDefmet2 = value;
                                                      if (_2formKey.currentState
                                                          .validate()) {
                                                        _2formKey.currentState
                                                            .save();
                                                        if (_imageDefmet2 !=
                                                            null) {
                                                          final Directory
                                                              extDir =
                                                              await getApplicationDocumentsDirectory();
                                                          final String dirPath =
                                                              '${extDir.path}/Pictures/flutter';
                                                          await Directory(
                                                                  dirPath)
                                                              .create(
                                                                  recursive:
                                                                      true);
                                                          final String
                                                              filePath =
                                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                          await _imageDefmet2
                                                              .copy(filePath);
                                                          object.photometdef2 =
                                                              filePath;
                                                          print(
                                                              'сделали: ${object.photometdef2.toString()}');
                                                        }
                                                      }
                                                    }
                                                  });
                                                });
                                              },
                                              child: Icon(
                                                  Icons.camera_alt_sharp,
                                                  color: Color.fromRGBO(
                                                      97, 153, 59, 1.0)))),
                                      items:
                                          _charmetdamage2.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.charmetdamage2,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode49.requestFocus();
                                          object.charmetdamage2 = value;
                                          object.charmetdamage2 =
                                              charmetdamageController2.text;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photometdef2)),
                                              );
                                            },
                                            child: Center(
                                              child: object.photometdef2 != null
                                                  ? Image.file(
                                                      File(object.photometdef2),
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          Alignment.center,
                                                      width: 100,
                                                      height: 100,
                                                    )
                                                  : Center(
                                                      child: Image.asset(
                                                        'assets/images/defaultimage.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №2',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourmetdamageController2
                                                  .clear();
                                              locrasstmetdamageController2
                                                  .clear();
                                              sizelengthmetdamageController2
                                                  .clear();
                                              sizewidthmetdamageController2
                                                  .clear();
                                              sizedepthmetdamageController2
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode32.requestFocus();
                                                object.lochourmetdamage2 =
                                                    value;
                                                object.lochourmetdamage2 =
                                                    lochourmetdamageController2
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode32,
                                            maxLength: 2,
                                            onSaved: (value) {
                                              object.lochourmetdamage2 = value;
                                            },
                                            controller:
                                                lochourmetdamageController2,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Час',
                                              hintText: '1-12',
                                              helperText: 'ЧАС',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode32.hasFocus ||
                                                        lochourmetdamageController2
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode44.requestFocus();
                                                object.locrasstmetdamage2 =
                                                    value;
                                                object.locrasstmetdamage2 =
                                                    locrasstmetdamageController2
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode44,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.locrasstmetdamage2 = value;
                                            },
                                            controller:
                                                locrasstmetdamageController2,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'от Шва',
                                              hintText: 'по ХГ',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode44.hasFocus ||
                                                        locrasstmetdamageController2
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode70.requestFocus();
                                                object.sizelengthmetdamage2 =
                                                    value;
                                                object.sizelengthmetdamage2 =
                                                    sizelengthmetdamageController2
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode70,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizelengthmetdamage2 =
                                                  value;
                                            },
                                            controller:
                                                sizelengthmetdamageController2,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Длина',
                                              hintText: 'L',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode70.hasFocus ||
                                                        sizelengthmetdamageController2
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode47.requestFocus();
                                                object.sizewidthmetdamage2 =
                                                    value;
                                                object.sizewidthmetdamage2 =
                                                    sizewidthmetdamageController2
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode47,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizewidthmetdamage2 =
                                                  value;
                                            },
                                            controller:
                                                sizewidthmetdamageController2,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Ширина',
                                              hintText: 'W',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode47.hasFocus ||
                                                        sizewidthmetdamageController2
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode58.requestFocus();
                                                object.sizedepthmetdamage2 =
                                                    value;
                                                object.sizedepthmetdamage2 =
                                                    sizedepthmetdamageController2
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode58,
                                            maxLength: 3,
                                            onSaved: (value) {
                                              object.sizedepthmetdamage2 =
                                                  value;
                                            },
                                            controller:
                                                sizedepthmetdamageController2,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Глубина',
                                              hintText: 'H',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode58.hasFocus ||
                                                        sizedepthmetdamageController2
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте №3',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode46,
                                      decoration: InputDecoration(
                                          focusColor:
                                              Theme.of(context).primaryColor,
                                          labelStyle: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                width: 2),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.ssid_chart_sharp,
                                            color: focusNode46.hasFocus ||
                                                    charmetdamageController3
                                                        .text.isNotEmpty
                                                ? Theme.of(context).primaryColor
                                                : Colors.grey,
                                            size: 32,
                                          ),
                                          labelText: 'Характер дефекта',
                                          suffixIcon: GestureDetector(
                                              onTap: () async {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CameraPageIp()),
                                                ).then((value) {
                                                  setState(() async {
                                                    if (value != null) {
                                                      _imageDefmet3 = value;
                                                      if (_2formKey.currentState
                                                          .validate()) {
                                                        _2formKey.currentState
                                                            .save();
                                                        if (_imageDefmet3 !=
                                                            null) {
                                                          final Directory
                                                              extDir =
                                                              await getApplicationDocumentsDirectory();
                                                          final String dirPath =
                                                              '${extDir.path}/Pictures/flutter';
                                                          await Directory(
                                                                  dirPath)
                                                              .create(
                                                                  recursive:
                                                                      true);
                                                          final String
                                                              filePath =
                                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                          await _imageDefmet3
                                                              .copy(filePath);
                                                          object.photometdef3 =
                                                              filePath;
                                                          print(
                                                              'сделали: ${object.photometdef3.toString()}');
                                                        }
                                                      }
                                                    }
                                                  });
                                                });
                                              },
                                              child: Icon(
                                                  Icons.camera_alt_sharp,
                                                  color: Color.fromRGBO(
                                                      97, 153, 59, 1.0)))),
                                      items:
                                          _charmetdamage3.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.charmetdamage3,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode46.requestFocus();
                                          object.charmetdamage3 = value;
                                          object.charmetdamage3 =
                                              charmetdamageController3.text;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photometdef3)),
                                              );
                                            },
                                            child: Center(
                                              child: object.photometdef3 != null
                                                  ? Image.file(
                                                      File(object.photometdef3),
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          Alignment.center,
                                                      width: 100,
                                                      height: 100,
                                                    )
                                                  : Center(
                                                      child: Image.asset(
                                                        'assets/images/defaultimage.png',
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №3',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourmetdamageController3
                                                  .clear();
                                              locrasstmetdamageController3
                                                  .clear();
                                              sizelengthmetdamageController3
                                                  .clear();
                                              sizewidthmetdamageController3
                                                  .clear();
                                              sizedepthmetdamageController3
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode33.requestFocus();
                                                object.lochourmetdamage3 =
                                                    value;
                                                object.lochourmetdamage3 =
                                                    lochourmetdamageController3
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode33,
                                            maxLength: 2,
                                            onSaved: (value) {
                                              object.lochourmetdamage3 = value;
                                            },
                                            controller:
                                                lochourmetdamageController3,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Час',
                                              hintText: '1-12',
                                              helperText: 'ЧАС',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode33.hasFocus ||
                                                        lochourmetdamageController3
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode45.requestFocus();
                                                object.locrasstmetdamage3 =
                                                    value;
                                                object.locrasstmetdamage3 =
                                                    locrasstmetdamageController3
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode45,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.locrasstmetdamage3 = value;
                                            },
                                            controller:
                                                locrasstmetdamageController3,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'от Шва',
                                              hintText: 'по ХГ',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode45.hasFocus ||
                                                        locrasstmetdamageController3
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode71.requestFocus();
                                              });
                                              object.sizelengthmetdamage3 =
                                                  value;
                                              object.sizelengthmetdamage3 =
                                                  sizelengthmetdamageController3
                                                      .text;
                                            },
                                            focusNode: focusNode71,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizelengthmetdamage3 =
                                                  value;
                                            },
                                            controller:
                                                sizelengthmetdamageController3,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Длина',
                                              hintText: 'L',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode71.hasFocus ||
                                                        sizelengthmetdamageController3
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode48.requestFocus();
                                                object.sizewidthmetdamage3 =
                                                    value;
                                                object.sizewidthmetdamage3 =
                                                    sizewidthmetdamageController3
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode48,
                                            maxLength: 5,
                                            onSaved: (value) {
                                              object.sizewidthmetdamage3 =
                                                  value;
                                            },
                                            controller:
                                                sizewidthmetdamageController3,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Ширина',
                                              hintText: 'W',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode48.hasFocus ||
                                                        sizewidthmetdamageController3
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode59.requestFocus();
                                                object.sizedepthmetdamage3 =
                                                    value;
                                                object.sizedepthmetdamage3 =
                                                    sizedepthmetdamageController3
                                                        .text;
                                              });
                                            },
                                            focusNode: focusNode59,
                                            maxLength: 3,
                                            onSaved: (value) {
                                              object.sizedepthmetdamage3 =
                                                  value;
                                            },
                                            controller:
                                                sizedepthmetdamageController3,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Глубина',
                                              hintText: 'H',
                                              helperText: 'мм',
                                              prefixIcon: Icon(
                                                Icons.location_searching_sharp,
                                                color: focusNode59.hasFocus ||
                                                        sizedepthmetdamageController3
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm2(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _3formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ИЗОЛЯЦИОННОЕ ПОКРЫТИЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode14,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.star_rate_sharp,
                            color: focusNode14.hasFocus ||
                                    typeinsulController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Тип покрытия',
                        ),
                        items: _typeinsul.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.typeinsul,
                        onChanged: (String value) {
                          setState(() {
                            focusNode14.requestFocus();
                            object.typeinsul = value;
                            object.typeinsul = typeinsulController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Толщина ИП (изм№1)',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            thickinsulController1.clear();
                                            thickinsulController2.clear();
                                            thickinsulController3.clear();
                                            thickinsulController4.clear();
                                            thickinsulController.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode119.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul1 = value;
                                                  object.thickinsul1 =
                                                      thickinsulController1
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode119,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul1 = value;
                                              },
                                              controller: thickinsulController1,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '12ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode119.hasFocus ||
                                                          thickinsulController1
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode120.requestFocus();
                                              minithickinsul();
                                              object.thickinsul4 = value;

                                              object.thickinsul4 =
                                                  thickinsulController4.text;
                                            });
                                          },
                                          focusNode: focusNode120,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul4 = value;
                                          },
                                          controller: thickinsulController4,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '9ч',
                                            hintText: '9ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_right,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 8,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'мин: ${thickinsulController.text}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_left,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode121.requestFocus();
                                              minithickinsul();
                                              object.thickinsul2 = value;
                                              object.thickinsul2 =
                                                  thickinsulController2.text;
                                            });
                                          },
                                          focusNode: focusNode121,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul2 = value;
                                          },
                                          controller: thickinsulController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '3ч',
                                            hintText: '3ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode130.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul3 = value;
                                                  object.thickinsul3 =
                                                      thickinsulController3
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode130,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul3 = value;
                                              },
                                              controller: thickinsulController3,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '6ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode130.hasFocus ||
                                                          thickinsulController3
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Толщина ИП (изм№2)',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              thickinsulController5.clear();
                                              thickinsulController6.clear();
                                              thickinsulController7.clear();
                                              thickinsulController8.clear();
                                              thickinsulController.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode122.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul5 = value;
                                                  object.thickinsul5 =
                                                      thickinsulController5
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode122,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul5 = value;
                                              },
                                              controller: thickinsulController5,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '12ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode122.hasFocus ||
                                                          thickinsulController5
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode123.requestFocus();
                                              minithickinsul();
                                              object.thickinsul6 = value;
                                              object.thickinsul6 =
                                                  thickinsulController6.text;
                                            });
                                          },
                                          focusNode: focusNode123,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul6 = value;
                                          },
                                          controller: thickinsulController6,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '9ч',
                                            hintText: '9ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_right,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 8,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'мин: ${thickinsulController.text}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_left,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode124.requestFocus();
                                              minithickinsul();
                                              object.thickinsul7 = value;
                                              object.thickinsul7 =
                                                  thickinsulController7.text;
                                            });
                                          },
                                          focusNode: focusNode124,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul7 = value;
                                          },
                                          controller: thickinsulController7,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '3ч',
                                            hintText: '3ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode125.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul8 = value;
                                                  object.thickinsul8 =
                                                      thickinsulController8
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode125,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul8 = value;
                                              },
                                              controller: thickinsulController8,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '6ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode125.hasFocus ||
                                                          thickinsulController8
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Толщина ИП (изм№3)',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              thickinsulController9.clear();
                                              thickinsulController10.clear();
                                              thickinsulController11.clear();
                                              thickinsulController12.clear();
                                              thickinsulController.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode126.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul9 = value;
                                                  object.thickinsul9 =
                                                      thickinsulController9
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode126,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul9 = value;
                                              },
                                              controller: thickinsulController9,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '12ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode126.hasFocus ||
                                                          thickinsulController9
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode127.requestFocus();
                                              minithickinsul();
                                              object.thickinsul10 = value;
                                              object.thickinsul10 =
                                                  thickinsulController10.text;
                                            });
                                          },
                                          focusNode: focusNode127,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul10 = value;
                                          },
                                          controller: thickinsulController10,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '9ч',
                                            hintText: '9ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_right,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 8,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'мин: ${thickinsulController.text}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Icon(
                                          Icons.arrow_left,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode128.requestFocus();
                                              minithickinsul();
                                              object.thickinsul11 = value;
                                              object.thickinsul11 =
                                                  thickinsulController11.text;
                                            });
                                          },
                                          focusNode: focusNode128,
                                          maxLength: 4,
                                          onSaved: (value) {
                                            object.thickinsul11 = value;
                                          },
                                          controller: thickinsulController11,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: '3ч',
                                            hintText: '3ч',
                                            helperText: 'мм',
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_up,
                                          color: Theme.of(context).primaryColor,
                                          size: 55,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Expanded(
                                            child: TextFormField(
                                              onChanged: (String value) {
                                                setState(() {
                                                  focusNode129.requestFocus();
                                                  minithickinsul();
                                                  object.thickinsul12 = value;

                                                  object.thickinsul12 =
                                                      thickinsulController12
                                                          .text;
                                                });
                                              },
                                              focusNode: focusNode129,
                                              maxLength: 4,
                                              onSaved: (value) {
                                                object.thickinsul12 = value;
                                              },
                                              controller:
                                                  thickinsulController12,
                                              style: textStyle,
                                              decoration: InputDecoration(
                                                focusColor: Theme.of(context)
                                                    .primaryColor,
                                                labelStyle: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                labelText: '6ч',
                                                hintText:
                                                    'Введите толщину покрытия',
                                                helperText: 'мм',
                                                prefixIcon: Icon(
                                                  Icons
                                                      .vertical_align_center_sharp,
                                                  color: (focusNode129
                                                              .hasFocus ||
                                                          thickinsulController12
                                                              .text.isNotEmpty)
                                                      ? Theme.of(context)
                                                          .primaryColor
                                                      : Colors.grey,
                                                  size: 32,
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      width: 2),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                          SizedBox(width: 100),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Адгезия ИП',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300),
                            ),
                            GestureDetector(
                              onTap: () {
                                insuladhesController1.clear();
                                insuladhesController2.clear();
                                insuladhesController3.clear();
                                insuladhesController4.clear();
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(187, 30, 16, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Среднее значение: ${insuladhesController4.text}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode16.requestFocus();
                                  sredadg();
                                  insulconditController.text =
                                      object.insulcondit ?? '';
                                  object.insuladhes1 = value;
                                  object.insuladhes1 =
                                      insuladhesController1.text;
                                });
                              },
                              focusNode: focusNode16,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhes1 = value;
                                insulconditController.text =
                                    object.insulcondit ?? '';
                              },
                              controller: insuladhesController1,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№1',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode16.hasFocus ||
                                          insuladhesController1.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode75.requestFocus();
                                  sredadg();
                                  object.insuladhes2 = value;
                                  object.insuladhes2 =
                                      insuladhesController2.text;
                                });
                              },
                              focusNode: focusNode75,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhes2 = value;
                              },
                              controller: insuladhesController2,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№2',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode75.hasFocus ||
                                          insuladhesController2.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode76.requestFocus();
                                  sredadg();
                                  object.insuladhes3 = value;
                                  object.insuladhes3 =
                                      insuladhesController3.text;
                                });
                              },
                              focusNode: focusNode76,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhes3 = value;
                              },
                              controller: insuladhesController3,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№3',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode76.hasFocus ||
                                          insuladhesController3.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Характер разрушения',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  insulcharadhesController1.clear();
                                  insulcharadhesController2.clear();
                                  insulcharadhesController3.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode17,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode17.hasFocus ||
                                          insulcharadhesController1
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№1',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhes1,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode17.requestFocus();
                                  object.insulcharadhes1 = value;
                                  object.insulcharadhes1 =
                                      insulcharadhesController1.text;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode92,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode92.hasFocus ||
                                          insulcharadhesController2
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№2',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhes2,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode92.requestFocus();
                                  object.insulcharadhes2 = value;
                                  object.insulcharadhes2 =
                                      insulcharadhesController2.text;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode91,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode91.hasFocus ||
                                          insulcharadhesController3
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№3',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhes3,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode91.requestFocus();
                                  object.insulcharadhes3 = value;
                                  object.insulcharadhes3 =
                                      insulcharadhesController3.text;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode18,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.thumbs_up_down_outlined,
                            color: focusNode18.hasFocus ||
                                    insulconditController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Состояние покрытия',
                        ),
                        items: _insulcondit.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.insulcondit,
                        onChanged: (String value) {
                          setState(() {
                            focusNode18.requestFocus();
                            object.insulcondit = value;
                            object.insulcondit = insulconditController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode94,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.invert_colors,
                            color: focusNode94.hasFocus ||
                                    vlagaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Наличие влаги под покрытием',
                        ),
                        items: _vlaga.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.vlaga,
                        onChanged: (String value) {
                          setState(() {
                            focusNode94.requestFocus();
                            object.vlaga = value;
                            object.vlaga = vlagaController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode19,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.filter_tilt_shift_sharp,
                            color: focusNode19.hasFocus ||
                                    insuldamageController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Повреждения ИП',
                        ),
                        items: _insuldamage.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.insuldamage,
                        onChanged: (String value) {
                          setState(() {
                            focusNode19.requestFocus();
                            object.insuldamage = value;
                            object.insuldamage = insuldamageController.text;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте ИП №1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  SizedBox(height: 20),
                                  DropdownButtonFormField(
                                    isExpanded: true,
                                    focusNode: focusNode43,
                                    decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.filter_tilt_shift_sharp,
                                          color: focusNode43.hasFocus ||
                                                  charinsuldamageController1
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        labelText: 'Характер повреждения',
                                        suffixIcon: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageIp()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imageDefInsul1 = value;

                                                    print(
                                                        'сделали: ${object.photoinsuldef1.toString()}');

                                                    if (_3formKey.currentState
                                                        .validate()) {
                                                      _3formKey.currentState
                                                          .save();
                                                      if (_imageDefInsul1 !=
                                                          null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/flutter_test';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imageDefInsul1
                                                            .copy(filePath);
                                                        object.photoinsuldef1 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(Icons.camera_alt_sharp,
                                                color: Color.fromRGBO(
                                                    97, 153, 59, 1.0)))),
                                    items:
                                        _charinsuldamage1.map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    style: textStyle,
                                    value: object.charinsuldamage1,
                                    onChanged: (String value) {
                                      setState(() {
                                        focusNode43.requestFocus();
                                        object.charinsuldamage1 = value;
                                        object.charinsuldamage1 =
                                            charinsuldamageController1.text;
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photoinsuldef1)),
                                              );
                                            },
                                            child: Center(
                                              child:
                                                  object.photoinsuldef1 != null
                                                      ? Image.file(
                                                          File(object
                                                              .photoinsuldef1),
                                                          fit: BoxFit.cover,
                                                          alignment:
                                                              Alignment.center,
                                                          width: 100,
                                                          height: 100,
                                                        )
                                                      : Center(
                                                          child: Image.asset(
                                                            'assets/images/defaultimage.png',
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №1',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourinsuldamageController1
                                                  .clear();
                                              locrasstinsuldamageController1
                                                  .clear();
                                              sizelengthinsuldamageController1
                                                  .clear();
                                              sizewidthinsuldamageController1
                                                  .clear();
                                              sizedepthinsuldamageController1
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode34.requestFocus();
                                              object.lochourinsuldamage1 =
                                                  value;
                                              object.lochourinsuldamage1 =
                                                  lochourinsuldamageController1
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode34,
                                          maxLength: 2,
                                          onSaved: (value) {
                                            object.lochourinsuldamage1 = value;
                                          },
                                          controller:
                                              lochourinsuldamageController1,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Час',
                                            hintText: '1-12',
                                            helperText: 'ЧАС',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode34.hasFocus ||
                                                      lochourinsuldamageController1
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     lochourinsuldamageController1.clear();

                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode60.requestFocus();
                                              object.locrasstinsuldamage1 =
                                                  value;
                                              object.locrasstinsuldamage1 =
                                                  locrasstinsuldamageController1
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode60,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.locrasstinsuldamage1 = value;
                                          },
                                          controller:
                                              locrasstinsuldamageController1,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'от Шва',
                                            hintText: 'по ХГ',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode60.hasFocus ||
                                                      locrasstinsuldamageController1
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     locrasstinsuldamageController1.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode72.requestFocus();
                                              object.sizelengthinsuldamage1 =
                                                  value;
                                              object.sizelengthinsuldamage1 =
                                                  sizelengthinsuldamageController1
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode72,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizelengthinsuldamage1 =
                                                value;
                                          },
                                          controller:
                                              sizelengthinsuldamageController1,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Длина',
                                            hintText: 'L',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode72.hasFocus ||
                                                      sizelengthinsuldamageController1
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizelengthinsuldamageController1.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode63.requestFocus();
                                              object.sizewidthinsuldamage1 =
                                                  value;
                                              object.sizewidthinsuldamage1 =
                                                  sizewidthinsuldamageController1
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode63,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizewidthinsuldamage1 =
                                                value;
                                          },
                                          controller:
                                              sizewidthinsuldamageController1,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Ширина',
                                            hintText: 'W',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode63.hasFocus ||
                                                      sizewidthinsuldamageController1
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizewidthinsuldamageController1.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode66.requestFocus();
                                              object.sizedepthinsuldamage1 =
                                                  value;
                                              object.sizedepthinsuldamage1 =
                                                  sizedepthinsuldamageController1
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode66,
                                          maxLength: 3,
                                          onSaved: (value) {
                                            object.sizedepthinsuldamage1 =
                                                value;
                                          },
                                          controller:
                                              sizedepthinsuldamageController1,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Глубина',
                                            hintText: 'H',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode66.hasFocus ||
                                                      sizedepthinsuldamageController1
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizedepthinsuldamageController1.clear();
                                            //   },
                                            //   child: Padding(
                                            //     padding: EdgeInsets.all(2),
                                            //     child: Icon(
                                            //       Icons.delete_outline,
                                            //       color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //     ),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте ИП №2',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  SizedBox(height: 20),
                                  DropdownButtonFormField(
                                    isExpanded: true,
                                    focusNode: focusNode20,
                                    decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.filter_tilt_shift_sharp,
                                          color: focusNode20.hasFocus ||
                                                  charinsuldamageController2
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        labelText: 'Характер повреждения',
                                        suffixIcon: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageIp()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imageDefInsul2 = value;

                                                    print(
                                                        'сделали: ${object.photoinsuldef2.toString()}');

                                                    if (_3formKey.currentState
                                                        .validate()) {
                                                      _3formKey.currentState
                                                          .save();
                                                      if (_imageDefInsul2 !=
                                                          null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/flutter_test';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imageDefInsul2
                                                            .copy(filePath);
                                                        object.photoinsuldef2 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(Icons.camera_alt_sharp,
                                                color: Color.fromRGBO(
                                                    97, 153, 59, 1.0)))),
                                    items:
                                        _charinsuldamage2.map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    style: textStyle,
                                    value: object.charinsuldamage2,
                                    onChanged: (String value) {
                                      setState(() {
                                        focusNode20.requestFocus();
                                        object.charinsuldamage2 = value;
                                        object.charinsuldamage2 =
                                            charinsuldamageController2.text;
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photoinsuldef2)),
                                              );
                                            },
                                            child: Center(
                                              child:
                                                  object.photoinsuldef2 != null
                                                      ? Image.file(
                                                          File(object
                                                              .photoinsuldef2),
                                                          fit: BoxFit.cover,
                                                          alignment:
                                                              Alignment.center,
                                                          width: 100,
                                                          height: 100,
                                                        )
                                                      : Center(
                                                          child: Image.asset(
                                                            'assets/images/defaultimage.png',
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №2',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourinsuldamageController2
                                                  .clear();
                                              locrasstinsuldamageController2
                                                  .clear();
                                              sizelengthinsuldamageController2
                                                  .clear();
                                              sizewidthinsuldamageController2
                                                  .clear();
                                              sizedepthinsuldamageController2
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode42.requestFocus();
                                              object.lochourinsuldamage2 =
                                                  value;
                                              object.lochourinsuldamage2 =
                                                  lochourinsuldamageController2
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode42,
                                          maxLength: 2,
                                          onSaved: (value) {
                                            object.lochourinsuldamage2 = value;
                                          },
                                          controller:
                                              lochourinsuldamageController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Час',
                                            hintText: '1-12',
                                            helperText: 'ЧАС',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode42.hasFocus ||
                                                      lochourinsuldamageController2
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     lochourinsuldamageController2.clear();

                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode61.requestFocus();
                                              object.locrasstinsuldamage2 =
                                                  value;
                                              object.locrasstinsuldamage2 =
                                                  locrasstinsuldamageController2
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode61,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.locrasstinsuldamage2 = value;
                                          },
                                          controller:
                                              locrasstinsuldamageController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'от Шва',
                                            hintText: 'по ХГ',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode61.hasFocus ||
                                                      locrasstinsuldamageController2
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     locrasstinsuldamageController2.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode73.requestFocus();
                                              object.sizelengthinsuldamage2 =
                                                  value;
                                              object.sizelengthinsuldamage2 =
                                                  sizelengthinsuldamageController2
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode73,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizelengthinsuldamage2 =
                                                value;
                                          },
                                          controller:
                                              sizelengthinsuldamageController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Длина',
                                            hintText: 'L',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode73.hasFocus ||
                                                      sizelengthinsuldamageController2
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizelengthinsuldamageController2.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode64.requestFocus();
                                              object.sizewidthinsuldamage2 =
                                                  value;
                                              object.sizewidthinsuldamage2 =
                                                  sizewidthinsuldamageController2
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode64,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizewidthinsuldamage2 =
                                                value;
                                          },
                                          controller:
                                              sizewidthinsuldamageController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Ширина',
                                            hintText: 'W',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode64.hasFocus ||
                                                      sizewidthinsuldamageController2
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizewidthinsuldamageController2.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode67.requestFocus();
                                              object.sizedepthinsuldamage2 =
                                                  value;
                                              object.sizedepthinsuldamage2 =
                                                  sizedepthinsuldamageController2
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode67,
                                          maxLength: 3,
                                          onSaved: (value) {
                                            object.sizedepthinsuldamage2 =
                                                value;
                                          },
                                          controller:
                                              sizedepthinsuldamageController2,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Глубина',
                                            hintText: 'H',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode67.hasFocus ||
                                                      sizedepthinsuldamageController2
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizedepthinsuldamageController2.clear();
                                            //   },
                                            //   child: Padding(
                                            //     padding: EdgeInsets.all(2),
                                            //     child: Icon(
                                            //       Icons.delete_outline,
                                            //       color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //     ),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Данные о дефекте ИП №3',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      )),
                                  SizedBox(height: 20),
                                  DropdownButtonFormField(
                                    isExpanded: true,
                                    focusNode: focusNode35,
                                    decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.filter_tilt_shift_sharp,
                                          color: focusNode35.hasFocus ||
                                                  charinsuldamageController3
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        labelText: 'Характер повреждения',
                                        suffixIcon: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageIp()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imageDefInsul3 = value;

                                                    print(
                                                        'сделали: ${object.photoinsuldef3.toString()}');

                                                    if (_3formKey.currentState
                                                        .validate()) {
                                                      _3formKey.currentState
                                                          .save();
                                                      if (_imageDefInsul3 !=
                                                          null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/flutter_test';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imageDefInsul3
                                                            .copy(filePath);
                                                        object.photoinsuldef3 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(Icons.camera_alt_sharp,
                                                color: Color.fromRGBO(
                                                    97, 153, 59, 1.0)))),
                                    items:
                                        _charinsuldamage3.map((String value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    style: textStyle,
                                    value: object.charinsuldamage3,
                                    onChanged: (String value) {
                                      setState(() {
                                        focusNode35.requestFocus();
                                        object.charinsuldamage3 = value;
                                        object.charinsuldamage3 =
                                            charinsuldamageController3.text;
                                      });
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 100,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageScreen(
                                                            imagePath: object
                                                                .photoinsuldef3)),
                                              );
                                            },
                                            child: Center(
                                              child:
                                                  object.photoinsuldef3 != null
                                                      ? Image.file(
                                                          File(object
                                                              .photoinsuldef3),
                                                          fit: BoxFit.cover,
                                                          alignment:
                                                              Alignment.center,
                                                          width: 100,
                                                          height: 100,
                                                        )
                                                      : Center(
                                                          child: Image.asset(
                                                            'assets/images/defaultimage.png',
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Расположение дефекта №3',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontWeight:
                                                        FontWeight.w300),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              lochourinsuldamageController3
                                                  .clear();
                                              locrasstinsuldamageController3
                                                  .clear();
                                              sizelengthinsuldamageController3
                                                  .clear();
                                              sizewidthinsuldamageController3
                                                  .clear();
                                              sizedepthinsuldamageController3
                                                  .clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode69.requestFocus();
                                              object.lochourinsuldamage3 =
                                                  value;
                                              object.lochourinsuldamage3 =
                                                  lochourinsuldamageController3
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode69,
                                          maxLength: 2,
                                          onSaved: (value) {
                                            object.lochourinsuldamage3 = value;
                                          },
                                          controller:
                                              lochourinsuldamageController3,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Час',
                                            hintText: '1-12',
                                            helperText: 'ЧАС',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode69.hasFocus ||
                                                      lochourinsuldamageController3
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     lochourinsuldamageController3.clear();

                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode62.requestFocus();
                                              object.locrasstinsuldamage3 =
                                                  value;
                                              object.locrasstinsuldamage3 =
                                                  locrasstinsuldamageController3
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode62,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.locrasstinsuldamage3 = value;
                                          },
                                          controller:
                                              locrasstinsuldamageController3,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'от Шва',
                                            hintText: 'по ХГ',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode62.hasFocus ||
                                                      locrasstinsuldamageController3
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     locrasstinsuldamageController3.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode74.requestFocus();
                                              object.sizelengthinsuldamage3 =
                                                  value;
                                              object.sizelengthinsuldamage3 =
                                                  sizelengthinsuldamageController3
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode74,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizelengthinsuldamage3 =
                                                value;
                                          },
                                          controller:
                                              sizelengthinsuldamageController3,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Длина',
                                            hintText: 'L',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode74.hasFocus ||
                                                      sizelengthinsuldamageController3
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizelengthinsuldamageController3.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode65.requestFocus();
                                              object.sizewidthinsuldamage3 =
                                                  value;
                                              object.sizewidthinsuldamage3 =
                                                  sizewidthinsuldamageController3
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode65,
                                          maxLength: 5,
                                          onSaved: (value) {
                                            object.sizewidthinsuldamage3 =
                                                value;
                                          },
                                          controller:
                                              sizewidthinsuldamageController3,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Ширина',
                                            hintText: 'W',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode65.hasFocus ||
                                                      sizewidthinsuldamageController3
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizewidthinsuldamageController3.clear();
                                            //   },
                                            //   child: Icon(
                                            //     Icons.delete_outline,
                                            //     color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Expanded(
                                        child: TextFormField(
                                          onChanged: (String value) {
                                            setState(() {
                                              focusNode68.requestFocus();
                                              object.sizedepthinsuldamage3 =
                                                  value;
                                              object.sizedepthinsuldamage3 =
                                                  sizedepthinsuldamageController3
                                                      .text;
                                            });
                                          },
                                          focusNode: focusNode68,
                                          maxLength: 3,
                                          onSaved: (value) {
                                            object.sizedepthinsuldamage3 =
                                                value;
                                          },
                                          controller:
                                              sizedepthinsuldamageController3,
                                          style: textStyle,
                                          decoration: InputDecoration(
                                            focusColor:
                                                Theme.of(context).primaryColor,
                                            labelStyle: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            labelText: 'Глубина',
                                            hintText: 'H',
                                            helperText: 'мм',
                                            prefixIcon: Icon(
                                              Icons.location_searching_sharp,
                                              color: focusNode68.hasFocus ||
                                                      sizedepthinsuldamageController3
                                                          .text.isNotEmpty
                                                  ? Theme.of(context)
                                                      .primaryColor
                                                  : Colors.grey,
                                              size: 32,
                                            ),
                                            // suffixIcon: GestureDetector(
                                            //   onTap: () {
                                            //     sizedepthinsuldamageController3.clear();
                                            //   },
                                            //   child: Padding(
                                            //     padding: EdgeInsets.all(2),
                                            //     child: Icon(
                                            //       Icons.delete_outline,
                                            //       color: Color.fromRGBO(187, 30, 16, 1.0),
                                            //     ),
                                            //   ),
                                            // ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.grey, width: 2),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  width: 2),
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm3(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _4formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ДАННЫЕ О РЕМОНТЕ ИП',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode95,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.assignment_late_outlined,
                            color: focusNode95.hasFocus ||
                                    zaklController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Заключение и рекомендации',
                        ),
                        items: _zakl.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.zakl,
                        onChanged: (String value) {
                          setState(() {
                            focusNode95.requestFocus();
                            object.zakl = value;
                            object.zakl = zaklController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode23,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          prefixIcon: Icon(
                            Icons.view_headline,
                            color: focusNode23.hasFocus ||
                                    typeinsulrestController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Конструкция отремонтированного покрытия',
                        ),
                        items: _typeinsulrest.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.typeinsulrest,
                        onChanged: (String value) {
                          setState(() {
                            focusNode23.requestFocus();
                            object.typeinsulrest = value;
                            typeinsulrestController.text =
                                object.typeinsulrest ?? '';
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        focusNode: focusNode112,
                        onChanged: (String value) {
                          setState(() {
                            focusNode112.requestFocus();
                            object.metrrest = value;
                            object.metrrest = metrrestController.text;
                          });
                        },
                        maxLength: 3,
                        onSaved: (value) {
                          object.metrrest = value;
                        },
                        controller: metrrestController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Протяженность ремонта ИП',
                          hintText: 'Введите значение',
                          helperText: 'М',
                          prefixIcon: Icon(
                            Icons.straighten_rounded,
                            color: focusNode112.hasFocus ||
                                    metrrestController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              metrrestController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Адгезия ИП',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300),
                            ),
                            GestureDetector(
                              onTap: () {
                                insuladhesrestController1.clear();
                                insuladhesrestController2.clear();
                                insuladhesrestController3.clear();
                                insuladhesrestController.clear();
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(187, 30, 16, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Среднее значение: ${insuladhesrestController.text}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode143.requestFocus();
                                  sredadgrest();
                                  object.insuladhesrest1 = value;
                                  object.insuladhesrest1 =
                                      insuladhesrestController1.text;
                                });
                              },
                              focusNode: focusNode143,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhesrest1 = value;
                              },
                              controller: insuladhesrestController1,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№1',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode143.hasFocus ||
                                          insuladhesrestController1
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode144.requestFocus();
                                  sredadgrest();
                                  object.insuladhesrest2 = value;
                                  object.insuladhesrest2 =
                                      insuladhesrestController2.text;
                                });
                              },
                              focusNode: focusNode144,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhesrest2 = value;
                              },
                              controller: insuladhesrestController2,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№2',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode144.hasFocus ||
                                          insuladhesrestController2
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode145.requestFocus();
                                  sredadgrest();
                                  object.insuladhesrest3 = value;
                                  object.insuladhesrest3 =
                                      insuladhesrestController3.text;
                                });
                              },
                              focusNode: focusNode145,
                              maxLength: 4,
                              onSaved: (value) {
                                object.insuladhesrest3 = value;
                              },
                              controller: insuladhesrestController3,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'изм.№3',
                                hintText: 'Н/см',
                                helperText: 'Н/см',
                                prefixIcon: Icon(
                                  Icons.compress_sharp,
                                  color: focusNode145.hasFocus ||
                                          insuladhesrestController3
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Характер разрушения',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  insulcharadhesrestController1.clear();
                                  insulcharadhesrestController2.clear();
                                  insulcharadhesrestController3.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode146,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode146.hasFocus ||
                                          insulcharadhesrestController1
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№1',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhesrest1,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode146.requestFocus();
                                  object.insulcharadhesrest1 = value;
                                  object.insulcharadhesrest1 =
                                      insulcharadhesrestController1.text;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode147,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode147.hasFocus ||
                                          insulcharadhesrestController2
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№2',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhesrest2,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode147.requestFocus();
                                  object.insulcharadhesrest2 = value;
                                  object.insulcharadhesrest2 =
                                      insulcharadhesrestController2.text;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              focusNode: focusNode148,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                                prefixIcon: Icon(
                                  Icons.ssid_chart_sharp,
                                  color: focusNode148.hasFocus ||
                                          insulcharadhesrestController3
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                labelText: 'изм.№3',
                              ),
                              items: _insulcharadhes.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: textStyle,
                              value: object.insulcharadhesrest3,
                              onChanged: (String value) {
                                setState(() {
                                  focusNode148.requestFocus();
                                  object.insulcharadhesrest3 = value;
                                  object.insulcharadhesrest3 =
                                      insulcharadhesrestController3.text;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Толщина ИП (изм№1)',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300),
                            ),
                            GestureDetector(
                              onTap: () {
                                thickinsulrestController1.clear();
                                thickinsulrestController2.clear();
                                thickinsulrestController3.clear();
                                thickinsulrestController4.clear();
                                thickinsulrestController.clear();
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(187, 30, 16, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode131.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest1 = value;
                                  object.thickinsulrest1 =
                                      thickinsulrestController1.text;
                                });
                              },
                              focusNode: focusNode131,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest1 = value;
                              },
                              controller: thickinsulrestController1,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 12ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode131.hasFocus ||
                                          thickinsulrestController1
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode132.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest4 = value;
                                  object.thickinsulrest4 =
                                      thickinsulrestController4.text;
                                });
                              },
                              focusNode: focusNode132,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest4 = value;
                              },
                              controller: thickinsulrestController4,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '9ч',
                                hintText: '9ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 8,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'мин: ${thickinsulrestController.text}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_left,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode133.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest2 = value;
                                  object.thickinsulrest2 =
                                      thickinsulrestController2.text;
                                });
                              },
                              focusNode: focusNode133,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest2 = value;
                              },
                              controller: thickinsulrestController2,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '3ч',
                                hintText: '3ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode134.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest3 = value;
                                  object.thickinsulrest3 =
                                      thickinsulrestController3.text;
                                });
                              },
                              focusNode: focusNode134,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest3 = value;
                              },
                              controller: thickinsulrestController3,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 6ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode134.hasFocus ||
                                          thickinsulrestController3
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Толщина ИП (изм№2)',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  thickinsulrestController5.clear();
                                  thickinsulrestController6.clear();
                                  thickinsulrestController7.clear();
                                  thickinsulrestController8.clear();
                                  thickinsulrestController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode135.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest5 = value;
                                  object.thickinsulrest5 =
                                      thickinsulrestController5.text;
                                });
                              },
                              focusNode: focusNode135,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest5 = value;
                              },
                              controller: thickinsulrestController5,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 12ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode135.hasFocus ||
                                          thickinsulrestController5
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode136.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest6 = value;
                                  object.thickinsulrest6 =
                                      thickinsulrestController6.text;
                                });
                              },
                              focusNode: focusNode136,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest6 = value;
                              },
                              controller: thickinsulrestController6,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '9ч',
                                hintText: '9ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 8,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'мин: ${thickinsulrestController.text}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_left,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode137.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest7 = value;
                                  object.thickinsulrest7 =
                                      thickinsulrestController7.text;
                                });
                              },
                              focusNode: focusNode137,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest7 = value;
                              },
                              controller: thickinsulrestController7,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '3ч',
                                hintText: '3ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode138.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest8 = value;
                                  object.thickinsulrest8 =
                                      thickinsulrestController8.text;
                                });
                              },
                              focusNode: focusNode138,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest8 = value;
                              },
                              controller: thickinsulrestController8,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 6ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode138.hasFocus ||
                                          thickinsulrestController8
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Толщина ИП (изм№3)',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  thickinsulrestController9.clear();
                                  thickinsulrestController10.clear();
                                  thickinsulrestController11.clear();
                                  thickinsulrestController12.clear();
                                  thickinsulrestController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode139.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest9 = value;
                                  object.thickinsulrest9 =
                                      thickinsulrestController9.text;
                                });
                              },
                              focusNode: focusNode139,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest9 = value;
                              },
                              controller: thickinsulrestController9,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 12ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode139.hasFocus ||
                                          thickinsulrestController9
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode140.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest10 = value;
                                  object.thickinsulrest10 =
                                      thickinsulrestController10.text;
                                });
                              },
                              focusNode: focusNode140,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest10 = value;
                              },
                              controller: thickinsulrestController10,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '9ч',
                                hintText: '9ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 8,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'мин: ${thickinsulrestController.text}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_left,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode141.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest11 = value;
                                  object.thickinsulrest11 =
                                      thickinsulrestController11.text;
                                });
                              },
                              focusNode: focusNode141,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest11 = value;
                              },
                              controller: thickinsulrestController11,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: '3ч',
                                hintText: '3ч',
                                helperText: 'мм',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Center(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: Theme.of(context).primaryColor,
                              size: 55,
                            ),
                          ),
                          Center(
                            child: TextFormField(
                              onChanged: (String value) {
                                setState(() {
                                  focusNode142.requestFocus();
                                  minithickinsulrest();
                                  object.thickinsulrest12 = value;
                                  object.thickinsulrest12 =
                                      thickinsulrestController12.text;
                                });
                              },
                              focusNode: focusNode142,
                              maxLength: 4,
                              onSaved: (value) {
                                object.thickinsulrest12 = value;
                              },
                              controller: thickinsulrestController12,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Толщина ИП 6ч',
                                hintText: 'Введите толщину покрытия',
                                helperText: 'мм',
                                prefixIcon: Icon(
                                  Icons.vertical_align_center_sharp,
                                  color: (focusNode142.hasFocus ||
                                          thickinsulrestController12
                                              .text.isNotEmpty)
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode26,
                        onChanged: (String value) {
                          setState(() {
                            focusNode26.requestFocus();
                            object.contininsulrest = value;
                            object.contininsulrest =
                                contininsulrestController.text;
                          });
                        },
                        maxLength: 5,
                        onSaved: (value) {
                          object.contininsulrest = value;
                        },
                        controller: contininsulrestController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Отсутствие пробоя при напряжении',
                          hintText: 'Введите величину напряжения',
                          helperText: 'кВ',
                          prefixIcon: Icon(
                            Icons.flash_on,
                            color: focusNode26.hasFocus ||
                                    contininsulrestController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              napr();
                            },
                            child: const Icon(
                              Icons.calculate_sharp,
                              color: Colors.green,
                              size: 44,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm4(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _5formKey,
                  child: ListView(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ПАРАМЕТРЫ СРЕДЫ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      const SizedBox(height: 20),
                      TextFormField(
                        focusNode: focusNode40,
                        onChanged: (String value) {
                          setState(() {
                            focusNode40.requestFocus();
                            object.tempair = value;
                            object.tempair = tempairController.text;
                          });
                        },
                        maxLength: 3,
                        onSaved: (value) {
                          object.tempair = value;
                        },
                        controller: tempairController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Температура воздуха',
                          hintText: 'Введите температуру окружающего воздуха',
                          helperText: 'С°',
                          prefixIcon: Icon(
                            Icons.wb_sunny,
                            color: focusNode40.hasFocus ||
                                    tempairController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tempairController.clear();
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode39,
                        onChanged: (String value) {
                          setState(() {
                            focusNode39.requestFocus();
                            object.tempsurf = value;
                            object.tempsurf = tempsurfController.text;
                          });
                        },
                        maxLength: 3,
                        onSaved: (value) {
                          object.tempsurf = value;
                        },
                        controller: tempsurfController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Температура поверхности',
                          hintText:
                              'Введите температуру окрашиваемой поверхности',
                          helperText: 'С°',
                          prefixIcon: Icon(
                            Icons.touch_app,
                            color: focusNode39.hasFocus ||
                                    tempsurfController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tempsurfController.clear();
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode38,
                        onChanged: (String value) {
                          setState(() {
                            focusNode38.requestFocus();
                            object.relathumid = value;
                            object.relathumid = relathumidController.text;
                          });
                        },
                        maxLength: 2,
                        onSaved: (value) {
                          object.relathumid = value;
                        },
                        controller: relathumidController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Относительная влажность',
                          hintText: 'Введите относительную влажность воздуха',
                          helperText: '%',
                          prefixIcon: Icon(
                            Icons.opacity,
                            color: focusNode38.hasFocus ||
                                    relathumidController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              relathumidController.clear();
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode37,
                        onChanged: (String value) {
                          setState(() {
                            focusNode37.requestFocus();
                            object.dewpoint = value;
                            object.dewpoint = dewpointController.text;
                          });
                        },
                        maxLength: 6,
                        onSaved: (value) {
                          object.dewpoint = value;
                        },
                        controller: dewpointController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Точка росы',
                          hintText: 'Введите или расчитайте температуру->',
                          helperText: 'С°',
                          prefixIcon: Icon(
                            Icons.bubble_chart,
                            color: focusNode37.hasFocus ||
                                    dewpointController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              calcdewpoint();
                            },
                            child: const Icon(
                              Icons.calculate_sharp,
                              color: Colors.green,
                              size: 44,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          TextFormField(
                            focusNode: focusNode36,
                            onChanged: (String value) {
                              setState(() {
                                focusNode36.requestFocus();
                                object.difftemp = value;
                                object.difftemp = difftempController.text;
                              });
                            },
                            maxLength: 6,
                            onSaved: (value) {
                              object.difftemp = value;
                            },
                            controller: difftempController,
                            style: textStyle,
                            decoration: InputDecoration(
                              labelText: 'Разница температур',
                              hintText: 'Введите или расчитайте->',
                              helperText: 'С°',
                              prefixIcon: Icon(
                                Icons.change_history,
                                color: focusNode36.hasFocus ||
                                        difftempController.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  double dewpoint =
                                      double.tryParse(dewpointController.text);
                                  double temperature2 =
                                      double.tryParse(tempsurfController.text);

                                  if (dewpoint != null &&
                                      temperature2 != null) {
                                    double difftemp = temperature2 - dewpoint;
                                    object.difftemp =
                                        difftemp.toStringAsFixed(2);
                                    // difftempController.text = object.difftemp;
                                    setState(() {
                                      difftempController.text = object.difftemp;
                                    });
                                  }
                                },
                                child: const Icon(
                                  Icons.calculate_sharp,
                                  color: Colors.green,
                                  size: 44,
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 2),
                              ),
                              labelStyle: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          Container(
                            child: difftempController.text != null &&
                                    tempairController.text != null &&
                                    relathumidController.text != null &&
                                    double.tryParse(difftempController.text
                                            .replaceAll(',', '.')) !=
                                        null
                                ? (() {
                                    double difftemp = double.tryParse(
                                        difftempController.text
                                            .replaceAll(',', '.'));
                                    double tempair = double.tryParse(
                                        tempairController.text
                                            .replaceAll(',', '.'));
                                    double relathumid = double.tryParse(
                                        relathumidController.text
                                            .replaceAll(',', '.'));

                                    if (difftemp != null &&
                                        tempair != null &&
                                        relathumid != null) {
                                      if (difftemp >= 3.0 &&
                                          tempair >= 5.0 &&
                                          tempair <= 45.0 &&
                                          relathumid <= 85.0) {
                                        return Text(
                                          'ИЗОЛЯЦИЯ РАЗРЕШЕНА',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      } else {
                                        return Text(
                                          'ИЗОЛЯЦИЯ ЗАПРЕЩЕНА',
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        );
                                      }
                                    } else {
                                      return Text(
                                        'Некорректные значения',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      );
                                    }
                                  })()
                                : Text(
                                    'ИЗОЛЯЦИЯ ЗАПРЕЩЕНА',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () => saveForm5(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _6formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ДАННЫЕ О ПРИБОРАХ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Толщиномер покрытий',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w300),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  tickinsulmeterController.clear();
                                  tickinsulmeternumbController.clear();
                                  tickinsulmeterdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode27,
                        onChanged: (String value) {
                          setState(() {
                            focusNode27.requestFocus();
                            object.tickinsulmeter = value;
                            object.tickinsulmeter =
                                tickinsulmeterController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.tickinsulmeter = value;
                        },
                        controller: tickinsulmeterController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Толщиномер покрытий',
                          hintText: 'Введите название',
                          // helperText: '...',
                          prefixIcon: Icon(
                            Icons.speaker_phone,
                            color: focusNode27.hasFocus ||
                                    tickinsulmeterController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode101,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode101.requestFocus();
                                    object.tickinsulmeternumb = value;
                                    object.tickinsulmeternumb =
                                        tickinsulmeternumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.tickinsulmeternumb = value;
                                },
                                controller: tickinsulmeternumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.speaker_phone,
                                    color: focusNode101.hasFocus ||
                                            tickinsulmeternumbController
                                                .text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode102,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            tickinsulmeterdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.tickinsulmeterdate =
                                                tickinsulmeterdateController
                                                    .text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode102.hasFocus ||
                                                tickinsulmeterdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        tickinsulmeterdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Толщиномер металла',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  tickmetallmeterController.clear();
                                  tickmetallmeternumbController.clear();
                                  tickmetallmeterdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode28,
                        onChanged: (String value) {
                          setState(() {
                            focusNode28.requestFocus();
                            object.tickmetallmeter = value;
                            object.tickmetallmeter =
                                tickmetallmeterController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.tickmetallmeter = value;
                        },
                        controller: tickmetallmeterController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Толщиномер металла',
                          hintText: 'Введите название',
                          prefixIcon: Icon(
                            Icons.speaker_phone,
                            color: focusNode28.hasFocus ||
                                    tickmetallmeterController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode103,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode103.requestFocus();
                                    object.tickmetallmeternumb = value;
                                    object.tickmetallmeternumb =
                                        tickmetallmeternumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.tickmetallmeternumb = value;
                                },
                                controller: tickmetallmeternumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.speaker_phone,
                                    color: focusNode103.hasFocus ||
                                            tickmetallmeternumbController
                                                .text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode104,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            tickmetallmeterdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.tickmetallmeterdate =
                                                tickmetallmeterdateController
                                                    .text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode104.hasFocus ||
                                                tickmetallmeterdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        tickmetallmeterdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Адгезиметр',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  adhesmeterController.clear();
                                  adhesmeternumbController.clear();
                                  adhesmeterdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode29,
                        onChanged: (String value) {
                          setState(() {
                            focusNode29.requestFocus();
                            object.adhesmeter = value;
                            object.adhesmeter = adhesmeterController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.adhesmeter = value;
                        },
                        controller: adhesmeterController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Адгезиметр',
                          hintText: 'Введите название',
                          prefixIcon: Icon(
                            Icons.broken_image,
                            color: focusNode29.hasFocus ||
                                    adhesmeterController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode105,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode105.requestFocus();
                                    object.adhesmeternumb = value;
                                    object.adhesmeternumb =
                                        adhesmeternumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.adhesmeternumb = value;
                                },
                                controller: adhesmeternumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.broken_image,
                                    color: focusNode105.hasFocus ||
                                            adhesmeternumbController
                                                .text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode106,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            adhesmeterdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.adhesmeterdate =
                                                adhesmeterdateController.text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode106.hasFocus ||
                                                adhesmeterdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        adhesmeterdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Искровой дефектоскоп',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  continmeterController.clear();
                                  continmeternumbController.clear();
                                  continmeterdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode30,
                        onChanged: (String value) {
                          setState(() {
                            focusNode30.requestFocus();
                            object.continmeter = value;
                            object.continmeter = continmeterController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.continmeter = value;
                        },
                        controller: continmeterController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Искровой дефектоскоп',
                          hintText: 'Введите название',
                          prefixIcon: Icon(
                            Icons.flash_on,
                            color: focusNode30.hasFocus ||
                                    continmeterController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode107,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode107.requestFocus();
                                    object.continmeternumb = value;
                                    object.continmeternumb =
                                        continmeternumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.continmeternumb = value;
                                },
                                controller: continmeternumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.flash_on,
                                    color: focusNode107.hasFocus ||
                                            continmeternumbController
                                                .text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode108,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            continmeterdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.continmeterdate =
                                                continmeterdateController.text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode108.hasFocus ||
                                                continmeterdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        continmeterdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Комплект ВИК',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setvikController.clear();
                                  setviknumbController.clear();
                                  setvikdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode31,
                        onChanged: (String value) {
                          setState(() {
                            focusNode31.requestFocus();
                            object.setvik = value;
                            object.setvik = setvikController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.setvik = value;
                        },
                        controller: setvikController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Комплект ВИК',
                          hintText: 'Введите наименование',
                          prefixIcon: Icon(
                            Icons.business_center,
                            color: focusNode31.hasFocus ||
                                    setvikController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode109,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode109.requestFocus();
                                    object.setviknumb = value;
                                    object.setviknumb =
                                        setviknumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.setviknumb = value;
                                },
                                controller: setviknumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.business_center,
                                    color: focusNode109.hasFocus ||
                                            setviknumbController.text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode110,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            setvikdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.setvikdate =
                                                setvikdateController.text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode110.hasFocus ||
                                                setvikdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        setvikdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Мультиметр',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w300),
                              ),
                              GestureDetector(
                                onTap: () {
                                  multimeterController.clear();
                                  multimeternumbController.clear();
                                  multimeterdateController.clear();
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode149,
                        onChanged: (String value) {
                          setState(() {
                            focusNode149.requestFocus();
                            object.multimeter = value;
                            object.multimeter = multimeterController.text;
                          });
                        },
                        maxLength: 30,
                        onSaved: (value) {
                          object.multimeter = value;
                        },
                        controller: multimeterController,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Мультиметр',
                          hintText: 'Введите наименование',
                          prefixIcon: Icon(
                            Icons.business_center,
                            color: focusNode149.hasFocus ||
                                    multimeterController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                focusNode: focusNode150,
                                onChanged: (String value) {
                                  setState(() {
                                    focusNode150.requestFocus();
                                    object.multimeternumb = value;
                                    object.multimeternumb =
                                        multimeternumbController.text;
                                  });
                                },
                                maxLength: 30,
                                onSaved: (value) {
                                  object.multimeternumb = value;
                                },
                                controller: multimeternumbController,
                                style: textStyle,
                                decoration: InputDecoration(
                                  focusColor: Theme.of(context).primaryColor,
                                  labelStyle: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  labelText: '№',
                                  hintText: '№',
                                  helperText: '№....',
                                  prefixIcon: Icon(
                                    Icons.business_center,
                                    color: focusNode150.hasFocus ||
                                            multimeternumbController
                                                .text.isNotEmpty
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    size: 32,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: IconButton(
                                      focusNode: focusNode151,
                                      onPressed: () async {
                                        DateTime currentDay = DateTime.now();
                                        DateTime initialDay = currentDay
                                            .subtract(Duration(days: 3 * 365));
                                        DateTime selectedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: initialDay,
                                          lastDate: DateTime.now(),
                                          locale: const Locale("ru",
                                              "RU"), // Установите локаль на русский язык
                                        );

                                        if (selectedDate != null) {
                                          setState(() {
                                            multimeterdateController.text =
                                                DateFormat('dd.MM.yyyy')
                                                    .format(selectedDate);
                                            object.multimeterdate =
                                                multimeterdateController.text;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: focusNode151.hasFocus ||
                                                multimeterdateController
                                                    .text.isNotEmpty
                                            ? Theme.of(context).primaryColor
                                            : Colors.grey,
                                        size: 32,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        multimeterdateController.text,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm6(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _7formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ДОПОЛНИТЕЛЬНАЯ ИНОФРМАЦИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        maxLength: 1000,
                        onSaved: (value) {
                          object.description = value;
                        },
                        controller: descriptionController,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Дополнительные сведения',
                          suffixIcon: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CameraPageIp()),
                                ).then((value) {
                                  setState(() async {
                                    if (value != null) {
                                      _image = value;

                                      print(
                                          'сделали: ${object.photo.toString()}');

                                      if (_7formKey.currentState.validate()) {
                                        _7formKey.currentState.save();
                                        if (_image != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter_test';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _image.copy(filePath);
                                          object.photo = filePath;
                                        }
                                      }
                                    }
                                  });
                                });
                              },
                              child: Icon(Icons.camera_alt_sharp,
                                  color: Color.fromRGBO(97, 153, 59, 1.0))),
                          hintText:
                              'Особенности, дефекты, условия, замечания...',
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        maxLines: 10,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(137),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ImageScreen(
                                            imagePath: object.photo)),
                                  );
                                },
                                child: Center(
                                  child: object.photo != null
                                      ? Image.file(
                                          File(object.photo),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 100,
                                        )
                                      : Center(
                                          child: Image.asset(
                                            'assets/images/defaultimage.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm7(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _8formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ИСПОЛНИТЕЛИ И КОМИССИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode54,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.business,
                            color: focusNode54.hasFocus ||
                                    filialController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Филиал',
                        ),
                        items: _filial.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.filial,
                        onChanged: (String value) {
                          setState(() {
                            focusNode54.requestFocus();
                            object.filial = value;
                            object.filial = filialController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        focusNode: focusNode53,
                        onChanged: (String value) {
                          setState(() {
                            focusNode53.requestFocus();
                            object.dolzhnpredskom = value;
                            object.dolzhnpredskom = predskomController.text;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode53.hasFocus ||
                                    predskomController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Должность председателя',
                        ),
                        items: _dolzhnpredskom
                            .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            .toSet()
                            .toList(),
                        style: textStyle,
                        value: object.dolzhnpredskom,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode52,
                        onChanged: (String value) {
                          setState(() {
                            focusNode52.requestFocus();
                            object.fiopredskom = value;
                            object.fiopredskom = fiopredskomController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiopredskom = value;
                        },
                        controller: fiopredskomController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО председателя комиссии',
                          hintText: 'Введите ФИО председателя комиссии',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode52.hasFocus ||
                                    fiopredskomController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiopredskomController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Представители служб',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode81,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode81.hasFocus ||
                                    dolzhnproizvrabController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Начальник службы ЗоК',
                        ),
                        items: _dolzhnproizvrab.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnproizvrab,
                        onChanged: (String value) {
                          setState(() {
                            focusNode81.requestFocus();
                            object.dolzhnproizvrab = value;
                            object.dolzhnproizvrab =
                                dolzhnproizvrabController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode79,
                        onChanged: (String value) {
                          setState(() {
                            focusNode79.requestFocus();
                            object.fioproizvrab = value;
                            object.fioproizvrab = fioproizvrabController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fioproizvrab = value;
                        },
                        controller: fioproizvrabController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО начальника службы ЗоК',
                          hintText: 'Введите ФИО начальника службы ЗоК',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode79.hasFocus ||
                                    fioproizvrabController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fioproizvrabController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode88,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode88.hasFocus ||
                                    dolzhnproizvrabController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Представитель службы ЗоК',
                        ),
                        items: _dolzhnpredststroitSK.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnpredststroitSK,
                        onChanged: (String value) {
                          setState(() {
                            focusNode88.requestFocus();
                            object.dolzhnpredststroitSK = value;
                            object.dolzhnpredststroitSK =
                                dolzhnproizvrabController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode83,
                        onChanged: (String value) {
                          setState(() {
                            focusNode83.requestFocus();
                            object.fiopredststroitSK = value;
                            object.fiopredststroitSK =
                                fiopredststroitSKController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiopredststroitSK = value;
                        },
                        controller: fiopredststroitSKController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО представителя службы ЗоК',
                          hintText: 'Введите ФИО представителя службы ЗоК',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode83.hasFocus ||
                                    fiopredststroitSKController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiopredststroitSKController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode82,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode82.hasFocus ||
                                    dolzhnnachuchastkaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Начальник участка',
                        ),
                        items: _dolzhnnachuchastka.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnnachuchastka,
                        onChanged: (String value) {
                          setState(() {
                            focusNode82.requestFocus();
                            object.dolzhnnachuchastka = value;
                            object.dolzhnnachuchastka =
                                dolzhnnachuchastkaController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode85,
                        onChanged: (String value) {
                          setState(() {
                            focusNode85.requestFocus();
                            object.fionachuchastka = value;
                            object.fionachuchastka =
                                fionachuchastkaController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fionachuchastka = value;
                        },
                        controller: fionachuchastkaController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО Начальника участка',
                          hintText: 'Введите ФИО Начальника участка',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode85.hasFocus ||
                                    fionachuchastkaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fionachuchastkaController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode89,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode89.hasFocus ||
                                    dolzhnpredststroitController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Представитель участка',
                        ),
                        items: _dolzhnpredststroit.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnpredststroit,
                        onChanged: (String value) {
                          setState(() {
                            focusNode89.requestFocus();
                            object.dolzhnpredststroit = value;
                            object.dolzhnpredststroit =
                                dolzhnpredststroitController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode84,
                        onChanged: (String value) {
                          setState(() {
                            focusNode84.requestFocus();
                            object.fiopredststroit = value;
                            object.fiopredststroit =
                                fiopredststroitController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiopredststroit = value;
                        },
                        controller: fiopredststroitController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО представителя участка',
                          hintText: 'Введите ФИО представителя участка',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode84.hasFocus ||
                                    fiopredststroitController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiopredststroitController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Специалист по НК изоляции (СК)',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode111,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode111.hasFocus ||
                                    dolzhnpredstzakazchController
                                        .text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Должность специалиста',
                        ),
                        items: _dolzhnpredstzakazch.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnpredstzakazch,
                        onChanged: (String value) {
                          setState(() {
                            focusNode111.requestFocus();
                            object.dolzhnpredstzakazch = value;
                            object.dolzhnpredstzakazch =
                                dolzhnpredstzakazchController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode80,
                        onChanged: (String value) {
                          setState(() {
                            focusNode80.requestFocus();
                            object.fiopredstzakazch = value;
                            object.fiopredstzakazch =
                                fiopredstzakazchController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiopredstzakazch = value;
                        },
                        controller: fiopredstzakazchController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО специалиста по НК изоляции',
                          hintText: 'Введите ФИО специалиста по НК изоляции',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode80.hasFocus ||
                                    fiopredstzakazchController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiopredstzakazchController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode86,
                        onChanged: (String value) {
                          setState(() {
                            focusNode86.requestFocus();
                            object.fiodruglic = value;
                            object.fiodruglic = fiodruglicController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiodruglic = value;
                        },
                        controller: fiodruglicController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Номер удостоверения',
                          hintText: 'Введите Номер удостоверения',
                          helperText: '№ ....-....',
                          prefixIcon: Icon(
                            Icons.assignment_ind_sharp,
                            color: focusNode86.hasFocus ||
                                    fiodruglicController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiodruglicController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Специалист по НК (дефектоскопист)',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode113,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: focusNode113.hasFocus ||
                                    dolzhnpredstzakazchSKController
                                        .text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Должность специалиста',
                        ),
                        items: _dolzhnpredstzakazch.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnpredstzakazchSK,
                        onChanged: (String value) {
                          setState(() {
                            focusNode113.requestFocus();
                            object.dolzhnpredstzakazchSK = value;
                            object.dolzhnpredstzakazchSK =
                                dolzhnpredstzakazchSKController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode87,
                        onChanged: (String value) {
                          setState(() {
                            focusNode87.requestFocus();
                            object.fiopredstzakazchSK = value;
                            object.fiopredstzakazchSK =
                                fiopredstzakazchSKController.text;
                          });
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          object.fiopredstzakazchSK = value;
                        },
                        controller: fiopredstzakazchSKController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ФИО специалиста по НК',
                          hintText: 'Введите ФИО специалиста по НК',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode87.hasFocus ||
                                    fiopredstzakazchController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              fiopredstzakazchSKController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('AO');
                        },
                        child: const Text(
                          'Сформировать Акт обследования трубопровода в шурфе',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('APUZT');
                        },
                        child: const Text(
                          'Сформировать Акт на приемку уложенного и забалластированного трубопровода',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('RAZR');
                        },
                        child: const Text(
                          'Сформировать Разрешение на право производства изоляции трубопровода',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('AKSZT');
                        },
                        child: const Text(
                          'Сформировать Акт о контроле сплошности изоляционного покрытия засыпанного трубопровода',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('ZHIUR');
                        },
                        child: const Text(
                          'Сформировать Журнал изоляционно-укладочных работ и ремонта изоляции',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () => saveForm8(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // floatingActionButton: isEdit
        //     ? FloatingActionButton(
        //         onPressed: () {
        //           debugPrint('Click Floated Back.');
        //           confirmDelete();
        //         },
        //         elevation: 5.0,
        //         backgroundColor: Color.fromRGBO(187, 30, 16, 1.0),
        //         tooltip: 'Удалить запись',
        //         child: Icon(
        //           Icons.clear,
        //           size: 35.0,
        //           color: Colors.white,
        //         ))
        //     : null,
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      ),
    );
  }

  void editExcelFile(String buttonName) async {
    try {
      if (buttonName == 'AO') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/IP/AO.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['AO'];
        var filial = 'Филиал';

        // Вставляем данные в определенные ячейки
        if (object.filial == 'Арзамасское ЛПУМГ') {
          filial = 'Арзамасского ЛПУМГ-филиала';
        } else if (object.filial == 'Владимирское ЛПУМГ') {
          filial = 'Владимирского ЛПУМГ-филиала';
        } else if (object.filial == 'Волжское ЛПУМГ') {
          filial = 'Волжского ЛПУМГ-филиала';
        } else if (object.filial == 'Вятское ЛПУМГ') {
          filial = 'Вятского ЛПУМГ-филиала';
        } else if (object.filial == 'Заволжское ЛПУМГ') {
          filial = 'Заволжского ЛПУМГ-филиала';
        } else if (object.filial == 'Ивановское ЛПУМГ') {
          filial = 'Ивановского ЛПУМГ-филиала';
        } else if (object.filial == 'Кировское ЛПУМГ') {
          filial = 'Кировского ЛПУМГ-филиала';
        } else if (object.filial == 'Моркинское ЛПУМГ') {
          filial = 'Моркинского ЛПУМГ-филиала';
        } else if (object.filial == 'Пензенское ЛПУМГ') {
          filial = 'Пензенского ЛПУМГ-филиала';
        } else if (object.filial == 'Пильнинское ЛПУМГ') {
          filial = 'Пильнинского ЛПУМГ-филиала';
        } else if (object.filial == 'Починковское ЛПУМГ') {
          filial = 'Починковского ЛПУМГ-филиала';
        } else if (object.filial == 'Приокское ЛПУМГ') {
          filial = 'Приокского ЛПУМГ-филиала';
        } else if (object.filial == 'Семеновское ЛПУМГ') {
          filial = 'Семеновского ЛПУМГ-филиала';
        } else if (object.filial == 'Сеченовское ЛПУМГ') {
          filial = 'Сеченовского ЛПУМГ-филиала';
        } else if (object.filial == 'Торбеевское ЛПУМГ') {
          filial = 'Торбеевского ЛПУМГ-филиала';
        } else if (object.filial == 'Чебоксарское ЛПУМГ') {
          filial = 'Чебоксарского ЛПУМГ-филиала';
        } else if (object.filial == 'ИТЦ ЛПУМГ') {
          filial = 'ИТЦ-филиала';
        } else if (object.filial == 'УАВР') {
          filial = 'УАВР-филиала';
        }
        sheet.cell(CellIndex.indexByString("E4")).value =
            object.dolzhnpredskom ?? '-';
        sheet.cell(CellIndex.indexByString("E5")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("I7")).value =
            object.fiopredskom ?? '-';
        sheet.cell(CellIndex.indexByString("I8")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("F11")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("G14")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("G15")).value = object.davl ?? '-';
        sheet.cell(CellIndex.indexByString("G16")).value =
            object.diameter.toString() ??
                '-' + "x" + object.thickpipe.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("G17")).value =
            object.gradesteel ?? '-';
        sheet.cell(CellIndex.indexByString("G18")).value =
            object.typeinsul ?? '-';
        sheet.cell(CellIndex.indexByString("F19")).value =
            object.osnovanie ?? '-';
        sheet.cell(CellIndex.indexByString("A25")).value =
            object.piketkm ?? '-';
        sheet.cell(CellIndex.indexByString("C25")).value =
            object.distvtd ?? '-';
        sheet.cell(CellIndex.indexByString("E25")).value =
            object.location ?? '-';
        sheet.cell(CellIndex.indexByString("H25")).value =
            object.privmest ?? '-';
        sheet.cell(CellIndex.indexByString("J25")).value =
            object.depthpit ?? '-';
        sheet.cell(CellIndex.indexByString("A34")).value = object.mesto ?? '-';
        sheet.cell(CellIndex.indexByString("C34")).value =
            object.tipgrunta ?? '-';
        sheet.cell(CellIndex.indexByString("E34")).value =
            object.vlaggrunt ?? '-';
        sheet.cell(CellIndex.indexByString("G34")).value =
            object.lengthpit ?? '-';
        sheet.cell(CellIndex.indexByString("H34")).value =
            object.soprgrunt ?? '-';
        sheet.cell(CellIndex.indexByString("I34")).value = object.ph ?? '-';
        sheet.cell(CellIndex.indexByString("J34")).value =
            object.potencial ?? '-';
        sheet.cell(CellIndex.indexByString("K34")).value =
            object.tempsurf ?? '-';
        sheet.cell(CellIndex.indexByString("G38")).value = object.vlaga ?? '-';

        sheet.cell(CellIndex.indexByString("D49")).value =
            object.thickinsul1 ?? '-';
        sheet.cell(CellIndex.indexByString("F49")).value =
            object.thickinsul2 ?? '-';
        sheet.cell(CellIndex.indexByString("H49")).value =
            object.thickinsul3 ?? '-';
        sheet.cell(CellIndex.indexByString("J49")).value =
            object.thickinsul4 ?? '-';

        sheet.cell(CellIndex.indexByString("A63")).value =
            object.charmetdamage1 ?? '-';
        sheet.cell(CellIndex.indexByString("C63")).value =
            object.lochourmetdamage1 ?? '-';
        sheet.cell(CellIndex.indexByString("G63")).value =
            object.sizedepthmetdamage1 ?? '-';
        sheet.cell(CellIndex.indexByString("I63")).value =
            object.thickpipe ?? '-';

        sheet.cell(CellIndex.indexByString("D68")).value =
            object.thickpipe1 ?? '-';
        sheet.cell(CellIndex.indexByString("F68")).value =
            object.thickpipe2 ?? '-';
        sheet.cell(CellIndex.indexByString("H68")).value =
            object.thickpipe3 ?? '-';
        sheet.cell(CellIndex.indexByString("J68")).value =
            object.thickpipe4 ?? '-';

        sheet.cell(CellIndex.indexByString("H68")).value =
            object.thickpipe ?? '-';

        sheet.cell(CellIndex.indexByString("E63")).value =
            object.sizelengthmetdamage1.toString() ??
                '-' + "x" + object.sizewidthmetdamage1.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("A64")).value =
            object.charmetdamage2 ?? '-';
        sheet.cell(CellIndex.indexByString("C64")).value =
            object.lochourmetdamage2 ?? '-';
        sheet.cell(CellIndex.indexByString("G64")).value =
            object.sizedepthmetdamage1 ?? '-';
        sheet.cell(CellIndex.indexByString("I64")).value =
            object.thickpipe ?? '-';

        sheet.cell(CellIndex.indexByString("E64")).value =
            object.sizelengthmetdamage2.toString() ??
                '-' + "x" + object.sizewidthmetdamage2.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("A65")).value =
            object.charmetdamage3 ?? '-';
        sheet.cell(CellIndex.indexByString("C65")).value =
            object.lochourmetdamage3 ?? '-';
        sheet.cell(CellIndex.indexByString("G65")).value =
            object.sizedepthmetdamage1 ?? '-';
        sheet.cell(CellIndex.indexByString("I65")).value =
            object.thickpipe ?? '-';

        sheet.cell(CellIndex.indexByString("E65")).value =
            object.sizelengthmetdamage3.toString() ??
                '-' + "x" + object.sizewidthmetdamage3.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("F57")).value =
            object.insulcondit ?? '-';

        // sheet.cell(CellIndex.indexByString("F69")).value =
        //     object.metalldamage ?? '-' == 'Да'
        //         ? 'Неудовлетворительное'
        //         : 'Удовлетворительное';

        sheet.cell(CellIndex.indexByString("B73")).value =
            object.tickinsulmeter ?? '-';
        sheet.cell(CellIndex.indexByString("F73")).value =
            object.tickinsulmeternumb ?? '-';
        sheet.cell(CellIndex.indexByString("I73")).value =
            object.tickinsulmeterdate ?? '-';

        sheet.cell(CellIndex.indexByString("B74")).value =
            object.tickmetallmeter ?? '-';
        sheet.cell(CellIndex.indexByString("F74")).value =
            object.tickmetallmeternumb ?? '-';
        sheet.cell(CellIndex.indexByString("I74")).value =
            object.tickmetallmeterdate ?? '-';

        sheet.cell(CellIndex.indexByString("B75")).value =
            object.adhesmeter ?? '-';
        sheet.cell(CellIndex.indexByString("F75")).value =
            object.adhesmeternumb ?? '-';
        sheet.cell(CellIndex.indexByString("I75")).value =
            object.adhesmeterdate ?? '-';

        sheet.cell(CellIndex.indexByString("B76")).value =
            object.multimeter ?? '-';
        sheet.cell(CellIndex.indexByString("F76")).value =
            object.multimeternumb ?? '-';
        sheet.cell(CellIndex.indexByString("I76")).value =
            object.multimeterdate ?? '-';

        sheet.cell(CellIndex.indexByString("B77")).value = object.setvik ?? '-';
        sheet.cell(CellIndex.indexByString("F77")).value =
            object.setviknumb ?? '-';
        sheet.cell(CellIndex.indexByString("I77")).value =
            object.setvikdate ?? '-';

        sheet.cell(CellIndex.indexByString("E78")).value = object.zakl ?? '-';

        sheet.cell(CellIndex.indexByString("E80")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J80")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("A82")).value =
            object.dolzhnproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("E82")).value =
            object.fioproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("J82")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("A84")).value =
            object.dolzhnnachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("E84")).value =
            object.fionachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("J84")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("A86")).value =
            object.dolzhnpredstzakazchSK ?? '-';
        sheet.cell(CellIndex.indexByString("E86")).value =
            object.fiopredstzakazchSK ?? '-';
        sheet.cell(CellIndex.indexByString("J86")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("F54")).value =
            object.insuladhes1 ?? '-';
        sheet.cell(CellIndex.indexByString("H54")).value =
            object.insulcharadhes1 ?? '-';

        String result1 = "";

        if (object.insuladhes1 != null && object.insulcharadhes1 != null) {
          double insuladhes1Value =
              double.tryParse(object.insuladhes1.replaceAll(',', '.'));

          if (insuladhes1Value != null) {
            if (insuladhes1Value >= 20) {
              result1 = 'Соответствует';
            } else {
              result1 = 'Не соответствует';
            }
          } else {
            result1 = '-';
          }
        } else {
          result1 = '-';
        }

        sheet.cell(CellIndex.indexByString("J54")).value = result1;

        sheet.cell(CellIndex.indexByString("H55")).value =
            object.insulcharadhes2 ?? '-';

        sheet.cell(CellIndex.indexByString("F55")).value =
            object.insuladhes2 ?? '-';

        String result2 = "";

        if (object.insuladhes2 != null && object.insulcharadhes2 != null) {
          double insuladhes2Value =
              double.tryParse(object.insuladhes2.replaceAll(',', '.'));

          if (insuladhes2Value != null) {
            if (insuladhes2Value >= 20) {
              result2 = 'Соответствует';
            } else {
              result2 = 'Не соответствует';
            }
          } else {
            result2 = '-';
          }
        } else {
          result2 = '-';
        }

        sheet.cell(CellIndex.indexByString("J55")).value = result2;

        sheet.cell(CellIndex.indexByString("H56")).value =
            object.insulcharadhes3 ?? '-';
        sheet.cell(CellIndex.indexByString("F56")).value =
            object.insuladhes3 ?? '-';
        String result3 = "";

        if (object.insuladhes3 != null && object.insulcharadhes3 != null) {
          double insuladhes3Value =
              double.tryParse(object.insuladhes3.replaceAll(',', '.'));

          if (insuladhes3Value != null) {
            if (insuladhes3Value >= 20) {
              result3 = 'Соответствует';
            } else {
              result3 = 'Не соответствует';
            }
          } else {
            result3 = '-';
          }
        } else {
          result3 = '-';
        }

        sheet.cell(CellIndex.indexByString("J56")).value = result3;

        sheet.cell(CellIndex.indexByString("A44")).value =
            object.charinsuldamage1 ?? '-';

        sheet.cell(CellIndex.indexByString("C44")).value =
            object.lochourinsuldamage1 ?? '-';

        sheet.cell(CellIndex.indexByString("E44")).value =
            object.sizelengthinsuldamage1.toString() ??
                '-' + "x" + object.sizewidthinsuldamage1.toString() ??
                '-';

        double sizelength1 = double.tryParse(
            sizelengthinsuldamageController1.text?.replaceAll(',', '.'));
        double sizewidth1 = double.tryParse(
            sizewidthinsuldamageController1.text?.replaceAll(',', '.'));

        sheet.cell(CellIndex.indexByString("H44")).value =
            (sizelength1 == null || sizewidth1 == null)
                ? '-'
                : sizelength1 * sizewidth1 / 100;

        sheet.cell(CellIndex.indexByString("A45")).value =
            object.charinsuldamage2 ?? '-';
        sheet.cell(CellIndex.indexByString("C45")).value =
            object.lochourinsuldamage2 ?? '-';

        sheet.cell(CellIndex.indexByString("E45")).value =
            object.sizelengthinsuldamage2.toString() ??
                '-' + "x" + object.sizewidthinsuldamage2.toString() ??
                '-';

        double sizelength2 = double.tryParse(
            sizelengthinsuldamageController2.text?.replaceAll(',', '.'));
        double sizewidth2 = double.tryParse(
            sizewidthinsuldamageController2.text?.replaceAll(',', '.'));

        sheet.cell(CellIndex.indexByString("H45")).value =
            (sizelength2 == null || sizewidth2 == null)
                ? '-'
                : sizelength2 * sizewidth2 / 100;

        sheet.cell(CellIndex.indexByString("A46")).value =
            object.charinsuldamage3 ?? '-';
        sheet.cell(CellIndex.indexByString("C46")).value =
            object.lochourinsuldamage3 ?? '-';

        sheet.cell(CellIndex.indexByString("E46")).value =
            object.sizelengthinsuldamage3.toString() ??
                '-' + "x" + object.sizewidthinsuldamage3.toString() ??
                '-';

        double sizelength3 = double.tryParse(
            sizelengthinsuldamageController3.text?.replaceAll(',', '.'));
        double sizewidth3 = double.tryParse(
            sizewidthinsuldamageController3.text?.replaceAll(',', '.'));

        sheet.cell(CellIndex.indexByString("H46")).value =
            (sizelength3 == null || sizewidth3 == null)
                ? '-'
                : sizelength3 * sizewidth3 / 100;

        // Получаем путь к папке "Downloads" на внешнем хранилище
        Directory externalStorageDirectory =
            await getExternalStorageDirectory();
        String downloadsFolderPath = '${externalStorageDirectory.path}';

        // Получаем путь к сохраненному файлу
        var newFile = '${object.title}.xlsx';
        var file = File('$downloadsFolderPath/$newFile');
        var excelBytes = excel.encode();
        await file.writeAsBytes(excelBytes);
        String filePath = '$downloadsFolderPath/$newFile';

        // Открываем новый файл
        await OpenFile.open(filePath);
      } else if (buttonName == 'APUZT') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/IP/APUZT.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['APUZT'];
        var filial = 'Филиал';

        // Вставляем данные в определенные ячейки
        if (object.filial == 'Арзамасское ЛПУМГ') {
          filial = 'Арзамасского ЛПУМГ-филиала';
        } else if (object.filial == 'Владимирское ЛПУМГ') {
          filial = 'Владимирского ЛПУМГ-филиала';
        } else if (object.filial == 'Волжское ЛПУМГ') {
          filial = 'Волжского ЛПУМГ-филиала';
        } else if (object.filial == 'Вятское ЛПУМГ') {
          filial = 'Вятского ЛПУМГ-филиала';
        } else if (object.filial == 'Заволжское ЛПУМГ') {
          filial = 'Заволжского ЛПУМГ-филиала';
        } else if (object.filial == 'Ивановское ЛПУМГ') {
          filial = 'Ивановского ЛПУМГ-филиала';
        } else if (object.filial == 'Кировское ЛПУМГ') {
          filial = 'Кировского ЛПУМГ-филиала';
        } else if (object.filial == 'Моркинское ЛПУМГ') {
          filial = 'Моркинского ЛПУМГ-филиала';
        } else if (object.filial == 'Пензенское ЛПУМГ') {
          filial = 'Пензенского ЛПУМГ-филиала';
        } else if (object.filial == 'Пильнинское ЛПУМГ') {
          filial = 'Пильнинского ЛПУМГ-филиала';
        } else if (object.filial == 'Починковское ЛПУМГ') {
          filial = 'Починковского ЛПУМГ-филиала';
        } else if (object.filial == 'Приокское ЛПУМГ') {
          filial = 'Приокского ЛПУМГ-филиала';
        } else if (object.filial == 'Семеновское ЛПУМГ') {
          filial = 'Семеновского ЛПУМГ-филиала';
        } else if (object.filial == 'Сеченовское ЛПУМГ') {
          filial = 'Сеченовского ЛПУМГ-филиала';
        } else if (object.filial == 'Торбеевское ЛПУМГ') {
          filial = 'Торбеевского ЛПУМГ-филиала';
        } else if (object.filial == 'Чебоксарское ЛПУМГ') {
          filial = 'Чебоксарского ЛПУМГ-филиала';
        } else if (object.filial == 'ИТЦ ЛПУМГ') {
          filial = 'ИТЦ-филиала';
        } else if (object.filial == 'УАВР') {
          filial = 'УАВР-филиала';
        }
        sheet.cell(CellIndex.indexByString("E5")).value =
            object.dolzhnpredskom ?? '-';
        sheet.cell(CellIndex.indexByString("E6")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("I8")).value =
            object.fiopredskom ?? '-';
        sheet.cell(CellIndex.indexByString("I9")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("F13")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("F16")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + " " + object.fiopredstzakazch.toString() ??
                '-' + " " + object.fiodruglic.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("F18")).value =
            object.dolzhnproizvrab.toString() ??
                '-' + " " + object.fioproizvrab.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("F20")).value =
            object.dolzhnnachuchastka.toString() ??
                '-' + " " + object.fionachuchastka.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("F24")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("C27")).value =
            object.piketkm ?? '-';

        sheet
            .cell(CellIndex.indexByString("G27"))
            .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
                    null ||
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
            ? '-'
            : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
        sheet.cell(CellIndex.indexByString("D29")).value =
            object.metrrest ?? '-';
        sheet.cell(CellIndex.indexByString("H36")).value =
            (object.typeinsulrest == null || object.diameter == null)
                ? '-'
                : object.typeinsulrest ??
                        '-' == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                            (double.tryParse(
                                        object.diameter.replaceAll(',', '.') ??
                                            '-') ??
                                    0) >=
                                820
                    ? 'Усиленного'
                    : 'Нормального';
        sheet.cell(CellIndex.indexByString("F37")).value =
            object.typeinsulrest ?? '-';
        sheet.cell(CellIndex.indexByString("D39")).value =
            object.thickinsulrest ?? '-';

        sheet.cell(CellIndex.indexByString("D42")).value =
            object.typeinsulrest == null
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? 'СТО Газпром 9.1-016-2012'
                    : 'СТО Газпром 9.1-017-2012';

        sheet.cell(CellIndex.indexByString("F52")).value =
            (object.tickinsulmeter == null || object.tickinsulmeternumb == null)
                ? '-'
                : object.tickinsulmeter + ' №' + object.tickinsulmeternumb;
        sheet.cell(CellIndex.indexByString("F56")).value =
            (object.adhesmeter == null || object.adhesmeternumb == null)
                ? '-'
                : object.adhesmeter + ' №' + object.adhesmeternumb;
        sheet.cell(CellIndex.indexByString("H59")).value =
            (object.continmeter == null || object.continmeternumb == null)
                ? '-'
                : object.continmeter + ' №' + object.continmeternumb;
        sheet.cell(CellIndex.indexByString("C61")).value =
            object.contininsulrest ?? '-';

        sheet.cell(CellIndex.indexByString("D64")).value = object
                    .typeinsulrest ==
                'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
            ? '4.6'
            : object.typeinsulrest == 'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                ? '3.1'
                : object.typeinsulrest == 'БИУРС'
                    ? '0.7'
                    : object.typeinsulrest == 'Термоусаживающаяся манжета'
                        ? '1.5'
                        : '-';
        sheet.cell(CellIndex.indexByString("G64")).value =
            object.thickinsulrest ?? '-';

        sheet.cell(CellIndex.indexByString("J64")).value =
            (object.thickinsulrest == null)
                ? '-'
                : double.tryParse(object.thickinsulrest.replaceAll(',', '.') ??
                                '-') !=
                            null &&
                        double.tryParse(sheet
                                .cell(CellIndex.indexByString("D64"))
                                .value
                                .toString()
                                .replaceAll(',', '.')) !=
                            null &&
                        double.tryParse(
                                object.thickinsulrest.replaceAll(',', '.')) >=
                            double.tryParse(sheet
                                .cell(CellIndex.indexByString("D64"))
                                .value
                                .toString()
                                .replaceAll(',', '.'))
                    ? 'Соответствует'
                    : 'Не соответствует';

        sheet.cell(CellIndex.indexByString("D65")).value = object
                    .typeinsulrest ==
                'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
            ? '0,2'
            : object.typeinsulrest == 'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                ? '0,2'
                : object.typeinsulrest == 'БИУРС'
                    ? '0,3'
                    : object.typeinsulrest == 'Термоусаживающаяся манжета'
                        ? '0,3'
                        : '-';
        sheet.cell(CellIndex.indexByString("G65")).value =
            object.insuladhesrest ?? '-';

        sheet.cell(CellIndex.indexByString("J65")).value = (object
                    .insuladhesrest ==
                null)
            ? '-'
            : double.tryParse(object.insuladhesrest.replaceAll(',', '.') ??
                            '-') !=
                        null &&
                    double.tryParse(sheet
                            .cell(CellIndex.indexByString("D65"))
                            .value
                            .toString()
                            .replaceAll(',', '.')) !=
                        null &&
                    double.tryParse(object.insuladhesrest.replaceAll(',', '.') ?? '-') >=
                        double.tryParse(sheet
                            .cell(CellIndex.indexByString("D65"))
                            .value
                            .toString()
                            .replaceAll(',', '.'))
                ? 'Соответствует'
                : 'Не соответствует';

        sheet.cell(CellIndex.indexByString("D66")).value = object
                    .typeinsulrest ==
                null
            ? '-'
            : object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
                ? '5кВ на 1мм толщины'
                : object.typeinsulrest ==
                        'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? '5кВ на 1мм толщины'
                    : object.typeinsulrest == 'БИУРС'
                        ? '3кВ на 1мм толщины'
                        : object.typeinsulrest == 'Термоусаживающаяся манжета'
                            ? '5кВ на 1мм толщины + 5кВ'
                            : '-';
        sheet.cell(CellIndex.indexByString("G66")).value =
            object.contininsulrest == null
                ? '-'
                : 'отсутствие пробоя при ' + object.contininsulrest + 'кВ';

        sheet.cell(CellIndex.indexByString("E86")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J86")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E88")).value =
            object.fioproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("J88")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E90")).value =
            object.fionachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("J90")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("A92")).value =
            object.dolzhnpredstzakazchSK ?? '-';
        sheet.cell(CellIndex.indexByString("E92")).value =
            object.fiopredstzakazchSK ?? '-';
        sheet.cell(CellIndex.indexByString("J92")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("J66")).value = double.tryParse(
                        object.contininsulrest.replaceAll(',', '.')) !=
                    null &&
                double.tryParse(object.typeinsulrest.replaceAll(',', '.')) !=
                    null &&
                double.tryParse(object.contininsulrest.replaceAll(',', '.')) >=
                    double.tryParse(object.typeinsulrest.replaceAll(',', '.'))
            ? (object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
                ? 5.0 *
                    double.tryParse(object.thickinsulrest.replaceAll(',', '.'))
                : object.typeinsulrest ==
                        'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? 5.0 *
                        double.tryParse(
                            object.thickinsulrest.replaceAll(',', '.'))
                    : object.typeinsulrest == 'БИУРС'
                        ? 3.0 *
                            double.tryParse(
                                object.thickinsulrest.replaceAll(',', '.'))
                        : object.typeinsulrest == 'Термоусаживающаяся манжета'
                            ? 5.0 *
                                    double.tryParse(object.thickinsulrest
                                        .replaceAll(',', '.')) +
                                5
                            : 'Соответствует')
            : 'Не соответствует';

        // Получаем путь к папке "Downloads" на внешнем хранилище
        Directory externalStorageDirectory =
            await getExternalStorageDirectory();
        String downloadsFolderPath = '${externalStorageDirectory.path}';

        // Получаем путь к сохраненному файлу
        var newFile = '${object.title}.xlsx';
        var file = File('$downloadsFolderPath/$newFile');
        var excelBytes = excel.encode();
        await file.writeAsBytes(excelBytes);
        String filePath = '$downloadsFolderPath/$newFile';

        // Открываем новый файл
        await OpenFile.open(filePath);
      } else if (buttonName == 'RAZR') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/IP/RAZR.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['RAZR'];
        var filial = 'Филиал';

        // Вставляем данные в определенные ячейки
        if (object.filial == 'Арзамасское ЛПУМГ') {
          filial = 'Арзамасского ЛПУМГ-филиала';
        } else if (object.filial == 'Владимирское ЛПУМГ') {
          filial = 'Владимирского ЛПУМГ-филиала';
        } else if (object.filial == 'Волжское ЛПУМГ') {
          filial = 'Волжского ЛПУМГ-филиала';
        } else if (object.filial == 'Вятское ЛПУМГ') {
          filial = 'Вятского ЛПУМГ-филиала';
        } else if (object.filial == 'Заволжское ЛПУМГ') {
          filial = 'Заволжского ЛПУМГ-филиала';
        } else if (object.filial == 'Ивановское ЛПУМГ') {
          filial = 'Ивановского ЛПУМГ-филиала';
        } else if (object.filial == 'Кировское ЛПУМГ') {
          filial = 'Кировского ЛПУМГ-филиала';
        } else if (object.filial == 'Моркинское ЛПУМГ') {
          filial = 'Моркинского ЛПУМГ-филиала';
        } else if (object.filial == 'Пензенское ЛПУМГ') {
          filial = 'Пензенского ЛПУМГ-филиала';
        } else if (object.filial == 'Пильнинское ЛПУМГ') {
          filial = 'Пильнинского ЛПУМГ-филиала';
        } else if (object.filial == 'Починковское ЛПУМГ') {
          filial = 'Починковского ЛПУМГ-филиала';
        } else if (object.filial == 'Приокское ЛПУМГ') {
          filial = 'Приокского ЛПУМГ-филиала';
        } else if (object.filial == 'Семеновское ЛПУМГ') {
          filial = 'Семеновского ЛПУМГ-филиала';
        } else if (object.filial == 'Сеченовское ЛПУМГ') {
          filial = 'Сеченовского ЛПУМГ-филиала';
        } else if (object.filial == 'Торбеевское ЛПУМГ') {
          filial = 'Торбеевского ЛПУМГ-филиала';
        } else if (object.filial == 'Чебоксарское ЛПУМГ') {
          filial = 'Чебоксарского ЛПУМГ-филиала';
        } else if (object.filial == 'ИТЦ ЛПУМГ') {
          filial = 'ИТЦ-филиала';
        } else if (object.filial == 'УАВР') {
          filial = 'УАВР-филиала';
        }

        sheet.cell(CellIndex.indexByString("E5")).value =
            object.dolzhnpredskom ?? '-';
        sheet.cell(CellIndex.indexByString("E6")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("I8")).value =
            object.fiopredskom ?? '-';
        sheet.cell(CellIndex.indexByString("I9")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E16")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("F18")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + ' ' + object.fiopredstzakazch.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("F20")).value =
            object.dolzhnnachuchastka.toString() ??
                '-' + ' ' + object.fionachuchastka.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("F22")).value =
            object.dolzhnpredstzakazchSK.toString() ??
                '-' + ' ' + object.fiopredstzakazchSK.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("F25")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("B11")).value = object.title ?? '-';

        sheet.cell(CellIndex.indexByString("B28")).value =
            object.piketkm ?? '-';

        sheet
            .cell(CellIndex.indexByString("F28"))
            .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
                    null ||
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
            ? '-'
            : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;

        sheet.cell(CellIndex.indexByString("D31")).value =
            object.metrrest ?? '-';

        sheet.cell(CellIndex.indexByString("E41")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J41")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E43")).value =
            object.fionachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("J43")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E45")).value =
            object.fiopredstzakazchSK ?? '-';
        sheet.cell(CellIndex.indexByString("J45")).value =
            object.dateObsl ?? '-';

        // Получаем путь к папке "Downloads" на внешнем хранилище
        Directory externalStorageDirectory =
            await getExternalStorageDirectory();
        String downloadsFolderPath = '${externalStorageDirectory.path}';

        // Получаем путь к сохраненному файлу
        var newFile = '${object.title}.xlsx';
        var file = File('$downloadsFolderPath/$newFile');
        var excelBytes = excel.encode();
        await file.writeAsBytes(excelBytes);
        String filePath = '$downloadsFolderPath/$newFile';

        // Открываем новый файл
        await OpenFile.open(filePath);
      } else if (buttonName == 'AKSZT') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/IP/AKSZT.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['AKSZT'];
        var filial = 'Филиал';

        // Вставляем данные в определенные ячейки
        if (object.filial == 'Арзамасское ЛПУМГ') {
          filial = 'Арзамасского ЛПУМГ-филиала';
        } else if (object.filial == 'Владимирское ЛПУМГ') {
          filial = 'Владимирского ЛПУМГ-филиала';
        } else if (object.filial == 'Волжское ЛПУМГ') {
          filial = 'Волжского ЛПУМГ-филиала';
        } else if (object.filial == 'Вятское ЛПУМГ') {
          filial = 'Вятского ЛПУМГ-филиала';
        } else if (object.filial == 'Заволжское ЛПУМГ') {
          filial = 'Заволжского ЛПУМГ-филиала';
        } else if (object.filial == 'Ивановское ЛПУМГ') {
          filial = 'Ивановского ЛПУМГ-филиала';
        } else if (object.filial == 'Кировское ЛПУМГ') {
          filial = 'Кировского ЛПУМГ-филиала';
        } else if (object.filial == 'Моркинское ЛПУМГ') {
          filial = 'Моркинского ЛПУМГ-филиала';
        } else if (object.filial == 'Пензенское ЛПУМГ') {
          filial = 'Пензенского ЛПУМГ-филиала';
        } else if (object.filial == 'Пильнинское ЛПУМГ') {
          filial = 'Пильнинского ЛПУМГ-филиала';
        } else if (object.filial == 'Починковское ЛПУМГ') {
          filial = 'Починковского ЛПУМГ-филиала';
        } else if (object.filial == 'Приокское ЛПУМГ') {
          filial = 'Приокского ЛПУМГ-филиала';
        } else if (object.filial == 'Семеновское ЛПУМГ') {
          filial = 'Семеновского ЛПУМГ-филиала';
        } else if (object.filial == 'Сеченовское ЛПУМГ') {
          filial = 'Сеченовского ЛПУМГ-филиала';
        } else if (object.filial == 'Торбеевское ЛПУМГ') {
          filial = 'Торбеевского ЛПУМГ-филиала';
        } else if (object.filial == 'Чебоксарское ЛПУМГ') {
          filial = 'Чебоксарского ЛПУМГ-филиала';
        } else if (object.filial == 'ИТЦ ЛПУМГ') {
          filial = 'ИТЦ-филиала';
        } else if (object.filial == 'УАВР') {
          filial = 'УАВР-филиала';
        }
        sheet.cell(CellIndex.indexByString("E6")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("E5")).value =
            object.dolzhnpredskom ?? '-';
        sheet.cell(CellIndex.indexByString("I8")).value =
            object.fiopredskom ?? '-';
        sheet.cell(CellIndex.indexByString("I9")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("B10")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("E13")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("E15")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + " " + object.fiopredstzakazch.toString() ??
                '-' + " " + object.fiodruglic.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("E17")).value =
            object.dolzhnproizvrab.toString() ??
                '-' + " " + object.fioproizvrab.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("E19")).value =
            object.dolzhnpredststroit.toString() ??
                '-' + " " + object.fiopredststroit.toString() ??
                '-';

        sheet.cell(CellIndex.indexByString("J21")).value =
            object.lengthpit ?? '-';
        sheet.cell(CellIndex.indexByString("B22")).value =
            object.piketkm ?? '-';
        sheet
            .cell(CellIndex.indexByString("F22"))
            .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
                    null ||
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
            ? '-'
            : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;

        sheet.cell(CellIndex.indexByString("I26")).value =
            (object.typeinsulrest == null || object.diameter == null)
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        double.tryParse(object.diameter.replaceAll(',', '.')) >=
                            820
                    ? 'Усиленного'
                    : 'Нормального';
        sheet.cell(CellIndex.indexByString("A26")).value =
            object.typeinsulrest == null
                ? '-'
                : object.typeinsulrest ==
                        'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
                    ? 'Грунтовка + РАМ 2 слоя'
                    : object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                        ? 'Грунтовка + РАМ 1 слой'
                        : object.typeinsulrest;

        sheet.cell(CellIndex.indexByString("C28")).value =
            object.thickinsulrest ?? '-';
        sheet.cell(CellIndex.indexByString("F28")).value =
            object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                    object.typeinsulrest ==
                        'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                ? 'Литкор НК Газ'
                : '-';
        sheet.cell(CellIndex.indexByString("J28")).value =
            object.typeinsulrest == null
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? '1'
                    : '-';

        sheet.cell(CellIndex.indexByString("E40")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J40")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E42")).value =
            object.fioproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("J42")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("E44")).value =
            object.fiopredststroit ?? '-';
        sheet.cell(CellIndex.indexByString("J44")).value =
            object.dateObsl ?? '-';

        // Получаем путь к папке "Downloads" на внешнем хранилище
        Directory externalStorageDirectory =
            await getExternalStorageDirectory();
        String downloadsFolderPath = '${externalStorageDirectory.path}';

        // Получаем путь к сохраненному файлу
        var newFile = '${object.title}.xlsx';
        var file = File('$downloadsFolderPath/$newFile');
        var excelBytes = excel.encode();
        await file.writeAsBytes(excelBytes);
        String filePath = '$downloadsFolderPath/$newFile';

        // Открываем новый файл
        await OpenFile.open(filePath);
      } else if (buttonName == 'ZHIUR') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/IP/ZHIUR.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['ZHIUR'];
        var filial = 'Филиал';

        // Вставляем данные в определенные ячейки
        if (object.filial == 'Арзамасское ЛПУМГ') {
          filial = 'Арзамасского ЛПУМГ-филиала';
        } else if (object.filial == 'Владимирское ЛПУМГ') {
          filial = 'Владимирского ЛПУМГ-филиала';
        } else if (object.filial == 'Волжское ЛПУМГ') {
          filial = 'Волжского ЛПУМГ-филиала';
        } else if (object.filial == 'Вятское ЛПУМГ') {
          filial = 'Вятского ЛПУМГ-филиала';
        } else if (object.filial == 'Заволжское ЛПУМГ') {
          filial = 'Заволжского ЛПУМГ-филиала';
        } else if (object.filial == 'Ивановское ЛПУМГ') {
          filial = 'Ивановского ЛПУМГ-филиала';
        } else if (object.filial == 'Кировское ЛПУМГ') {
          filial = 'Кировского ЛПУМГ-филиала';
        } else if (object.filial == 'Моркинское ЛПУМГ') {
          filial = 'Моркинского ЛПУМГ-филиала';
        } else if (object.filial == 'Пензенское ЛПУМГ') {
          filial = 'Пензенского ЛПУМГ-филиала';
        } else if (object.filial == 'Пильнинское ЛПУМГ') {
          filial = 'Пильнинского ЛПУМГ-филиала';
        } else if (object.filial == 'Починковское ЛПУМГ') {
          filial = 'Починковского ЛПУМГ-филиала';
        } else if (object.filial == 'Приокское ЛПУМГ') {
          filial = 'Приокского ЛПУМГ-филиала';
        } else if (object.filial == 'Семеновское ЛПУМГ') {
          filial = 'Семеновского ЛПУМГ-филиала';
        } else if (object.filial == 'Сеченовское ЛПУМГ') {
          filial = 'Сеченовского ЛПУМГ-филиала';
        } else if (object.filial == 'Торбеевское ЛПУМГ') {
          filial = 'Торбеевского ЛПУМГ-филиала';
        } else if (object.filial == 'Чебоксарское ЛПУМГ') {
          filial = 'Чебоксарского ЛПУМГ-филиала';
        } else if (object.filial == 'ИТЦ ЛПУМГ') {
          filial = 'ИТЦ-филиала';
        } else if (object.filial == 'УАВР') {
          filial = 'УАВР-филиала';
        }
        sheet.cell(CellIndex.indexByString("U5")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("J7")).value = object.piketkm ?? '-';
        sheet
            .cell(CellIndex.indexByString("J8"))
            .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
                    null ||
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
            ? '-'
            : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
        sheet.cell(CellIndex.indexByString("V11")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("V12")).value =
            object.dateObsl ?? '-';

        sheet.cell(CellIndex.indexByString("A18")).value =
            object.dateObsl ?? '-';
        sheet
            .cell(CellIndex.indexByString("F28"))
            .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
                    null ||
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
            ? '-'
            : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
                double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
        sheet.cell(CellIndex.indexByString("C18")).value =
            object.tempair ?? '-';
        sheet.cell(CellIndex.indexByString("D18")).value =
            (object.typeinsulrest == null || object.diameter == null)
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        double.tryParse(object.diameter.replaceAll(',', '.')) >=
                            820
                    ? 'Усиленный, ' + 'РАМ 2 слоя + Литкор НК Газ'
                    : 'Нормальный, ' + object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                        ? 'РАМ 1 слой + Литкор НК Газ'
                        : 'Нормальный, ' + object.typeinsulrest;

        sheet.cell(CellIndex.indexByString("E18")).value =
            object.typeinsulrest == null
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? 'Грунтовка Транскор-Газ'
                    : 'Праймер-клей';

        sheet.cell(CellIndex.indexByString("F18")).value =
            object.typeinsulrest == null
                ? '-'
                : object.typeinsulrest ==
                            'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
                        object.typeinsulrest ==
                            'Грунтовка + РАМ 1 слой + Литкор НК Газ'
                    ? 'Литкор НК Газ'
                    : '-';

        sheet.cell(CellIndex.indexByString("H18")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J18")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("I18")).value =
            object.fiopredststroit ?? '-';

        // Получаем путь к папке "Downloads" на внешнем хранилище
        Directory externalStorageDirectory =
            await getExternalStorageDirectory();
        String downloadsFolderPath = '${externalStorageDirectory.path}';

        // Получаем путь к сохраненному файлу
        var newFile = '${object.title}.xlsx';
        var file = File('$downloadsFolderPath/$newFile');
        var excelBytes = excel.encode();
        await file.writeAsBytes(excelBytes);
        String filePath = '$downloadsFolderPath/$newFile';

        // Открываем новый файл
        await OpenFile.open(filePath);
      }
    } catch (e) {
      print('Ошибка при открытии файла: $e');
    }
  }

  // void sostinsul() {
  //   double parsadh1 =
  //       double.tryParse(insuladhesController1.text.replaceAll(',', '.'));
  //   if (parsadh1 >= 20) {
  //     insulconditController.text = 'Удовлетворительная';
  //   } else if (parsadh1 < 20) {
  //     insulconditController.text = 'Неудовлетворительная';
  //   } else {
  //     insulconditController.text = 'Неудовлетворительная';
  //   }
  // }

  // Calculate the minimum value
  void minipipe() {
    double minValue = double.infinity;
    if (double.tryParse(thickpipeController1.text) != null) {
      double value1 = double.parse(thickpipeController1.text);
      minValue = value1;
    }

    if (double.tryParse(thickpipeController2.text) != null) {
      double value2 = double.parse(thickpipeController2.text);
      minValue = value2 < minValue ? value2 : minValue;
    }

    if (double.tryParse(thickpipeController3.text) != null) {
      double value3 = double.parse(thickpipeController3.text);
      minValue = value3 < minValue ? value3 : minValue;
    }

    if (double.tryParse(thickpipeController4.text) != null) {
      double value4 = double.parse(thickpipeController4.text);
      minValue = value4 < minValue ? value4 : minValue;
    }
    setState(() {
      thickpipeController.text = minValue.toString();
      object.thickpipe = thickpipeController.text;
    });
  }

  void sredadg() {
    double a1 = insuladhesController1.text.isNotEmpty
        ? double.parse(insuladhesController1.text)
        : 0.0;
    double a2 = insuladhesController2.text.isNotEmpty
        ? double.parse(insuladhesController2.text)
        : 0.0;
    double a3 = insuladhesController3.text.isNotEmpty
        ? double.parse(insuladhesController3.text)
        : 0.0;
    double a4 = insuladhesController4.text.isNotEmpty
        ? double.parse(insuladhesController4.text)
        : 0.0;

    double average = (a3 + a2 + a1) / 3;

    setState(() {
      insuladhesController4.text = average.toStringAsFixed(1);
      object.insuladhes4 = insuladhesController4.text;
    });
  }

  void sredadgrest() {
    double a1 = insuladhesrestController1.text.isNotEmpty
        ? double.parse(insuladhesrestController1.text)
        : 0.0;
    double a2 = insuladhesrestController2.text.isNotEmpty
        ? double.parse(insuladhesrestController2.text)
        : 0.0;
    double a3 = insuladhesrestController3.text.isNotEmpty
        ? double.parse(insuladhesrestController3.text)
        : 0.0;

    double average = (a3 + a2 + a1) / 3;

    setState(() {
      insuladhesrestController.text = average.toStringAsFixed(1);
      object.insuladhesrest = insuladhesrestController.text;
    });
  }

  void minithickinsul() {
    double minValue = double.infinity;
    if (double.tryParse(thickinsulController1.text) != null) {
      double value1 = double.parse(thickinsulController1.text);
      minValue = value1;
    }

    if (double.tryParse(thickinsulController2.text) != null) {
      double value2 = double.parse(thickinsulController2.text);
      minValue = value2 < minValue ? value2 : minValue;
    }

    if (double.tryParse(thickinsulController3.text) != null) {
      double value3 = double.parse(thickinsulController3.text);
      minValue = value3 < minValue ? value3 : minValue;
    }

    if (double.tryParse(thickinsulController4.text) != null) {
      double value4 = double.parse(thickinsulController4.text);
      minValue = value4 < minValue ? value4 : minValue;
    }
    if (double.tryParse(thickinsulController5.text) != null) {
      double value5 = double.parse(thickinsulController5.text);
      minValue = value5 < minValue ? value5 : minValue;
    }
    if (double.tryParse(thickinsulController6.text) != null) {
      double value6 = double.parse(thickinsulController6.text);
      minValue = value6 < minValue ? value6 : minValue;
    }
    if (double.tryParse(thickinsulController7.text) != null) {
      double value7 = double.parse(thickinsulController7.text);
      minValue = value7 < minValue ? value7 : minValue;
    }
    if (double.tryParse(thickinsulController8.text) != null) {
      double value8 = double.parse(thickinsulController8.text);
      minValue = value8 < minValue ? value8 : minValue;
    }
    if (double.tryParse(thickinsulController9.text) != null) {
      double value9 = double.parse(thickinsulController9.text);
      minValue = value9 < minValue ? value9 : minValue;
    }
    if (double.tryParse(thickinsulController10.text) != null) {
      double value10 = double.parse(thickinsulController10.text);
      minValue = value10 < minValue ? value10 : minValue;
    }
    if (double.tryParse(thickinsulController11.text) != null) {
      double value11 = double.parse(thickinsulController11.text);
      minValue = value11 < minValue ? value11 : minValue;
    }
    if (double.tryParse(thickinsulController12.text) != null) {
      double value12 = double.parse(thickinsulController12.text);
      minValue = value12 < minValue ? value12 : minValue;
    }
    setState(() {
      thickinsulController.text = minValue.toString();
      object.thickinsul = thickinsulController.text;
    });
  }

  void minithickinsulrest() {
    double minValue = double.infinity;
    if (double.tryParse(thickinsulrestController1.text) != null) {
      double value1 = double.parse(thickinsulrestController1.text);
      minValue = value1;
    }

    if (double.tryParse(thickinsulrestController2.text) != null) {
      double value2 = double.parse(thickinsulrestController2.text);
      minValue = value2 < minValue ? value2 : minValue;
    }

    if (double.tryParse(thickinsulrestController3.text) != null) {
      double value3 = double.parse(thickinsulrestController3.text);
      minValue = value3 < minValue ? value3 : minValue;
    }

    if (double.tryParse(thickinsulrestController4.text) != null) {
      double value4 = double.parse(thickinsulrestController4.text);
      minValue = value4 < minValue ? value4 : minValue;
    }
    if (double.tryParse(thickinsulrestController5.text) != null) {
      double value5 = double.parse(thickinsulrestController5.text);
      minValue = value5 < minValue ? value5 : minValue;
    }
    if (double.tryParse(thickinsulrestController6.text) != null) {
      double value6 = double.parse(thickinsulrestController6.text);
      minValue = value6 < minValue ? value6 : minValue;
    }
    if (double.tryParse(thickinsulrestController7.text) != null) {
      double value7 = double.parse(thickinsulrestController7.text);
      minValue = value7 < minValue ? value7 : minValue;
    }
    if (double.tryParse(thickinsulrestController8.text) != null) {
      double value8 = double.parse(thickinsulrestController8.text);
      minValue = value8 < minValue ? value8 : minValue;
    }
    if (double.tryParse(thickinsulrestController9.text) != null) {
      double value9 = double.parse(thickinsulrestController9.text);
      minValue = value9 < minValue ? value9 : minValue;
    }
    if (double.tryParse(thickinsulrestController10.text) != null) {
      double value10 = double.parse(thickinsulrestController10.text);
      minValue = value10 < minValue ? value10 : minValue;
    }
    if (double.tryParse(thickinsulrestController11.text) != null) {
      double value11 = double.parse(thickinsulrestController11.text);
      minValue = value11 < minValue ? value11 : minValue;
    }
    if (double.tryParse(thickinsulrestController12.text) != null) {
      double value12 = double.parse(thickinsulrestController12.text);
      minValue = value12 < minValue ? value12 : minValue;
    }
    setState(() {
      thickinsulrestController.text = minValue.toString();
      object.thickinsulrest = thickinsulrestController.text;
    });
  }

  void napr() {
    double napr = 0.0;
    double ram = 5.0;
    double tum = 5.0;
    double biurs = 3.0;
    double thick =
        double.tryParse(thickinsulrestController.text.replaceAll(',', '.'));

    if (typeinsulrestController.text != null &&
        (typeinsulrestController.text ==
                'Грунтовка + РАМ 1 слой + Литкор НК Газ' ||
            typeinsulrestController.text ==
                'Грунтовка + РАМ 2 слоя + Литкор НК Газ')) {
      napr = ram * thick;
      contininsulrestController.text = napr.toStringAsFixed(2);
    } else if (typeinsulrestController.text != null &&
        typeinsulrestController.text == 'БИУРС') {
      napr = biurs * thick;
      contininsulrestController.text = napr.toStringAsFixed(2);
    } else if (typeinsulrestController.text != null &&
        typeinsulrestController.text == 'Термоусаживающаяся манжета') {
      napr = tum * thick + 5;
      contininsulrestController.text = napr.toStringAsFixed(2);
    } else {
      contininsulrestController.text =
          ""; // Сбросить значение, если условие не выполнено
    }
  }

  // void calcdewpoint() {
  //   double a = 17.27;
  //   double b = 237.7;
  //   double temperature =
  //       double.tryParse(tempairController.text.replaceAll(',', '.'));
  //   double relativeHumidity = 1.0;
  //   if (relathumidController.text != null) {
  //     double parsedValue =
  //         double.tryParse(relathumidController.text.replaceAll(',', '.'));
  //     if (parsedValue != null) {
  //       relativeHumidity = parsedValue;
  //     }
  //   }
  //   double dewpoint = (b *
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100))) /
  //       (a -
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100)));
  //   object.dewpoint = dewpoint.toStringAsFixed(2);
  //   dewpointController.text = object.dewpoint;
  //   print('Темп: $temperature');
  //   print('влажность: $relativeHumidity');
  //   print('ТОЧКА РОСЫ: $dewpoint');
  // }
  void calcdewpoint() {
    double a = 17.27;
    double b = 237.7;
    double temperature =
        double.tryParse(tempairController.text.replaceAll(',', '.')) ?? 0.0;
    double relativeHumidity = 1.0;

    if (relathumidController.text != null) {
      double parsedValue =
          double.tryParse(relathumidController.text.replaceAll(',', '.')) ??
              0.0;
      if (parsedValue != null) {
        relativeHumidity = parsedValue;
      }
    }

    double dewpoint = (b *
            (((a * temperature) / (b + temperature)) +
                log(relativeHumidity / 100))) /
        (a -
            (((a * temperature) / (b + temperature)) +
                log(relativeHumidity / 100)));

    object.dewpoint = dewpoint.toStringAsFixed(2);
    dewpointController.text = object.dewpoint;

    print('Темп: $temperature');
    print('влажность: $relativeHumidity');
    print('ТОЧКА РОСЫ: $dewpoint');
  }

  void confirmDelete() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Вы действительно хотите удалить запись?',
            style: TextStyle(fontSize: 15.0)),
        actions: <Widget>[
          TextButton(
              child: const Text('Закрыть'),
              onPressed: () => Navigator.of(context).pop()),
          TextButton(
              child: const Text(
                'Удалить',
                style: TextStyle(
                    color: Color.fromRGBO(187, 30, 16, 1.0),
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                helper.deleteTodo(object.id);
                Navigator.of(context).pop();
                Navigator.pop(context, true);
              })
        ],
      ),
    );
  }

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      locationData = '${position.latitude} / ${position.longitude}';
      locationController.text = locationData;
      object.location = locationData;
    });
  }

  void saveForm1() {
    final form = _1formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm12() {
    final form = _1formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm2() {
    final form = _2formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm22() {
    final form = _2formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm3() {
    final form = _3formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm32() {
    final form = _3formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm4() {
    final form = _4formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm42() {
    final form = _4formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm5() {
    final form = _5formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm52() {
    final form = _5formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm6() {
    final form = _6formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm62() {
    final form = _6formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm7() {
    final form = _7formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm72() {
    final form = _7formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm8() {
    final form = _8formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm82() {
    final form = _8formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateTodo(object);
      } else {
        helper.insertTodo(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void updateTitle() {
    setState(() {
      object.title == titleController.text;
    });
  }

  void updatePiketkm() {
    setState(() {
      object.piketkm = piketkmController.text;
    });
  }

  void updateCoordinate() {
    setState(() {
      object.coordinate = coordinateController.text;
    });
  }

  void updateLengthpit() {
    setState(() {
      object.lengthpit = lengthpitController.text;
    });
  }

  void updateDepthpit() {
    setState(() {
      object.depthpit = depthpitController.text;
    });
  }

  void updateOsnovanie() {
    setState(() {
      object.osnovanie = osnovanieController.text;
    });
  }

  void updateDescription() {
    setState(() {
      object.description = descriptionController.text;
    });
  }

  void updateDiameter() {
    setState(() {
      object.diameter = diameterController.text;
    });
  }

  void updateThickpipe() {
    setState(() {
      object.thickpipe = thickpipeController.text;
    });
  }

  void updateGradesteele() {
    setState(() {
      object.gradesteel = gradesteelController.text;
    });
  }

  void updateMetalldamage() {
    setState(() {
      object.metalldamage = metalldamageController.text;
    });
  }

  void updateCharmetdamage1() {
    setState(() {
      object.charmetdamage1 = charmetdamageController1.text;
    });
  }

  // void updateLocmetdamage1() {
  //   setState(() {
  //     object.locmetdamage1 = locmetdamageController1.text;
  //   });
  // }

  // void updateSizemetdamage1() {
  //   setState(() {
  //     object.sizemetdamage1 = sizemetdamageController1.text;
  //   });
  // }

  void updateTypeinsul() {
    setState(() {
      object.typeinsul = typeinsulController.text;
    });
  }

  // void updateInsuladhes() {
  //   setState(() {
  //     object.insuladhes = insuladhesController.text;
  //   });
  // }

  // void updateInsulcharadhes() {
  //   setState(() {
  //     object.insulcharadhes = insulcharadhesController.text;
  //   });
  // }

  // void updateInsulcondit() {
  //   setState(() {
  //     object.insulcondit = insulconditController.text;
  //   });
  // }

  // void updateThickinsul() {
  //   setState(() {
  //     object.thickinsul = thickinsulController.text;
  //   });
  // }

  void updateInsuldamage() {
    setState(() {
      object.insuldamage = insuldamageController.text;
    });
  }

  void updateCharinsuldamage1() {
    setState(() {
      object.charinsuldamage1 = charinsuldamageController1.text;
    });
  }

  // void updateLocinsuldamage1() {
  //   setState(() {
  //     object.locinsuldamage1 = locinsuldamageController1.text;
  //   });
  // }

  // void updateSizeinsuldamage1() {
  //   setState(() {
  //     object.sizeinsuldamage1 = sizeinsuldamageController1.text;
  //   });
  // }

  void updateTypeinsulrest() {
    setState(() {
      object.typeinsulrest = typeinsulrestController.text;
    });
  }

  void updateInsuladhesrest() {
    setState(() {
      object.insuladhesrest = insuladhesrestController.text;
    });
  }

  void updateThickinsulrest() {
    setState(() {
      object.thickinsulrest = thickinsulrestController.text;
    });
  }

  void updateContininsulrest() {
    setState(() {
      object.contininsulrest = contininsulrestController.text;
    });
  }

  void updateTickinsulmeter() {
    setState(() {
      object.tickinsulmeter = tickinsulmeterController.text;
    });
  }

  void updateTickmetallmeter() {
    setState(() {
      object.tickmetallmeter = tickmetallmeterController.text;
    });
  }

  void updateAdhesmeter() {
    setState(() {
      object.adhesmeter = adhesmeterController.text;
    });
  }

  void updateContinmeter() {
    setState(() {
      object.continmeter = continmeterController.text;
    });
  }

  void updateSetvik() {
    setState(() {
      object.setvik = setvikController.text;
    });
  }

  void updatedateObsl() {
    setState(() {
      object.dateObsl = dateObslController.text;
    });
  }
}
