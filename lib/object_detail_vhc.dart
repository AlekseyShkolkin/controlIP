import 'dart:io';

import 'package:excel/excel.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import './camera_page_vhc.dart';
import './img_screen_ip.dart';
import './model_vh_contr.dart';
import './object_list_vhc.dart';

class ObjectDetailVhC extends StatefulWidget {
  const ObjectDetailVhC({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailVhCState(object);
}

class ObjectDetailVhCState extends State<ObjectDetailVhC> {
  Todo object;

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
  FocusNode focusNode21 = FocusNode();
  FocusNode focusNode22 = FocusNode();
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
    'УАВР',
    'нет данных'
  ];
  final List<String> _dolzhnpredskom = [
    'Начальник',
    'Главный инженер-заместитель начальника',
    'Заместитель начальника',
    'Начальник службы ЗоК',
    'ВрИО начальника службы ЗоК',
    'ИО начальника службы ЗоК',
    'Начальник участка',
    'Инженер',
    'Мастер',
    'Специалист',
    'Дефектоскопист',
    'Инспектор',
    'нет данных',
  ];
  final List<String> _dolzhnproizvrab = [
    'Инженер',
    'Мастер',
    'Начальник участка',
    'Начальник службы',
    'Монтёр ЗПТК',
    'Электромонтёр по РиОЭ',
    'нет данных',
  ];

  final List<String> _zaklkachestvo = [
    'Соответствует',
    'Не соответствует',
    'нет данных'
  ];

  File _image;

  TextEditingController titleController = TextEditingController();
  TextEditingController dateProizvController = TextEditingController();
  TextEditingController dateObslController = TextEditingController();
  TextEditingController tuController = TextEditingController();
  TextEditingController partiyaController = TextEditingController();
  TextEditingController proizvoditelController = TextEditingController();
  TextEditingController sertifikatController = TextEditingController();

  TextEditingController photo1Controller = TextEditingController();
  TextEditingController photo2Controller = TextEditingController();
  TextEditingController photo3Controller = TextEditingController();
  TextEditingController photo4Controller = TextEditingController();
  TextEditingController photo5Controller = TextEditingController();

  TextEditingController pokazatelname1Controller = TextEditingController();
  TextEditingController ntdpokazatel1Controller = TextEditingController();
  TextEditingController normatupokazatel1Controller = TextEditingController();
  TextEditingController sertpokazatel1Controller = TextEditingController();
  TextEditingController itogpokazatel1Controller = TextEditingController();

  TextEditingController pokazatelname2Controller = TextEditingController();
  TextEditingController ntdpokazatel2Controller = TextEditingController();
  TextEditingController normatupokazatel2Controller = TextEditingController();
  TextEditingController sertpokazatel2Controller = TextEditingController();
  TextEditingController itogpokazatel2Controller = TextEditingController();

  TextEditingController pokazatelname3Controller = TextEditingController();
  TextEditingController ntdpokazatel3Controller = TextEditingController();
  TextEditingController normatupokazatel3Controller = TextEditingController();
  TextEditingController sertpokazatel3Controller = TextEditingController();
  TextEditingController itogpokazatel3Controller = TextEditingController();

  TextEditingController pokazatelname4Controller = TextEditingController();
  TextEditingController ntdpokazatel4Controller = TextEditingController();
  TextEditingController normatupokazatel4Controller = TextEditingController();
  TextEditingController sertpokazatel4Controller = TextEditingController();
  TextEditingController itogpokazatel4Controller = TextEditingController();

  TextEditingController pokazatelname5Controller = TextEditingController();
  TextEditingController ntdpokazatel5Controller = TextEditingController();
  TextEditingController normatupokazatel5Controller = TextEditingController();
  TextEditingController sertpokazatel5Controller = TextEditingController();
  TextEditingController itogpokazatel5Controller = TextEditingController();

  TextEditingController zaklkachestvoController = TextEditingController();
  TextEditingController filialController = TextEditingController();
  TextEditingController dolzhnpredskomController = TextEditingController();
  TextEditingController fiopredskomController = TextEditingController();
  TextEditingController dolzhnproizvrabController = TextEditingController();
  TextEditingController fioproizvrabController = TextEditingController();

  TextEditingController zamechanieController = TextEditingController();
  TextEditingController dopolnitelno1Controller = TextEditingController();
  TextEditingController dopolnitelno2Controller = TextEditingController();
  TextEditingController priborname1Controller = TextEditingController();
  TextEditingController pribornumb1Controller = TextEditingController();
  TextEditingController pribordate1Controller = TextEditingController();
  TextEditingController priborname2Controller = TextEditingController();
  TextEditingController pribornumb2Controller = TextEditingController();
  TextEditingController pribordate2Controller = TextEditingController();
  TextEditingController priborname3Controller = TextEditingController();
  TextEditingController pribornumb3Controller = TextEditingController();
  TextEditingController pribordate3Controller = TextEditingController();
  TextEditingController priborname4Controller = TextEditingController();
  TextEditingController pribornumb4Controller = TextEditingController();
  TextEditingController pribordate4Controller = TextEditingController();
  TextEditingController priborname5Controller = TextEditingController();
  TextEditingController pribornumb5Controller = TextEditingController();
  TextEditingController pribordate5Controller = TextEditingController();

  bool isEdit;
  final GlobalKey<FormState> _1formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _2formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _3formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _4formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _5formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isEdit = object.title == '' ? false : true;
    titleController.text = object.title ?? '';
    dateProizvController.text = object.dateProizv ?? '';
    dateObslController.text = object.dateObsl ?? '';
    tuController.text = object.tu ?? '';
    partiyaController.text = object.partiya ?? '';
    proizvoditelController.text = object.proizvoditel ?? '';
    sertifikatController.text = object.sertifikat ?? '';

    photo1Controller.text = object.photo1 ?? '';
    photo2Controller.text = object.photo2 ?? '';
    photo3Controller.text = object.photo3 ?? '';
    photo4Controller.text = object.photo4 ?? '';
    photo5Controller.text = object.photo5 ?? '';

    pokazatelname1Controller.text = object.pokazatelname1 ?? '';
    ntdpokazatel1Controller.text = object.ntdpokazatel1 ?? '';
    normatupokazatel1Controller.text = object.normatupokazatel1 ?? '';
    sertpokazatel1Controller.text = object.sertpokazatel1 ?? '';
    itogpokazatel1Controller.text = object.itogpokazatel1 ?? '';

    pokazatelname2Controller.text = object.pokazatelname2 ?? '';
    ntdpokazatel2Controller.text = object.ntdpokazatel2 ?? '';
    normatupokazatel2Controller.text = object.normatupokazatel2 ?? '';
    sertpokazatel2Controller.text = object.sertpokazatel2 ?? '';
    itogpokazatel2Controller.text = object.itogpokazatel2 ?? '';

    pokazatelname3Controller.text = object.pokazatelname3 ?? '';
    ntdpokazatel3Controller.text = object.ntdpokazatel3 ?? '';
    normatupokazatel3Controller.text = object.normatupokazatel3 ?? '';
    sertpokazatel3Controller.text = object.sertpokazatel3 ?? '';
    itogpokazatel3Controller.text = object.itogpokazatel3 ?? '';

    pokazatelname4Controller.text = object.pokazatelname4 ?? '';
    ntdpokazatel4Controller.text = object.ntdpokazatel4 ?? '';
    normatupokazatel4Controller.text = object.normatupokazatel4 ?? '';
    sertpokazatel4Controller.text = object.sertpokazatel4 ?? '';
    itogpokazatel4Controller.text = object.itogpokazatel4 ?? '';

    pokazatelname5Controller.text = object.pokazatelname5 ?? '';
    ntdpokazatel5Controller.text = object.ntdpokazatel5 ?? '';
    normatupokazatel5Controller.text = object.normatupokazatel5 ?? '';
    sertpokazatel5Controller.text = object.sertpokazatel5 ?? '';
    itogpokazatel5Controller.text = object.itogpokazatel5 ?? '';

    zaklkachestvoController.text = object.zaklkachestvo ?? '';
    filialController.text = object.filial ?? '';
    dolzhnpredskomController.text = object.dolzhnpredskom ?? '';
    fiopredskomController.text = object.fiopredskom ?? '';
    dolzhnproizvrabController.text = object.dolzhnproizvrab ?? '';
    fioproizvrabController.text = object.fioproizvrab ?? '';

    zamechanieController.text = object.zamechanie ?? '';
    dopolnitelno1Controller.text = object.dopolnitelno1 ?? '';
    dopolnitelno2Controller.text = object.dopolnitelno2 ?? '';
    priborname1Controller.text = object.priborname1 ?? '';
    pribornumb1Controller.text = object.pribornumb1 ?? '';
    pribordate1Controller.text = object.pribordate1 ?? '';

    priborname2Controller.text = object.priborname2 ?? '';
    pribornumb2Controller.text = object.pribornumb2 ?? '';
    pribordate2Controller.text = object.pribordate2 ?? '';
    priborname3Controller.text = object.priborname3 ?? '';
    pribornumb3Controller.text = object.pribornumb3 ?? '';
    pribordate3Controller.text = object.pribordate3 ?? '';

    priborname4Controller.text = object.priborname4 ?? '';
    pribornumb4Controller.text = object.pribornumb4 ?? '';
    pribordate4Controller.text = object.pribordate4 ?? '';
    priborname5Controller.text = object.priborname5 ?? '';
    pribornumb5Controller.text = object.pribornumb5 ?? '';
    pribordate5Controller.text = object.pribordate5 ?? '';
  }

  ObjectDetailVhCState(this.object);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: isEdit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'ИЗМЕНИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
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
                          }
                        },
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'ДОБАВИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
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
                Tab(
                    icon: Icon(
                  Icons.build_circle_sharp,
                  size: 32,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.person_add_alt_rounded,
                  size: 32,
                  // color: Colors.white,
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
                          child: Text(
                            'ОБЩИЕ ДАННЫЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.title = value;
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
                          labelText: 'Наименование материала',
                          hintText: 'Введите название',
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
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.tu = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: tuController,
                        focusNode: focusNode2,
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
                          labelText: 'ТУ (ГОСТ) на лакокрасочный материал',
                          hintText: 'Введите ТУ (ГОСТ)',
                          prefixIcon: Icon(
                            Icons.import_contacts,
                            color: focusNode2.hasFocus ||
                                    tuController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tuController.clear();
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
                            focusNode2.requestFocus();
                            object.tu = value;
                            object.tu = tuController.text;
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
                              child: Text(
                                'Дата производства:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Дата проверки:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            focusNode: focusNode3,
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
                                  dateProizvController.text =
                                      DateFormat('dd.MM.yyyy')
                                          .format(selectedDate);
                                  object.dateProizv = dateProizvController.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode3.hasFocus ||
                                      dateProizvController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              dateProizvController.text,
                              style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: IconButton(
                              focusNode: focusNode4,
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
                                    dateObslController.text =
                                        DateFormat('dd.MM.yyyy')
                                            .format(selectedDate);
                                    object.dateObsl = dateObslController.text;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.calendar_month_outlined,
                                color: focusNode4.hasFocus ||
                                        dateObslController.text.isNotEmpty
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
                              dateObslController.text,
                              style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.partiya = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: partiyaController,
                        focusNode: focusNode5,
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
                          labelText: 'Партия',
                          hintText: 'Введите номер партии',
                          prefixIcon: Icon(
                            Icons.account_balance_outlined,
                            color: focusNode5.hasFocus ||
                                    partiyaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tuController.clear();
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
                            focusNode5.requestFocus();
                            object.partiya = value;
                            object.partiya = partiyaController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.proizvoditel = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: proizvoditelController,
                        focusNode: focusNode6,
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
                          labelText: 'Производитель материала',
                          hintText: 'Введите название производителя',
                          prefixIcon: Icon(
                            Icons.local_offer,
                            color: focusNode6.hasFocus ||
                                    proizvoditelController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              proizvoditelController.clear();
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
                            focusNode6.requestFocus();
                            object.proizvoditel = value;
                            object.proizvoditel = proizvoditelController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.sertifikat = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: sertifikatController,
                        focusNode: focusNode7,
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
                          labelText: 'Сертификат(паспорт) качества материала',
                          hintText: 'Введите номер сертификата (паспорта)',
                          prefixIcon: Icon(
                            Icons.assignment,
                            color: focusNode7.hasFocus ||
                                    sertifikatController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              sertifikatController.clear();
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
                            focusNode7.requestFocus();
                            object.sertifikat = value;
                            object.sertifikat = sertifikatController.text;
                          });
                        },
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
                            'ДАННЫЕ ОБ ИСПЫТАНИЯХ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
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
                                            'Показатель №1',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pokazatelname1Controller.clear();
                                              ntdpokazatel1Controller.clear();
                                              normatupokazatel1Controller
                                                  .clear();
                                              sertpokazatel1Controller.clear();
                                              itogpokazatel1Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode8,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode8.requestFocus();
                                          object.pokazatelname1 = value;
                                          object.pokazatelname1 =
                                              pokazatelname1Controller.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.pokazatelname1 = value;
                                      },
                                      controller: pokazatelname1Controller,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Наименование показателя',
                                        hintText: 'Введите Наименование',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.grade,
                                          color: focusNode8.hasFocus ||
                                                  pokazatelname1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode9,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode9.requestFocus();
                                          object.ntdpokazatel1 = value;
                                          object.ntdpokazatel1 =
                                              ntdpokazatel1Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.ntdpokazatel1 = value;
                                      },
                                      controller: ntdpokazatel1Controller,
                                      style: textStyle,
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
                                        labelText: 'НТД на метод испытания',
                                        hintText: 'Введите НТД',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.library_books,
                                          color: focusNode9.hasFocus ||
                                                  ntdpokazatel1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode10,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode10.requestFocus();
                                          object.normatupokazatel1 = value;
                                          object.normatupokazatel1 =
                                              normatupokazatel1Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.normatupokazatel1 = value;
                                      },
                                      controller: normatupokazatel1Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Норма по ТУ(ГОСТ) на материал',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.poll,
                                          color: focusNode10.hasFocus ||
                                                  normatupokazatel1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode11,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode11.requestFocus();
                                          object.sertpokazatel1 = value;
                                          object.sertpokazatel1 =
                                              sertpokazatel1Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.sertpokazatel1 = value;
                                      },
                                      controller: sertpokazatel1Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Данные сертификата (паспорта)',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_notes,
                                          color: focusNode11.hasFocus ||
                                                  sertpokazatel1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode12,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode12.requestFocus();
                                          object.itogpokazatel1 = value;
                                          object.itogpokazatel1 =
                                              itogpokazatel1Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.itogpokazatel1 = value;
                                      },
                                      controller: itogpokazatel1Controller,
                                      style: textStyle,
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
                                        labelText: 'Данные входного контроля',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.sms,
                                          color: focusNode12.hasFocus ||
                                                  itogpokazatel1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
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
                                            'Показатель №2',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pokazatelname2Controller.clear();
                                              ntdpokazatel2Controller.clear();
                                              normatupokazatel2Controller
                                                  .clear();
                                              sertpokazatel2Controller.clear();
                                              itogpokazatel2Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode13,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode13.requestFocus();
                                          object.pokazatelname2 = value;
                                          object.pokazatelname2 =
                                              pokazatelname2Controller.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.pokazatelname2 = value;
                                      },
                                      controller: pokazatelname2Controller,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Наименование показателя',
                                        hintText: 'Введите Наименование',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.grade,
                                          color: focusNode13.hasFocus ||
                                                  pokazatelname2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode14,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode14.requestFocus();
                                          object.ntdpokazatel2 = value;
                                          object.ntdpokazatel2 =
                                              ntdpokazatel2Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.ntdpokazatel2 = value;
                                      },
                                      controller: ntdpokazatel2Controller,
                                      style: textStyle,
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
                                        labelText: 'НТД на метод испытания',
                                        hintText: 'Введите НТД',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.library_books,
                                          color: focusNode14.hasFocus ||
                                                  ntdpokazatel2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode15,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode15.requestFocus();
                                          object.normatupokazatel2 = value;
                                          object.normatupokazatel2 =
                                              normatupokazatel2Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.normatupokazatel2 = value;
                                      },
                                      controller: normatupokazatel2Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Норма по ТУ(ГОСТ) на материал',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.poll,
                                          color: focusNode15.hasFocus ||
                                                  normatupokazatel2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode16,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode16.requestFocus();
                                          object.sertpokazatel2 = value;
                                          object.sertpokazatel2 =
                                              sertpokazatel2Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.sertpokazatel2 = value;
                                      },
                                      controller: sertpokazatel2Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Данные сертификата (паспорта)',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_notes,
                                          color: focusNode16.hasFocus ||
                                                  sertpokazatel2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode17,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode17.requestFocus();
                                          object.itogpokazatel2 = value;
                                          object.itogpokazatel2 =
                                              itogpokazatel2Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.itogpokazatel2 = value;
                                      },
                                      controller: itogpokazatel2Controller,
                                      style: textStyle,
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
                                        labelText: 'Данные входного контроля',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.sms,
                                          color: focusNode17.hasFocus ||
                                                  itogpokazatel2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
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
                                            'Показатель №3',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pokazatelname3Controller.clear();
                                              ntdpokazatel3Controller.clear();
                                              normatupokazatel3Controller
                                                  .clear();
                                              sertpokazatel3Controller.clear();
                                              itogpokazatel3Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode18,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode18.requestFocus();
                                          object.pokazatelname3 = value;
                                          object.pokazatelname3 =
                                              pokazatelname3Controller.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.pokazatelname3 = value;
                                      },
                                      controller: pokazatelname3Controller,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Наименование показателя',
                                        hintText: 'Введите Наименование',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.grade,
                                          color: focusNode18.hasFocus ||
                                                  pokazatelname3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode19,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode19.requestFocus();
                                          object.ntdpokazatel3 = value;
                                          object.ntdpokazatel3 =
                                              ntdpokazatel3Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.ntdpokazatel3 = value;
                                      },
                                      controller: ntdpokazatel3Controller,
                                      style: textStyle,
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
                                        labelText: 'НТД на метод испытания',
                                        hintText: 'Введите НТД',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.library_books,
                                          color: focusNode19.hasFocus ||
                                                  ntdpokazatel3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode20,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode20.requestFocus();
                                          object.normatupokazatel3 = value;
                                          object.normatupokazatel3 =
                                              normatupokazatel3Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.normatupokazatel3 = value;
                                      },
                                      controller: normatupokazatel3Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Норма по ТУ(ГОСТ) на материал',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.poll,
                                          color: focusNode20.hasFocus ||
                                                  normatupokazatel3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode21,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode21.requestFocus();
                                          object.sertpokazatel3 = value;
                                          object.sertpokazatel3 =
                                              sertpokazatel3Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.sertpokazatel3 = value;
                                      },
                                      controller: sertpokazatel3Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Данные сертификата (паспорта)',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_notes,
                                          color: focusNode21.hasFocus ||
                                                  sertpokazatel3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode22,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode22.requestFocus();
                                          object.itogpokazatel3 = value;
                                          object.itogpokazatel3 =
                                              itogpokazatel3Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.itogpokazatel3 = value;
                                      },
                                      controller: itogpokazatel3Controller,
                                      style: textStyle,
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
                                        labelText: 'Данные входного контроля',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.sms,
                                          color: focusNode22.hasFocus ||
                                                  itogpokazatel3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
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
                                            'Показатель №4',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pokazatelname4Controller.clear();
                                              ntdpokazatel4Controller.clear();
                                              normatupokazatel4Controller
                                                  .clear();
                                              sertpokazatel4Controller.clear();
                                              itogpokazatel4Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode23,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode23.requestFocus();
                                          object.pokazatelname4 = value;
                                          object.pokazatelname4 =
                                              pokazatelname4Controller.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.pokazatelname4 = value;
                                      },
                                      controller: pokazatelname4Controller,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Наименование показателя',
                                        hintText: 'Введите Наименование',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.grade,
                                          color: focusNode24.hasFocus ||
                                                  pokazatelname4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode25,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode25.requestFocus();
                                          object.ntdpokazatel4 = value;
                                          object.ntdpokazatel4 =
                                              ntdpokazatel4Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.ntdpokazatel4 = value;
                                      },
                                      controller: ntdpokazatel4Controller,
                                      style: textStyle,
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
                                        labelText: 'НТД на метод испытания',
                                        hintText: 'Введите НТД',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.library_books,
                                          color: focusNode25.hasFocus ||
                                                  ntdpokazatel4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode26,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode26.requestFocus();
                                          object.normatupokazatel4 = value;
                                          object.normatupokazatel4 =
                                              normatupokazatel4Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.normatupokazatel4 = value;
                                      },
                                      controller: normatupokazatel4Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Норма по ТУ(ГОСТ) на материал',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.poll,
                                          color: focusNode26.hasFocus ||
                                                  normatupokazatel4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode27,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode27.requestFocus();
                                          object.sertpokazatel4 = value;
                                          object.sertpokazatel4 =
                                              sertpokazatel4Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.sertpokazatel4 = value;
                                      },
                                      controller: sertpokazatel4Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Данные сертификата (паспорта)',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_notes,
                                          color: focusNode27.hasFocus ||
                                                  sertpokazatel4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode28,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode28.requestFocus();
                                          object.itogpokazatel4 = value;
                                          object.itogpokazatel4 =
                                              itogpokazatel4Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.itogpokazatel4 = value;
                                      },
                                      controller: itogpokazatel4Controller,
                                      style: textStyle,
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
                                        labelText: 'Данные входного контроля',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.sms,
                                          color: focusNode28.hasFocus ||
                                                  itogpokazatel4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
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
                                            'Показатель №5',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pokazatelname5Controller.clear();
                                              ntdpokazatel5Controller.clear();
                                              normatupokazatel5Controller
                                                  .clear();
                                              sertpokazatel5Controller.clear();
                                              itogpokazatel5Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode29,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode29.requestFocus();
                                          object.pokazatelname5 = value;
                                          object.pokazatelname5 =
                                              pokazatelname5Controller.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.pokazatelname5 = value;
                                      },
                                      controller: pokazatelname5Controller,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Наименование показателя',
                                        hintText: 'Введите Наименование',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.grade,
                                          color: focusNode29.hasFocus ||
                                                  pokazatelname5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode30,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode30.requestFocus();
                                          object.ntdpokazatel5 = value;
                                          object.ntdpokazatel5 =
                                              ntdpokazatel5Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.ntdpokazatel5 = value;
                                      },
                                      controller: ntdpokazatel5Controller,
                                      style: textStyle,
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
                                        labelText: 'НТД на метод испытания',
                                        hintText: 'Введите НТД',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.library_books,
                                          color: focusNode30.hasFocus ||
                                                  ntdpokazatel5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode31,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode31.requestFocus();
                                          object.normatupokazatel5 = value;
                                          object.normatupokazatel5 =
                                              normatupokazatel5Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.normatupokazatel5 = value;
                                      },
                                      controller: normatupokazatel5Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Норма по ТУ(ГОСТ) на материал',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.poll,
                                          color: focusNode31.hasFocus ||
                                                  normatupokazatel5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode32,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode32.requestFocus();
                                          object.sertpokazatel5 = value;
                                          object.sertpokazatel5 =
                                              sertpokazatel5Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.sertpokazatel5 = value;
                                      },
                                      controller: sertpokazatel5Controller,
                                      style: textStyle,
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
                                        labelText:
                                            'Данные сертификата (паспорта)',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_notes,
                                          color: focusNode32.hasFocus ||
                                                  sertpokazatel5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode33,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode33.requestFocus();
                                          object.itogpokazatel5 = value;
                                          object.itogpokazatel5 =
                                              itogpokazatel5Controller.text;
                                        });
                                      },
                                      maxLength: 10,
                                      onSaved: (value) {
                                        object.itogpokazatel5 = value;
                                      },
                                      controller: itogpokazatel5Controller,
                                      style: textStyle,
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
                                        labelText: 'Данные входного контроля',
                                        hintText: 'Введите значение',
                                        helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.sms,
                                          color: focusNode33.hasFocus ||
                                                  itogpokazatel5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
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
                          child: Text(
                            'ЗАКЛЮЧЕНИЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode34,
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
                            color: focusNode34.hasFocus ||
                                    zaklkachestvoController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Заключение о соответствии нормам',
                        ),
                        items: _zaklkachestvo.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.zaklkachestvo,
                        onChanged: (String value) {
                          setState(() {
                            focusNode34.requestFocus();
                            object.zaklkachestvo = value;
                            object.zaklkachestvo = zaklkachestvoController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.zamechanie = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: zamechanieController,
                        focusNode: focusNode35,
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
                          labelText: 'Замечания',
                          hintText: 'Введите текст замечаний',
                          prefixIcon: Icon(
                            Icons.account_balance_outlined,
                            color: focusNode35.hasFocus ||
                                    zamechanieController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              sertifikatController.clear();
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
                            object.zamechanie = value;
                            object.zamechanie = zamechanieController.text;
                            focusNode35.requestFocus();
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 1000,
                        onSaved: (value) {
                          object.dopolnitelno1 = value;
                        },
                        controller: dopolnitelno1Controller,
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
                                      builder: (context) => CameraPageVhc()),
                                ).then((value) {
                                  setState(() async {
                                    if (value != null) {
                                      _image = value;
                                      if (_3formKey.currentState.validate()) {
                                        _3formKey.currentState.save();
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
                                          object.photo1 = filePath;
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
                                            imagePath: object.photo1)),
                                  );
                                },
                                child: Center(
                                  child: object.photo1 != null
                                      ? Image.file(
                                          File(object.photo1),
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Прибор №1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          priborname1Controller.clear();
                                          pribornumb1Controller.clear();
                                          pribordate1Controller.clear();
                                        },
                                        child: Icon(
                                          Icons.delete_outline,
                                          color:
                                              Color.fromRGBO(187, 30, 16, 1.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode36,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode36.requestFocus();
                                          object.priborname1 = value;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.priborname1 = value;
                                        object.priborname1 =
                                            priborname1Controller.text;
                                      },
                                      controller: priborname1Controller,
                                      style: textStyle,
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
                                        labelText: 'Наименование прибора №1',
                                        hintText: 'Введите название',
                                        // helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.power,
                                          color: focusNode36.hasFocus ||
                                                  priborname1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode37,
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode37.requestFocus();
                                                object.pribornumb1 = value;
                                                object.pribornumb1 =
                                                    pribornumb1Controller.text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.pribornumb1 = value;
                                            },
                                            controller: pribornumb1Controller,
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
                                              labelText: '№',
                                              hintText: '№',
                                              helperText: '№....',
                                              prefixIcon: Icon(
                                                Icons.power,
                                                color: focusNode37.hasFocus ||
                                                        pribornumb1Controller
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
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: IconButton(
                                                  focusNode: focusNode38,
                                                  onPressed: () async {
                                                    DateTime currentDay =
                                                        DateTime.now();
                                                    DateTime initialDay =
                                                        currentDay.subtract(
                                                            Duration(
                                                                days: 3 * 365));
                                                    DateTime selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: initialDay,
                                                      lastDate: DateTime.now(),
                                                      locale: const Locale("ru",
                                                          "RU"), // Установите локаль на русский язык
                                                    );

                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        pribordate1Controller
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.pribordate1 =
                                                            pribordate1Controller
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode38
                                                                .hasFocus ||
                                                            pribordate1Controller
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    pribordate1Controller.text,
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                            'Прибор №2',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              priborname2Controller.clear();
                                              pribornumb2Controller.clear();
                                              pribordate2Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode39,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode39.requestFocus();
                                          object.priborname2 = value;
                                          object.priborname2 =
                                              priborname2Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.priborname2 = value;
                                      },
                                      controller: priborname2Controller,
                                      style: textStyle,
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
                                        labelText: 'Наименование прибора №2',
                                        hintText: 'Введите название',
                                        // helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.speaker_phone,
                                          color: focusNode39.hasFocus ||
                                                  priborname2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode40,
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode40.requestFocus();
                                                object.pribornumb2 = value;
                                                object.pribornumb2 =
                                                    pribornumb2Controller.text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.pribornumb2 = value;
                                            },
                                            controller: pribornumb2Controller,
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
                                              labelText: '№',
                                              hintText: '№',
                                              helperText: '№....',
                                              prefixIcon: Icon(
                                                Icons.speaker_phone,
                                                color: focusNode40.hasFocus ||
                                                        pribornumb2Controller
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
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: IconButton(
                                                  focusNode: focusNode41,
                                                  onPressed: () async {
                                                    DateTime currentDay =
                                                        DateTime.now();
                                                    DateTime initialDay =
                                                        currentDay.subtract(
                                                            Duration(
                                                                days: 3 * 365));
                                                    DateTime selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: initialDay,
                                                      lastDate: DateTime.now(),
                                                      locale: const Locale("ru",
                                                          "RU"), // Установите локаль на русский язык
                                                    );

                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        pribordate2Controller
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.pribordate2 =
                                                            pribordate2Controller
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode41
                                                                .hasFocus ||
                                                            pribordate2Controller
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    pribordate2Controller.text,
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                            'Прибор №3',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              priborname3Controller.clear();
                                              pribornumb3Controller.clear();
                                              pribordate3Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode42,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode42.requestFocus();
                                          object.priborname3 = value;
                                          object.priborname3 =
                                              priborname3Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.priborname3 = value;
                                      },
                                      controller: priborname3Controller,
                                      style: textStyle,
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
                                        labelText: 'Наименование прибора №3',
                                        hintText: 'Введите название',
                                        // helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.build,
                                          color: focusNode42.hasFocus ||
                                                  priborname3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode43,
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode43.requestFocus();
                                                object.pribornumb3 = value;
                                                object.pribornumb3 =
                                                    pribornumb3Controller.text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.pribornumb3 = value;
                                            },
                                            controller: pribornumb3Controller,
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
                                              labelText: '№',
                                              hintText: '№',
                                              helperText: '№....',
                                              prefixIcon: Icon(
                                                Icons.build,
                                                color: focusNode43.hasFocus ||
                                                        pribornumb3Controller
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
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: IconButton(
                                                  focusNode: focusNode44,
                                                  onPressed: () async {
                                                    DateTime currentDay =
                                                        DateTime.now();
                                                    DateTime initialDay =
                                                        currentDay.subtract(
                                                            Duration(
                                                                days: 3 * 365));
                                                    DateTime selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: initialDay,
                                                      lastDate: DateTime.now(),
                                                      locale: const Locale("ru",
                                                          "RU"), // Установите локаль на русский язык
                                                    );

                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        pribordate3Controller
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.pribordate3 =
                                                            pribordate3Controller
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode44
                                                                .hasFocus ||
                                                            pribordate3Controller
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    pribordate3Controller.text,
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                            'Прибор №4',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              priborname4Controller.clear();
                                              pribornumb4Controller.clear();
                                              pribordate4Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode45,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode45.requestFocus();
                                          object.priborname4 = value;
                                          object.priborname4 =
                                              priborname4Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.priborname4 = value;
                                      },
                                      controller: priborname4Controller,
                                      style: textStyle,
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
                                        labelText: 'Наименование прибора №4',
                                        hintText: 'Введите название',
                                        // helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.mode_edit,
                                          color: focusNode45.hasFocus ||
                                                  priborname4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode46,
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode46.requestFocus();
                                                object.pribornumb4 = value;
                                                object.pribornumb4 =
                                                    pribornumb4Controller.text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.pribornumb4 = value;
                                            },
                                            controller: pribornumb4Controller,
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
                                              labelText: '№',
                                              hintText: '№',
                                              helperText: '№....',
                                              prefixIcon: Icon(
                                                Icons.mode_edit,
                                                color: focusNode46.hasFocus ||
                                                        pribornumb4Controller
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
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: IconButton(
                                                  focusNode: focusNode47,
                                                  onPressed: () async {
                                                    DateTime currentDay =
                                                        DateTime.now();
                                                    DateTime initialDay =
                                                        currentDay.subtract(
                                                            Duration(
                                                                days: 3 * 365));
                                                    DateTime selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: initialDay,
                                                      lastDate: DateTime.now(),
                                                      locale: const Locale("ru",
                                                          "RU"), // Установите локаль на русский язык
                                                    );

                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        pribordate4Controller
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.pribordate4 =
                                                            pribordate4Controller
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode47
                                                                .hasFocus ||
                                                            pribordate4Controller
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    pribordate4Controller.text,
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                            'Прибор №5',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              priborname5Controller.clear();
                                              pribornumb5Controller.clear();
                                              pribordate5Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode48,
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode48.requestFocus();
                                          object.priborname5 = value;
                                          object.priborname5 =
                                              priborname5Controller.text;
                                        });
                                      },
                                      maxLength: 30,
                                      onSaved: (value) {
                                        object.priborname5 = value;
                                      },
                                      controller: priborname5Controller,
                                      style: textStyle,
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
                                        labelText: 'Наименование прибора №5',
                                        hintText: 'Введите название',
                                        // helperText: '...',
                                        prefixIcon: Icon(
                                          Icons.work,
                                          color: focusNode48.hasFocus ||
                                                  priborname5Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
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
                                      keyboardType: TextInputType.text,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode49,
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode49.requestFocus();
                                                object.pribornumb5 = value;
                                                object.pribornumb5 =
                                                    pribornumb5Controller.text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.pribornumb5 = value;
                                            },
                                            controller: pribornumb5Controller,
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
                                              labelText: '№',
                                              hintText: '№',
                                              helperText: '№....',
                                              prefixIcon: Icon(
                                                Icons.work,
                                                color: focusNode49.hasFocus ||
                                                        pribornumb5Controller
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
                                            keyboardType: TextInputType.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 56,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: IconButton(
                                                  focusNode: focusNode50,
                                                  onPressed: () async {
                                                    DateTime currentDay =
                                                        DateTime.now();
                                                    DateTime initialDay =
                                                        currentDay.subtract(
                                                            Duration(
                                                                days: 3 * 365));
                                                    DateTime selectedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: initialDay,
                                                      lastDate: DateTime.now(),
                                                      locale: const Locale("ru",
                                                          "RU"), // Установите локаль на русский язык
                                                    );

                                                    if (selectedDate != null) {
                                                      setState(() {
                                                        pribordate5Controller
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.pribordate5 =
                                                            pribordate5Controller
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode50
                                                                .hasFocus ||
                                                            pribordate5Controller
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    pribordate5Controller.text,
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                ],
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),

                      // SizedBox(height: 10),
                      Divider(thickness: 4),

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
                        focusNode: focusNode51,
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
                            color: focusNode51.hasFocus ||
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
                            focusNode51.requestFocus();
                            object.filial = value;
                            object.filial = filialController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        focusNode: focusNode52,
                        onChanged: (String value) {
                          setState(() {
                            focusNode52.requestFocus();
                            object.dolzhnpredskom = value;
                            object.dolzhnpredskom =
                                dolzhnpredskomController.text;
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
                            color: focusNode52.hasFocus ||
                                    dolzhnpredskomController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Должность ответственного лица',
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
                        focusNode: focusNode53,
                        onChanged: (String value) {
                          setState(() {
                            focusNode53.requestFocus();
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
                          labelText: 'ФИО ответственного лица',
                          hintText: 'Введите ФИО',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode53.hasFocus ||
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
                            Icons.person,
                            color: focusNode54.hasFocus ||
                                    dolzhnproizvrabController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Должность проводившего испытания',
                        ),
                        items: _dolzhnproizvrab.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dolzhnproizvrab,
                        onChanged: (String value) {
                          setState(() {
                            focusNode54.requestFocus();
                            object.dolzhnproizvrab = value;
                            object.dolzhnproizvrab =
                                dolzhnproizvrabController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode55,
                        onChanged: (String value) {
                          setState(() {
                            focusNode55.requestFocus();
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
                          labelText: 'ФИО проводившего испытания',
                          hintText: 'Введите ФИО',
                          helperText: 'Фамилия И.О.',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: focusNode55.hasFocus ||
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('VHK');
                        },
                        child: const Text(
                          'Сформировать Акт входного контроля (по форме СТО Газпром 9.1-035-2014)',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
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
      if (buttonName == 'VHK') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/VHK/VHK.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['VHK'];
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

        sheet.cell(CellIndex.indexByString("C8")).value =
            object.dateObsl ?? '-';
        sheet.cell(CellIndex.indexByString("D10")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("D12")).value = object.tu ?? '-';
        sheet.cell(CellIndex.indexByString("C14")).value =
            object.dateProizv ?? '-';
        sheet.cell(CellIndex.indexByString("B16")).value =
            object.partiya ?? '-';
        sheet.cell(CellIndex.indexByString("E18")).value =
            object.proizvoditel ?? '-';
        sheet.cell(CellIndex.indexByString("E20")).value =
            object.sertifikat ?? '-';

        sheet.cell(CellIndex.indexByString("A23")).value =
            object.pokazatelname1 != null ? '1' : '';
        sheet.cell(CellIndex.indexByString("B23")).value =
            object.pokazatelname1 ?? '-';
        sheet.cell(CellIndex.indexByString("C23")).value =
            object.ntdpokazatel1 ?? '-';
        sheet.cell(CellIndex.indexByString("D23")).value =
            object.normatupokazatel1 ?? '-';
        sheet.cell(CellIndex.indexByString("E23")).value =
            object.sertpokazatel1 ?? '-';
        sheet.cell(CellIndex.indexByString("F23")).value =
            object.itogpokazatel1 ?? '-';

        sheet.cell(CellIndex.indexByString("A24")).value =
            object.pokazatelname2 != null ? '2' : '';
        sheet.cell(CellIndex.indexByString("B24")).value =
            object.pokazatelname2 ?? '-';
        sheet.cell(CellIndex.indexByString("C24")).value =
            object.ntdpokazatel2 ?? '-';
        sheet.cell(CellIndex.indexByString("D24")).value =
            object.normatupokazatel2 ?? '-';
        sheet.cell(CellIndex.indexByString("E24")).value =
            object.sertpokazatel2 ?? '-';
        sheet.cell(CellIndex.indexByString("F24")).value =
            object.itogpokazatel2 ?? '-';

        sheet.cell(CellIndex.indexByString("A25")).value =
            object.pokazatelname3 != null ? '3' : '';
        sheet.cell(CellIndex.indexByString("B25")).value =
            object.pokazatelname3 ?? '-';
        sheet.cell(CellIndex.indexByString("C25")).value =
            object.ntdpokazatel3 ?? '-';
        sheet.cell(CellIndex.indexByString("D25")).value =
            object.normatupokazatel3 ?? '-';
        sheet.cell(CellIndex.indexByString("E25")).value =
            object.sertpokazatel3 ?? '-';
        sheet.cell(CellIndex.indexByString("F25")).value =
            object.itogpokazatel3 ?? '-';

        sheet.cell(CellIndex.indexByString("A26")).value =
            object.pokazatelname4 != null ? '4' : '';
        sheet.cell(CellIndex.indexByString("B26")).value =
            object.pokazatelname4 ?? '-';
        sheet.cell(CellIndex.indexByString("C26")).value =
            object.ntdpokazatel4 ?? '-';
        sheet.cell(CellIndex.indexByString("D26")).value =
            object.normatupokazatel4 ?? '-';
        sheet.cell(CellIndex.indexByString("E26")).value =
            object.sertpokazatel4 ?? '-';
        sheet.cell(CellIndex.indexByString("F26")).value =
            object.itogpokazatel4 ?? '-';

        sheet.cell(CellIndex.indexByString("A27")).value =
            object.pokazatelname5 != null ? '5' : '';
        sheet.cell(CellIndex.indexByString("B27")).value =
            object.pokazatelname5 ?? '-';
        sheet.cell(CellIndex.indexByString("C27")).value =
            object.ntdpokazatel5 ?? '-';
        sheet.cell(CellIndex.indexByString("D27")).value =
            object.normatupokazatel5 ?? '-';
        sheet.cell(CellIndex.indexByString("E27")).value =
            object.sertpokazatel5 ?? '-';
        sheet.cell(CellIndex.indexByString("F27")).value =
            object.itogpokazatel5 ?? '-';

        sheet.cell(CellIndex.indexByString("C29")).value =
            object.zaklkachestvo ?? '-';
        sheet.cell(CellIndex.indexByString("B31")).value =
            object.sertifikat ?? '-';

        sheet.cell(CellIndex.indexByString("A35")).value =
            object.dolzhnproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("E35")).value =
            object.fioproizvrab ?? '-';

        sheet.cell(CellIndex.indexByString("A37")).value =
            object.dolzhnpredskom ?? '-';
        sheet.cell(CellIndex.indexByString("E37")).value =
            object.fiopredskom ?? '-';

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
}
