import 'dart:math';
import 'dart:io';
import 'package:color_picker_camera/color_picker_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import './camera_page.dart';
import './img_screen_ip.dart';
import './objects_list_lkp.dart';
import './model_lkp.dart';
import 'package:excel/excel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_file/open_file.dart';

class ObjectDetail extends StatefulWidget {
  final Object object;
  ObjectDetail({Key key, this.object}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ObjectDetailState(object);
}

class ObjectDetailState extends State<ObjectDetail> {
  File _imageGrade;
  File _imageISO8501;
  File _imageDust;
  File _imageRoughness;
  File _imageAdhesion;
  File _imageColor;
  Todo object;
  int highestDegree;
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
  FocusNode focusNode10 = FocusNode(); //free
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
  FocusNode focusNode90 = FocusNode(); //free
  FocusNode focusNode91 = FocusNode();
  FocusNode focusNode92 = FocusNode();
  FocusNode focusNode93 = FocusNode();
  FocusNode focusNode94 = FocusNode();
  FocusNode focusNode95 = FocusNode();
  FocusNode focusNode96 = FocusNode(); //free
  FocusNode focusNode97 = FocusNode(); //free
  FocusNode focusNode98 = FocusNode(); //free
  FocusNode focusNode99 = FocusNode(); //free
  FocusNode focusNode100 = FocusNode(); //free
  FocusNode focusNode101 = FocusNode(); //free
  FocusNode focusNode102 = FocusNode(); //free
  FocusNode focusNode103 = FocusNode(); //free
  FocusNode focusNode104 = FocusNode(); //free
  FocusNode focusNode105 = FocusNode(); //free
  FocusNode focusNode106 = FocusNode(); //free
  FocusNode focusNode107 = FocusNode(); //free
  FocusNode focusNode108 = FocusNode(); //free
  FocusNode focusNode109 = FocusNode(); //free
  FocusNode focusNode110 = FocusNode(); //free
  FocusNode focusNode111 = FocusNode(); //free
  FocusNode focusNode112 = FocusNode(); //free
  FocusNode focusNode113 = FocusNode(); //free
  FocusNode focusNode114 = FocusNode(); //free
  FocusNode focusNode115 = FocusNode(); //free
  FocusNode focusNode116 = FocusNode(); //free

  List<File> images = [];

  final List<String> _dolzhnpredskom = [
    'Начальник',
    'Главный инженер-заместитель начальника',
    'Заместитель начальника',
    'нет данных'
  ];
  final List<String> _dolzhnproizvrab = [
    'Начальник службы ЗоК',
    'ВрИО начальника службы ЗоК',
    'ИО начальника службы ЗоК',
    'Начальник участка',
    'нет данных'
  ];

  final List<String> _dolzhnpredststroitSK = [
    'Монтёр ЗПТК',
    'Электромонтёр по РиОЭ',
    'Электромонтёр по РиМВЛ',
    'Электромонтёр по РиМКЛ',
    'нет данных'
  ];

  final List<String> _colorRal = [
    '1**** - жёлтые',
    '2**** - оранжевые',
    '3**** - красные',
    '4**** - фиолетовые',
    '5**** - синие',
    '6**** - зелёные',
    '7**** - серые',
    '8**** - коричневые',
    '9**** - светлые и тёмные',
    'нет данных'
  ];

  Map<String, String> imagePaths = {
    '1000': 'assets/images/1000.jpg',
    '1001': 'assets/images/1001.jpg',
    '1002': 'assets/images/1002.jpg',
    '1003': 'assets/images/1003.jpg',
    '1004': 'assets/images/1004.jpg',
    '1005': 'assets/images/1005.jpg',
    '1006': 'assets/images/1006.jpg',
    '1007': 'assets/images/1007.jpg',
    '1011': 'assets/images/1011.jpg',
    '1012': 'assets/images/1012.jpg',
    '1013': 'assets/images/1013.jpg',
    '1014': 'assets/images/1014.jpg',
    '1015': 'assets/images/1015.jpg',
    '1016': 'assets/images/1016.jpg',
    '1017': 'assets/images/1017.jpg',
    '1018': 'assets/images/1018.jpg',
    '1019': 'assets/images/1019.jpg',
    '1020': 'assets/images/1020.jpg',
    '1021': 'assets/images/1021.jpg',
    '1023': 'assets/images/1023.jpg',
    '1024': 'assets/images/1024.jpg',
    '1026': 'assets/images/1026.jpg',
    '1027': 'assets/images/1027.jpg',
    '1028': 'assets/images/1028.jpg',
    '1032': 'assets/images/1032.jpg',
    '1033': 'assets/images/1033.jpg',
    '1034': 'assets/images/1034.jpg',
    '1035': 'assets/images/1035.jpg',
    '1036': 'assets/images/1036.jpg',
    '1037': 'assets/images/1037.jpg',
    '2000': 'assets/images/2000.jpg',
    '2001': 'assets/images/2001.jpg',
    '2002': 'assets/images/2002.jpg',
    '2003': 'assets/images/2003.jpg',
    '2004': 'assets/images/2004.jpg',
    '2005': 'assets/images/2005.jpg',
    '2007': 'assets/images/2007.jpg',
    '2008': 'assets/images/2008.jpg',
    '2009': 'assets/images/2009.jpg',
    '2010': 'assets/images/2010.jpg',
    '2011': 'assets/images/2011.jpg',
    '2012': 'assets/images/2012.jpg',
    '2013': 'assets/images/2013.jpg',
    '2017': 'assets/images/2017.jpg',
    '3000': 'assets/images/3000.jpg',
    '3001': 'assets/images/3001.jpg',
    '3002': 'assets/images/3002.jpg',
    '3003': 'assets/images/3003.jpg',
    '3004': 'assets/images/3004.jpg',
    '3005': 'assets/images/3005.jpg',
    '3007': 'assets/images/3007.jpg',
    '3009': 'assets/images/3009.jpg',
    '3011': 'assets/images/3011.jpg',
    '3012': 'assets/images/3012.jpg',
    '3013': 'assets/images/3013.jpg',
    '3014': 'assets/images/3014.jpg',
    '3015': 'assets/images/3015.jpg',
    '3016': 'assets/images/3016.jpg',
    '3017': 'assets/images/3017.jpg',
    '3018': 'assets/images/3018.jpg',
    '3020': 'assets/images/3020.jpg',
    '3022': 'assets/images/3022.jpg',
    '3024': 'assets/images/3024.jpg',
    '3026': 'assets/images/3026.jpg',
    '3027': 'assets/images/3027.jpg',
    '3028': 'assets/images/3028.jpg',
    '3031': 'assets/images/3031.jpg',
    '3032': 'assets/images/3032.jpg',
    '3033': 'assets/images/3033.jpg',
    '4001': 'assets/images/4001.jpg',
    '4002': 'assets/images/4002.jpg',
    '4003': 'assets/images/4003.jpg',
    '4004': 'assets/images/4004.jpg',
    '4005': 'assets/images/4005.jpg',
    '4006': 'assets/images/4006.jpg',
    '4007': 'assets/images/4007.jpg',
    '4008': 'assets/images/4008.jpg',
    '4009': 'assets/images/4009.jpg',
    '4010': 'assets/images/4010.jpg',
    '4011': 'assets/images/4011.jpg',
    '4012': 'assets/images/4012.jpg',
    '5000': 'assets/images/5000.jpg',
    '5001': 'assets/images/5001.jpg',
    '5002': 'assets/images/5002.jpg',
    '5003': 'assets/images/5003.jpg',
    '5004': 'assets/images/5004.jpg',
    '5005': 'assets/images/5005.jpg',
    '5007': 'assets/images/5007.jpg',
    '5008': 'assets/images/5008.jpg',
    '5009': 'assets/images/5009.jpg',
    '5010': 'assets/images/5010.jpg',
    '5011': 'assets/images/5011.jpg',
    '5012': 'assets/images/5012.jpg',
    '5013': 'assets/images/5013.jpg',
    '5014': 'assets/images/5014.jpg',
    '5015': 'assets/images/5015.jpg',
    '5017': 'assets/images/5017.jpg',
    '5018': 'assets/images/5018.jpg',
    '5019': 'assets/images/5019.jpg',
    '5020': 'assets/images/5020.jpg',
    '5021': 'assets/images/5021.jpg',
    '5022': 'assets/images/5022.jpg',
    '5023': 'assets/images/5023.jpg',
    '5024': 'assets/images/5024.jpg',
    '5025': 'assets/images/5025.jpg',
    '5026': 'assets/images/5026.jpg',
    '6000': 'assets/images/6000.jpg',
    '6001': 'assets/images/6001.jpg',
    '6002': 'assets/images/6002.jpg',
    '6003': 'assets/images/6003.jpg',
    '6004': 'assets/images/6004.jpg',
    '6005': 'assets/images/6005.jpg',
    '6006': 'assets/images/6006.jpg',
    '6007': 'assets/images/6007.jpg',
    '6008': 'assets/images/6008.jpg',
    '6009': 'assets/images/6009.jpg',
    '6010': 'assets/images/6010.jpg',
    '6011': 'assets/images/6011.jpg',
    '6012': 'assets/images/6012.jpg',
    '6013': 'assets/images/6013.jpg',
    '6014': 'assets/images/6014.jpg',
    '6015': 'assets/images/6015.jpg',
    '6016': 'assets/images/6016.jpg',
    '6017': 'assets/images/6017.jpg',
    '6018': 'assets/images/6018.jpg',
    '6019': 'assets/images/6019.jpg',
    '6020': 'assets/images/6020.jpg',
    '6021': 'assets/images/6021.jpg',
    '6022': 'assets/images/6022.jpg',
    '6024': 'assets/images/6024.jpg',
    '6025': 'assets/images/6025.jpg',
    '6026': 'assets/images/6026.jpg',
    '6027': 'assets/images/6027.jpg',
    '6028': 'assets/images/6028.jpg',
    '6029': 'assets/images/6029.jpg',
    '6032': 'assets/images/6032.jpg',
    '6033': 'assets/images/6033.jpg',
    '6034': 'assets/images/6034.jpg',
    '6035': 'assets/images/6035.jpg',
    '6036': 'assets/images/6036.jpg',
    '6037': 'assets/images/6037.jpg',
    '6038': 'assets/images/6038.jpg',
    '6039': 'assets/images/6039.jpg',
    '7000': 'assets/images/7000.jpg',
    '7001': 'assets/images/7001.jpg',
    '7002': 'assets/images/7002.jpg',
    '7003': 'assets/images/7003.jpg',
    '7004': 'assets/images/7004.jpg',
    '7005': 'assets/images/7005.jpg',
    '7006': 'assets/images/7006.jpg',
    '7008': 'assets/images/7008.jpg',
    '7009': 'assets/images/7009.jpg',
    '7010': 'assets/images/7010.jpg',
    '7011': 'assets/images/7011.jpg',
    '7012': 'assets/images/7012.jpg',
    '7013': 'assets/images/7013.jpg',
    '7015': 'assets/images/7015.jpg',
    '7016': 'assets/images/7016.jpg',
    '7021': 'assets/images/7021.jpg',
    '7022': 'assets/images/7022.jpg',
    '7023': 'assets/images/7023.jpg',
    '7024': 'assets/images/7024.jpg',
    '7026': 'assets/images/7026.jpg',
    '7030': 'assets/images/7030.jpg',
    '7031': 'assets/images/7031.jpg',
    '7032': 'assets/images/7032.jpg',
    '7033': 'assets/images/7033.jpg',
    '7034': 'assets/images/7034.jpg',
    '7035': 'assets/images/7035.jpg',
    '7036': 'assets/images/7036.jpg',
    '7037': 'assets/images/7037.jpg',
    '7038': 'assets/images/7038.jpg',
    '7039': 'assets/images/7039.jpg',
    '7040': 'assets/images/7040.jpg',
    '7042': 'assets/images/7042.jpg',
    '7043': 'assets/images/7043.jpg',
    '7044': 'assets/images/7044.jpg',
    '7045': 'assets/images/7045.jpg',
    '7046': 'assets/images/7046.jpg',
    '7047': 'assets/images/7047.jpg',
    '7048': 'assets/images/7048.jpg',
    '8000': 'assets/images/8000.jpg',
    '8001': 'assets/images/8001.jpg',
    '8002': 'assets/images/8002.jpg',
    '8003': 'assets/images/8003.jpg',
    '8004': 'assets/images/8004.jpg',
    '8007': 'assets/images/8007.jpg',
    '8008': 'assets/images/8008.jpg',
    '8011': 'assets/images/8011.jpg',
    '8012': 'assets/images/8012.jpg',
    '8014': 'assets/images/8014.jpg',
    '8015': 'assets/images/8015.jpg',
    '8016': 'assets/images/8016.jpg',
    '8017': 'assets/images/8017.jpg',
    '8019': 'assets/images/8019.jpg',
    '8022': 'assets/images/8022.jpg',
    '8023': 'assets/images/8023.jpg',
    '8024': 'assets/images/8024.jpg',
    '8025': 'assets/images/8025.jpg',
    '8028': 'assets/images/8028.jpg',
    '8029': 'assets/images/8029.jpg',
    '9001': 'assets/images/9001.jpg',
    '9002': 'assets/images/9002.jpg',
    '9003': 'assets/images/9003.jpg',
    '9004': 'assets/images/9004.jpg',
    '9005': 'assets/images/9005.jpg',
    '9006': 'assets/images/9006.jpg',
    '9007': 'assets/images/9007.jpg',
    '9010': 'assets/images/9010.jpg',
    '9011': 'assets/images/9011.jpg',
    '9012': 'assets/images/9012.jpg',
    '9016': 'assets/images/9016.jpg',
    '9017': 'assets/images/9017.jpg',
    '9018': 'assets/images/9018.jpg',
    '9022': 'assets/images/9022.jpg',
    '9023': 'assets/images/9023.jpg',
  };

  final List<String> _colorRal5 = [
    '5000',
    '5001',
    '5002',
    '5003',
    '5004',
    '5005',
    '5007',
    '5008',
    '5009',
    '5010',
    '5011',
    '5012',
    '5013',
    '5014',
    '5015',
    '5017',
    '5018',
    '5019',
    '5020',
    '5021',
    '5022',
    '5023',
    '5024',
    '5025',
    '5026',
    'нет данных'
  ];
  final List<String> _colorRal8 = [
    '8000',
    '8001',
    '8002',
    '8003',
    '8004',
    '8007',
    '8008',
    '8011',
    '8012',
    '8014',
    '8015',
    '8016',
    '8017',
    '8019',
    '8022',
    '8023',
    '8024',
    '8025',
    '8028',
    '8029',
    'нет данных'
  ];
  final List<String> _colorRal6 = [
    '6000',
    '6001',
    '6002',
    '6003',
    '6004',
    '6005',
    '6006',
    '6007',
    '6008',
    '6009',
    '6010',
    '6011',
    '6012',
    '6013',
    '6014',
    '6015',
    '6016',
    '6017',
    '6018',
    '6019',
    '6020',
    '6021',
    '6022',
    '6024',
    '6025',
    '6026',
    '6027',
    '6028',
    '6029',
    '6032',
    '6033',
    '6034',
    '6035',
    '6036',
    '6037',
    '6038',
    '6039',
    'нет данных'
  ];
  final List<String> _colorRal7 = [
    '7000',
    '7001',
    '7002',
    '7003',
    '7004',
    '7005',
    '7006',
    '7008',
    '7009',
    '7010',
    '7011',
    '7012',
    '7013',
    '7015',
    '7016',
    '7021',
    '7022',
    '7023',
    '7024',
    '7026',
    '7030',
    '7031',
    '7032',
    '7033',
    '7034',
    '7035',
    '7036',
    '7037',
    '7038',
    '7039',
    '7040',
    '7042',
    '7043',
    '7044',
    '7045',
    '7046',
    '7047',
    '7048',
    'нет данных'
  ];
  final List<String> _colorRal2 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2017',
    'нет данных'
  ];
  final List<String> _colorRal4 = [
    '4001',
    '4002',
    '4003',
    '4004',
    '4005',
    '4006',
    '4007',
    '4008',
    '4009',
    '4010',
    '4011',
    '4012',
    'нет данных'
  ];
  final List<String> _colorRal3 = [
    '3000',
    '3001',
    '3002',
    '3003',
    '3004',
    '3005',
    '3007',
    '3009',
    '3011',
    '3012',
    '3013',
    '3014',
    '3015',
    '3016',
    '3017',
    '3018',
    '3020',
    '3022',
    '3024',
    '3026',
    '3027',
    '3028',
    '3031',
    '3032',
    '3033',
    'нет данных'
  ];
  final List<String> _colorRal9 = [
    '9001',
    '9002',
    '9003',
    '9004',
    '9005',
    '9006',
    '9007',
    '9010',
    '9011',
    '9012',
    '9016',
    '9017',
    '9018',
    '9022',
    '9023',
    'нет данных'
  ];
  final List<String> _colorRal1 = [
    '1000',
    '1001',
    '1002',
    '1003',
    '1004',
    '1005',
    '1006',
    '1007',
    '1011',
    '1012',
    '1013',
    '1014',
    '1015',
    '1016',
    '1017',
    '1018',
    '1019',
    '1020',
    '1021',
    '1023',
    '1024',
    '1026',
    '1027',
    '1028',
    '1032',
    '1033',
    '1034',
    '1035',
    '1036',
    '1037',
    'нет данных'
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
    'нет данных'
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
    'нет данных'
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
    'нет данных'
  ];
  final List<String> _inSt = [
    'A',
    'B',
    'C',
    'D',
    'P Ma №1',
    'P Ma №2',
    'P Ma №3',
    'P Sa №1',
    'P Sa №2',
    'P Sa №3',
    'P Sa №4',
    'нет данных',
  ];

  final List<String> _prepMethod = [
    'Пескоструйная обработка (Sa Grit)',
    'Дробеструйная обработка (Sa Shot)',
    'Механическая очистка (St)',
    'Газопламенная очистка (Fl)',
    'Механическая зачистка (Ma)',
    'нет данных',
  ];

  final List<String> _degrofdegr = [
    '1 - слабо выраженное темне пятно на салфетке при испытании методом протирки',
    '2 - явно выраженное темне пятно на салфетке при испытании методом протирки',
    'нет данных',
  ];
  final List<String> _degrofoxid = [
    '1-при осмотре с шестикратным увелиением окалина и ржавчина не обнаружены',
    '2-при осмотре невооруженным глазом не обнаружены окалина, ржавчина, пригар, остатки формовочной смеси и другие неметаллические соли',
    '3-не более чем на 5% поверхности имеются пятна и полосы плотно сцепленной окалины и литейная корка, видимые невооруженным глазом. На любом из участков поверхности изделия окалина занимает не более 10% площади пластины размером 25х25мм',
    '4-с поверхности удалены ржавчина и отслаивающаяся окалина',
    'нет данных'
  ];
  final List<String> _degrofdedust1 = ['1', '2', '3', '4', '5', 'нет данных'];
  final List<String> _degrofdedust2 = [
    '0-частицы, не видимые при увеличении х10',
    '1-частицы, видимые при увеличении х10, но не видимые при нормальном или скорректированном зрении (обычно частицы диаметром менее 50мкм)',
    '2-частицы, видимые при нормальном или скорректированном зрении (обычно частицы диаметром от 50 до 100мкм)',
    '3-частицы, видимые при нормальном или скорректированном зрении (частицы диаметром до 0.5мм)',
    '4-частицы диаметром от 0.5мм до 2.5мм',
    '5-частицы диаметром более 2,5мм',
    'нет данных'
  ];
  final List<String> _roughness = [
    'SHOT 25 мкм',
    'SHOT 40 мкм',
    'SHOT 70 мкм',
    'SHOT 100 мкм',
    'GRIT 25 мкм',
    'GRIT 60 мкм',
    'GRIT 100 мкм',
    'GRIT 150 мкм',
    'нет данных',
  ];

  final List<String> _iso8501A = ['A Sa2,5', 'A Sa3', 'A Fl', 'нет данных'];
  final List<String> _iso8501P = [
    'P Ma №1',
    'P Ma №2',
    'P Ma №3',
    'P Sa 2,5 №1',
    'P Sa 2,5 №2',
    'P Sa 2,5 №3',
    'P Sa 2,5 №4',
    'нет данных'
  ];
  final List<String> _iso8501B = [
    'B St2',
    'B St3',
    'B Sa1',
    'B Sa2',
    'B Sa2,5',
    'B Sa3',
    'B Fl',
    'нет данных'
  ];
  final List<String> _iso8501C = [
    'C St2',
    'C St3',
    'C Sa1',
    'C Sa2',
    'C Sa2,5',
    'C Sa3',
    'C Fl',
    'нет данных'
  ];
  final List<String> _iso8501D = [
    'D St2',
    'D St3',
    'D Sa1',
    'D Sa2',
    'D Sa2,5',
    'D Sa3',
    'D Fl',
    'нет данных'
  ];
  final List<String> _surfsalts = [
    '1-не допускаются масляные загрязнения, степень очистки поверхности-2. Дальнейшую подготовку поверхности проводят как для вновь изготавливаемых изделий',
    '2-Допускаются прочно прилегающий тонкий несплошной слой грунтовки, отдельные точки ржавчины,небольшие куски окалины, плотно прилегающие к основе, легкий налет с ржавым оттенком в ранее прокорродировавших местах',
    '3-допускается неповрежденное лакокрасочное покрытие, плотно прилегающее к металлу',
    'нет данных',
  ];

  final List<String> _contin = [
    'Сплошное покрытие',
    'Несплошное покрытие',
    'нет данных'
  ];
  final List<String> _degrdry = [
    '1-стеклянные шарики полностью удаляются мягкой волосяной нитью, не повреждая поверхности пленки',
    '2-бумага не прилипает к покрытию (нагрузка 20г)',
    '3-бумага не прилипает к покрытию (нагрузка 200г)',
    '4-бумага не прилипает к покрытию, на поверхности покрытия образуется след от нагрузки (нагрузка 2кг)',
    '5-бумага не прилипает к покрытию и не оставляет след от нагрузки (нагрузка 2кг)',
    '6-бумага не прилипает к покрытию. На поверхности покрытия остаётся след от нагрузки (нагрузка 20кг)',
    '7-бумага не прилипает к покрытию и не оставляет след от нагрузки(нагрузка 20кг)',
    'нет данных',
  ];

  final List<String> _rastresk = [
    '0-отсутствие трещин (невидимая при увелиении х10)',
    '1-очень мало трещин (видимая только при увеличении х10)',
    '2-мало трещин (едва видимая зрением с нормальной коррекцией)',
    '3-умеренное число трещин (ясно видимая зрением с нормальной коррекцией)',
    '4-значительное число трещин (большие трещины, обычно с шириной до 1мм)',
    '5-плотная структура трещин (очень большие трещины, обычно с шириной более 1мм)',
    'нет данных',
  ];

  final List<String> _otslaivan = [
    '0',
    '1 площадь,% 0<Cp<=0,1',
    '2 площадь,% 0,1<Cp<=0,3',
    '3 площадь,% 0,3<Cp<=1',
    '4 площадь,% 1<Cp<=3',
    '5 площадь,% 3<Cp<15',
    'нет данных',
  ];

  final List<String> _vyvetriv = [
    '0-отсутствие дефектов (невидимая при увеличении х10)',
    '1-очень мало дефектов (площадь,% 0<Cp<=3 видимая только при увеличении х10)',
    '2-мало дефектов (едва видимая зрением с нормальной коррекцией площадь,% 3<Cp<=10)',
    '3- умеренное число дефектов (ясно видимая зрением с нормальной коррекцией площадь,% 10<Cp<=25)',
    '4-значительное число дефектов (разрушение до грунтовочного слоя площадь,% 25<Cp<=50)',
    '5-плотная структура дефектов (разрушение до окрашиваемой поверхности. площадь,% 50<Cp)',
    'нет данных',
  ];

  final List<String> _puzyr = [
    '0-отсутствие пузырей',
    '1-пузыри(вздутия) с размером менее 0,05мм',
    '2-пузыри(вздутия) с размером 0,05-0,5мм',
    '3-пузыри(вздутия) с размером 0,5-1мм',
    '4-пузыри(вздутия) с размером 1-8мм',
    '5-пузыри(вздутия) с размером более 8мм',
    'нет данных',
  ];

  final List<String> _korroziya = [
    '0 отсутствие коррозии (невидимый очаг при увеличении х10)',
    '1 видимый очаг только при увеличении х10 (площадь,% 0<Cp<=0,05)',
    '2 едва видимый очаг зрением с нормальной коррекцией (площадь,% 0,05<Cp<=0,5)',
    '3 очаг(Lp,мм)<=0,5 (площадь,% 0,5<Cp<=1)',
    '4 0,5<Lp<=5 (площадь,% 1<Cp<=8)',
    '5 5<Lp (площадь,% 8<Cp)',
    'нет данных',
  ];

  final List<String> _defdur = [
    'Дефекты отсутствуют',
    'Пропуски',
    'Влага',
    'Включения',
    'Другое',
    'нет данных'
  ];
  final List<String> _apperance = [
    '1-не допускаются никакие дефекты для любых покрытий, кроме - не более включений 4шт/м2, размером - не более 0,2мм, находящихся на расстоянии не менее 100мм друг от друга',
    '2-допускается незначительная шагрень и отдельные штрихи, риски. Потеки, волнистость, разнооттеночность. Неодноросдность рисунка не нормируется',
    '3-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается незначительная. Потеки, разнооттеночность - не допускается',
    '4-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается. Потеки, разнооттеночность - не допускается',
    '5-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается. Потеки - допускаются отдельные. Разнооттеночность - не допускается',
    '6-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень, штрихи, риски - допускается. Потеки, разнооттеночность - допускаются',
    '7-Дефекты, вклюения - не нормируются',
    'нет данных',
  ];
  final List<String> _dielcont = ['Пробой', 'Отсутствие пробоя', 'нет данных'];

  final List<String> _methadhes = [
    'X-образный метод',
    'Метод полосовых надрезов',
    'Метод решётчатых надрезов',
    'На отрыв',
    'нет данных'
  ];

  final List<String> _adhesionX = [
    'X-0',
    'X-1',
    'X-2',
    'X-3',
    'X-4',
    'X-5',
    'нет данных'
  ];

  final List<String> _notdata = ['нет данных'];

  final List<String> _adhesionR = [
    'P-0',
    'P-1',
    'P-2',
    'P-3',
    'P-4',
    'P-5',
    'нет данных'
  ];

  final List<String> _amountadh = ['< 40 МПа', '> 40 МПа', 'нет данных'];

  final List<String> _changecolor = [
    '0-изменения отсутствуют',
    '1-очень слабые, т.е. едва различимые изменения цвета',
    '2-слабые, т.е. хорошо различимые изменения цвета',
    '3-умеренные, т.е. ясно видимые изменения цвета',
    '4-значительные, т.е. сильно выраженные изменения цвета',
    '5-очень заметные изменения, т.е. первоначальный цвет покрытия плохо различим',
    'нет данных',
  ];
  final List<String> _changegloss = [
    '0-изменения отсутствуют',
    '1-очень слабые, т.е. едва различимые изменения',
    '2-слабые, т.е. хорошо различимые изменения',
    '3-умеренные, т.е. ясно видимые изменения',
    '4-значительные, т.е. сильно выраженные изменения',
    '5-очень заметные изменения',
    'нет данных',
  ];
  final List<String> _mudretant = [
    '0-изменения отсутствуют',
    '1-очень слабые, т.е. едва различимые отдельные механические частицы',
    '2-слабые, т.е. хорошо различимые механические частицы',
    '3-умеренные, т.е. налёт механических частиц, цвет покрытия различим',
    '4-значительные, т.е. налёт механических частиц, цвет покрытия плохо различим',
    '5-очень заметные изменения, т.е. налёт механических частиц, цвет покрытия не различим',
    'нет данных',
  ];
  final List<String> _chalking = [
    '0-на ткани частицы пигмента отсутствуют (кол-во отпечатков: 0)',
    '1-на ткани плохо различимые следы пигмента (кол-во отпечатков: 1)',
    '2-на ткани хорошо различимые следы пигмента (кол-во отпечатков: 2)',
    '3-на ткани хорошо видимые следы пигмента (кол-во отпечатков: 3-5)',
    '4-частицы пигмента легко отделяются при трении (кол-во отпечатков: 6-8)',
    '5-частицы пигмента легко отделяются при касании (кол-во отпечатков: >= 9)',
    'нет данных',
  ];

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
  final List<String> _predskom = [
    'Начальник',
    'Главный инженер',
    'Заместитель начальника',
    'ВрИО начальника',
    'нет данных'
    // '',
    // '',
  ];

  int red = 255;
  int green = 0;
  int blue = 0;

  Color bgColor;
  String selectedColor = "";
  Color _cardColor = Colors.white;
  TextEditingController titleController = TextEditingController();
  TextEditingController dateObsl1Controller = TextEditingController();
  TextEditingController dateObsl2Controller = TextEditingController();
  TextEditingController squareclearController = TextEditingController();
  TextEditingController squarerestController = TextEditingController();
  TextEditingController constroldcoatController = TextEditingController();
  TextEditingController instController = TextEditingController();
  TextEditingController iso8501Controller = TextEditingController();
  TextEditingController prepmethodController = TextEditingController();
  TextEditingController degrofdegrController = TextEditingController();
  TextEditingController degrofoxidController = TextEditingController();
  TextEditingController degrofdedust1Controller = TextEditingController();
  TextEditingController degrofdedust2Controller = TextEditingController();
  TextEditingController roughnessController = TextEditingController();
  TextEditingController surfsaltsController = TextEditingController();

  TextEditingController tempairController = TextEditingController();
  TextEditingController tempsurfController = TextEditingController();
  TextEditingController relathumidController = TextEditingController();
  TextEditingController dewpointController = TextEditingController();
  TextEditingController difftempController = TextEditingController();

  TextEditingController techcondmatController = TextEditingController();
  TextEditingController techcondmatController1 = TextEditingController();
  TextEditingController numdoflayController = TextEditingController();
  TextEditingController squarenewController = TextEditingController();
  TextEditingController thickofwellayController = TextEditingController();
  TextEditingController thickofdrylayController = TextEditingController();
  TextEditingController thickofdrylayController1 = TextEditingController();
  TextEditingController thickofdrylayController2 = TextEditingController();
  TextEditingController thickofdrylayController3 = TextEditingController();
  TextEditingController thickofdrylayController4 = TextEditingController();
  TextEditingController thickofdrylayController5 = TextEditingController();
  TextEditingController continController = TextEditingController();
  TextEditingController timedryController = TextEditingController();
  TextEditingController degrdryController = TextEditingController();
  TextEditingController defdurController = TextEditingController();

  TextEditingController apperanceController = TextEditingController();
  TextEditingController bgcolorController = TextEditingController();
  TextEditingController katRalController = TextEditingController();
  TextEditingController colorRalController = TextEditingController();
  TextEditingController adhesionController = TextEditingController();
  TextEditingController adhesionController1 = TextEditingController();
  TextEditingController adhesionController2 = TextEditingController();
  TextEditingController adhesionController3 = TextEditingController();
  TextEditingController adhesionController4 = TextEditingController();
  TextEditingController adhesionController5 = TextEditingController();
  TextEditingController adhesionmethodController = TextEditingController();
  TextEditingController dielcontController = TextEditingController();

  TextEditingController thickinsulmeterController = TextEditingController();
  TextEditingController tickinsulmeternumbController = TextEditingController();
  TextEditingController tickinsulmeterdateController = TextEditingController();
  TextEditingController adhesmeterController = TextEditingController();
  TextEditingController adhesmeternumbController = TextEditingController();
  TextEditingController adhesmeterdateController = TextEditingController();
  TextEditingController continmeterController = TextEditingController();
  TextEditingController continmeternumbController = TextEditingController();
  TextEditingController continmeterdateController = TextEditingController();
  TextEditingController setvikController = TextEditingController();
  TextEditingController setviknumbController = TextEditingController();
  TextEditingController setvikdateController = TextEditingController();

  TextEditingController changecolorController = TextEditingController();
  TextEditingController changeglossController = TextEditingController();
  TextEditingController mudretantController = TextEditingController();
  TextEditingController chalkingController = TextEditingController();

  TextEditingController highestDegreeDController = TextEditingController();
  TextEditingController rastreskController = TextEditingController();
  TextEditingController otslaivanController = TextEditingController();
  TextEditingController vyvetrivController = TextEditingController();
  TextEditingController puzyrController = TextEditingController();
  TextEditingController korroziyaController = TextEditingController();
  TextEditingController highestDegreeZController = TextEditingController();

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
  @override
  void initState() {
    super.initState();
    print('1${object.highestDegreeD}');
    print('2${object.highestDegreeZ}');
    isEdit = object.title == '' ? false : true;
    titleController.text = object.title ?? '';
    dateObsl1Controller.text = object.dateObsl1 ?? '';
    dateObsl2Controller.text = object.dateObsl2 ?? '';

    images.add(File('assets/images/grade_A.jpg'));
    images.add(File('assets/images/grade_B.jpg'));
    images.add(File('assets/images/grade_C.jpg'));
    images.add(File('assets/images/grade_D.jpg'));
    print('открыли: ${object.photo.toString()}');
    print('открыли Шероховатость: ${object.photoRoughness.toString()}');
    object.photo == '' ? false : true;

    squareclearController.text = object.squareclear ?? '';
    squarerestController.text = object.squarerest ?? '';
    constroldcoatController.text = object.constroldcoat ?? '';
    instController.text = object.inst ?? '';
    iso8501Controller.text = object.iso8501 ?? '';
    prepmethodController.text = object.prepmethod ?? '';
    degrofdegrController.text = object.degrofdegr ?? '';
    degrofoxidController.text = object.degrofoxid ?? '';
    degrofdedust1Controller.text = object.degrofdedust1 ?? '';
    degrofdedust2Controller.text = object.degrofdedust2 ?? '';
    roughnessController.text = object.roughness ?? '';
    surfsaltsController.text = object.surfsalts ?? '';

    tempairController.text = object.tempair ?? '';
    tempsurfController.text = object.tempsurf ?? '';
    relathumidController.text = object.relathumid ?? '';
    dewpointController.text = object.dewpoint ?? '';
    difftempController.text = object.difftemp ?? '';

    techcondmatController.text = object.techcondmat ?? '';
    techcondmatController1.text = object.techcondmat1 ?? '';
    numdoflayController.text = object.numdoflay ?? '';
    squarenewController.text = object.squarenew ?? '';
    thickofwellayController.text = object.thickofwellay ?? '';
    thickofdrylayController.text = object.thickofdrylay ?? '';
    thickofdrylayController1.text = object.thickofdrylay1 ?? '';
    thickofdrylayController2.text = object.thickofdrylay2 ?? '';
    thickofdrylayController3.text = object.thickofdrylay3 ?? '';
    thickofdrylayController4.text = object.thickofdrylay4 ?? '';
    thickofdrylayController5.text = object.thickofdrylay5 ?? '';
    continController.text = object.contin ?? '';
    timedryController.text = object.timedry ?? '';
    degrdryController.text = object.degrdry ?? '';
    defdurController.text = object.defdur ?? '';

    apperanceController.text = object.apperance ?? '';
    bgcolorController.text = object.bgcolor ?? '';
    katRalController.text = object.katRal ?? '';
    colorRalController.text = object.colorRal ?? '';
    adhesionController.text = object.adhesion ?? '';
    adhesionController1.text = object.adhesion1 ?? '';
    adhesionController2.text = object.adhesion2 ?? '';
    adhesionController3.text = object.adhesion3 ?? '';
    adhesionController4.text = object.adhesion4 ?? '';
    adhesionController5.text = object.adhesion5 ?? '';
    adhesionmethodController.text = object.adhesionmethod ?? '';
    dielcontController.text = object.dielcont ?? '';

    thickinsulmeterController.text = object.thickinsulmeter ?? '';
    tickinsulmeternumbController.text = object.tickinsulmeternumb ?? '';
    tickinsulmeterdateController.text = object.tickinsulmeterdate ?? '';
    adhesmeterController.text = object.adhesmeter ?? '';
    adhesmeternumbController.text = object.adhesmeternumb ?? '';
    adhesmeterdateController.text = object.adhesmeterdate ?? '';
    continmeterController.text = object.continmeter ?? '';
    continmeternumbController.text = object.continmeternumb ?? '';
    continmeterdateController.text = object.continmeterdate ?? '';
    setvikController.text = object.setvik ?? '';
    setviknumbController.text = object.setviknumb ?? '';
    setvikdateController.text = object.setvikdate ?? '';

    changecolorController.text = object.changecolor ?? '';
    changeglossController.text = object.changegloss ?? '';
    mudretantController.text = object.mudretant ?? '';
    chalkingController.text = object.chalking ?? '';

    highestDegreeDController.text = object.highestDegreeD ?? '';
    rastreskController.text = object.rastresk ?? '';
    otslaivanController.text = object.otslaivan ?? '';
    vyvetrivController.text = object.vyvetriv ?? '';
    puzyrController.text = object.puzyr ?? '';
    korroziyaController.text = object.korroziya ?? '';
    highestDegreeZController.text = object.highestDegreeZ ?? '';

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
  }

  @override
  void dispose() {
    bgcolorController.dispose();
    super.dispose();
  }

  String convertRGBtoRAL(int red, int green, int blue) {
// Список цветов RAL K7 Classic в формате RGB
    List<Map<String, dynamic>> ralColors = [
      {
        'name': 'RAL1000',
        'red': 204,
        'green': 204,
        'blue': 153,
      },
      {
        'name': 'RAL1001',
        'red': 204,
        'green': 203,
        'blue': 153,
      },
// и так далее...
    ];
// Находим наиболее близкий цвет RAL
    String closestRalColor = '';
    double minDiff = double.infinity;

    for (var ralColor in ralColors) {
      int ralRed = ralColor['red'];
      int ralGreen = ralColor['green'];
      int ralBlue = ralColor['blue'];

      // Рассчитываем разницу между значениями RGB цветов
      double diff = ((red - ralRed).abs() +
          (green - ralGreen).abs() +
          (blue - ralBlue).abs()) as double;

      // Обновляем ближайший цвет и разницу, если найден более близкий цвет
      if (diff < minDiff) {
        minDiff = diff;
        closestRalColor = ralColor['name'];
      }
    }

    return closestRalColor;
  }

  ObjectDetailState(this.object);
  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 7,
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
              unselectedLabelStyle: const TextStyle(
                color: Colors.white, // цвет невыбранных иконок
              ),
              tabs: [
                const Tab(
                    icon: Icon(
                  Icons.notes_rounded,
                  size: 32,
                )),
                const Tab(
                    icon: Icon(
                  Icons.align_vertical_bottom_rounded,
                  size: 32,
                )),
                const Tab(
                    icon: Icon(
                  Icons.radio_button_on_sharp,
                  size: 32,
                )),
                const Tab(
                    icon: Icon(
                  Icons.build_circle_sharp,
                  size: 32,
                )),
                const Tab(
                    icon: Icon(
                  Icons.design_services_sharp,
                  size: 32,
                )),
                const Tab(
                    icon: Icon(
                  Icons.playlist_add_circle_sharp,
                  size: 32,
                )),
                const Tab(
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
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),
                      TextFormField(
                        focusNode: focusNode1,
                        onChanged: (String value) {
                          setState(() {
                            focusNode1.requestFocus();
                            object.title = value;
                            object.title = titleController.text;
                          });
                        },
                        maxLength: 50,
                        onFieldSubmitted: (value) {
                          object.title = value;
                        },
                        onSaved: (value) {
                          object.title = value;
                        },
                        controller: titleController,
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
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Наименование объекта *',
                          hintText: 'Как называется объект контроля',
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
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
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
                        ),
                      ),
                      SizedBox(height: 5),
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
                                  dateObsl1Controller.text =
                                      DateFormat('dd.MM.yyyy')
                                          .format(selectedDate);
                                  object.dateObsl1 = dateObsl1Controller.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode41.hasFocus ||
                                      dateObsl1Controller.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              dateObsl1Controller.text,
                              style: TextStyle(
                                fontSize: 16,
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
                                fontSize: 16,
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
                          focusNode: focusNode2,
                          onChanged: (String value) {
                            setState(() {
                              focusNode2.requestFocus();
                              object.squareclear = value;
                              object.squareclear = squareclearController.text;
                            });
                          },
                          maxLength: 5,
                          onFieldSubmitted: (value) {
                            object.squareclear = value;
                          },
                          onSaved: (value) {
                            object.squareclear = value;
                          },
                          controller: squareclearController,
                          style: textStyle,
                          decoration: InputDecoration(
                              labelText: 'Площадь очищаемой поверхности',
                              hintText: 'Сколько очищено, м^2',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).primaryColor,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).primaryColor,
                              ),
                              helperText: 'м.кв',
                              prefixIcon: Icon(
                                Icons.map_sharp,
                                color: focusNode2.hasFocus ||
                                        squareclearController.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  squareclearController.clear();
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
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
                              )),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter(
                                RegExp(r'^[()\d -]{1,15}'),
                                allow: true)
                          ]),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode3,
                        decoration: InputDecoration(
                            focusColor: Theme.of(context).primaryColor,
                            border: const OutlineInputBorder(),
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
                            prefixIcon: Icon(
                              Icons.gradient,
                              color: focusNode3.hasFocus ||
                                      instController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                            labelText: 'Исходное состояние поверхности',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Theme.of(context).primaryColor,
                            ),
                            suffixIcon: GestureDetector(
                                onTap: () async {
                                  String imageName;
                                  if (object.inst == 'A') {
                                    imageName = 'grade_A';
                                  } else if (object.inst == 'B') {
                                    imageName = 'grade_B';
                                  } else if (object.inst == 'C') {
                                    imageName = 'grade_C';
                                  } else if (object.inst == 'D') {
                                    imageName = 'grade_D';
                                  } else if (object.inst == 'P Ma №1') {
                                    imageName = 'p1Ma1';
                                  } else if (object.inst == 'P Ma №2') {
                                    imageName = 'p2Ma1';
                                  } else if (object.inst == 'P Ma №3') {
                                    imageName = 'p3Ma1';
                                  } else if (object.inst == 'P Sa №1') {
                                    imageName = 'p1Sa251';
                                  } else if (object.inst == 'P Sa №2') {
                                    imageName = 'p2Sa251';
                                  } else if (object.inst == 'P Sa №3') {
                                    imageName = 'p3Sa251';
                                  } else if (object.inst == 'P Sa №4') {
                                    imageName = 'p4Sa251';
                                  } else if (object.inst == 'нет данных' ||
                                      object.inst == null) {
                                    imageName = 'imagenull';
                                  }
                                  print('imageName: ${imageName}');
                                  final value = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CameraPage(imageName)),
                                  ).then((value) {
                                    setState(() async {
                                      if (value != null) {
                                        _imageGrade = value;

                                        print(
                                            'сделали: ${object.photo.toString()}');

                                        if (_1formKey.currentState.validate()) {
                                          _1formKey.currentState.save();
                                          if (_imageGrade != null) {
                                            final Directory extDir =
                                                await getApplicationDocumentsDirectory();
                                            final String dirPath =
                                                '${extDir.path}/Pictures/flutter_test';
                                            await Directory(dirPath)
                                                .create(recursive: true);
                                            final String filePath =
                                                '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                            await _imageGrade.copy(filePath);
                                            object.photo = filePath;
                                          }
                                        }
                                      }
                                    });
                                  });
                                },
                                child: const Icon(Icons.camera_alt_sharp,
                                    color: Colors.green))),
                        items: _inSt.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.inst,
                        onChanged: (String value) {
                          setState(() {
                            focusNode3.requestFocus();
                            object.inst = value;
                            object.iso8501 = 'нет данных';
                            object.inst = instController.text;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode4,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.touch_app,
                            color: focusNode4.hasFocus ||
                                    prepmethodController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText:
                              'Способ подготовки поверхности по ISO 8501',
                        ),
                        items: _prepMethod.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.prepmethod,
                        onChanged: (String value) {
                          setState(() {
                            focusNode4.requestFocus();
                            object.prepmethod = value;
                            object.prepmethod = prepmethodController.text;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode5,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.bubble_chart_outlined,
                            color: focusNode5.hasFocus ||
                                    degrofdegrController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень обезжиривания по ГОСТ 9.402',
                        ),
                        items: _degrofdegr.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.degrofdegr,
                        onChanged: (String value) {
                          setState(() {
                            focusNode5.requestFocus();
                            object.degrofdegr = value;
                            object.degrofdegr = degrofdegrController.text;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode6,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.replay,
                            color: focusNode6.hasFocus ||
                                    degrofoxidController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень очистки от окислов по ГОСТ 9.402',
                        ),
                        items: _degrofoxid.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.degrofoxid,
                        onChanged: (String value) {
                          setState(() {
                            focusNode6.requestFocus();
                            object.degrofoxid = value;
                            object.degrofoxid = degrofoxidController.text;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Степень обеспыливания по ISO 8502-3',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: DropdownButtonFormField(
                                  isExpanded: true,
                                  focusNode: focusNode7,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
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
                                      Icons.scatter_plot,
                                      color: focusNode7.hasFocus ||
                                              degrofdedust1Controller
                                                      .text.isNotEmpty &&
                                                  degrofdedust2Controller
                                                      .text.isNotEmpty
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey,
                                      size: 32,
                                    ),
                                    labelText: 'Количество пыли',
                                  ),
                                  items: _degrofdedust1.map((String value) {
                                    return DropdownMenuItem(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  style: textStyle,
                                  value: object.degrofdedust1,
                                  onChanged: (String value) {
                                    setState(() {
                                      focusNode7.requestFocus();
                                      object.degrofdedust1 = value;
                                      object.degrofdedust1 =
                                          degrofdedust1Controller.text;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(width: 1),
                              Expanded(
                                child: DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
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
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 2),
                                      ),
                                      labelStyle: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      labelText: 'Размер частиц',
                                      suffixIcon: GestureDetector(
                                          onTap: () async {
                                            String imageName;
                                            if (object.degrofdedust1 == '1') {
                                              imageName = 'dust1';
                                            } else if (object.degrofdedust1 ==
                                                '2') {
                                              imageName = 'dust2';
                                            } else if (object.degrofdedust1 ==
                                                '3') {
                                              imageName = 'dust3';
                                            } else if (object.degrofdedust1 ==
                                                '4') {
                                              imageName = 'dust4';
                                            } else if (object.degrofdedust1 ==
                                                '5') {
                                              imageName = 'dust5';
                                            } else if (object.degrofdedust1 ==
                                                    'нет данных' ||
                                                object.degrofdedust1 == null) {
                                              imageName = 'imagenull';
                                            }
                                            print('imageName: ${imageName}');
                                            final value = await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CameraPage(imageName)),
                                            ).then((value) {
                                              setState(() async {
                                                if (value != null) {
                                                  _imageDust = value;

                                                  if (_1formKey.currentState
                                                      .validate()) {
                                                    _1formKey.currentState
                                                        .save();
                                                    if (_imageDust != null) {
                                                      final Directory extDir =
                                                          await getApplicationDocumentsDirectory();
                                                      final String dirPath =
                                                          '${extDir.path}/Pictures/flutter_test';
                                                      await Directory(dirPath)
                                                          .create(
                                                              recursive: true);
                                                      final String filePath =
                                                          '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                      await _imageDust
                                                          .copy(filePath);
                                                      object.photoDust =
                                                          filePath;
                                                    }
                                                  }
                                                }
                                              });
                                            });
                                          },
                                          child: const Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green))),
                                  items: _degrofdedust2.map((String value) {
                                    return DropdownMenuItem(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  style: textStyle,
                                  value: object.degrofdedust2,
                                  onChanged: (String value) {
                                    object.degrofdedust2 = value;
                                    object.degrofdedust2 =
                                        degrofdedust2Controller.text;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
                                            imagePath: object.photoDust)),
                                  );
                                },
                                child: Center(
                                  child: object.photoDust != null
                                      ? Image.file(
                                          File(object.photoDust),
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
                      DropdownButtonFormField(
                        isExpanded: true,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
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
                            prefixIcon: Icon(
                              Icons.blur_on,
                              color: focusNode8.hasFocus ||
                                      roughnessController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                            labelText: 'Шероховатость',
                            suffixIcon: GestureDetector(
                                onTap: () async {
                                  String imageName;
                                  if (object.roughness == 'SHOT 25 мкм') {
                                    imageName = 'shot1';
                                  } else if (object.roughness ==
                                      'SHOT 40 мкм') {
                                    imageName = 'shot2';
                                  } else if (object.roughness ==
                                      'SHOT 70 мкм') {
                                    imageName = 'shot3';
                                  } else if (object.roughness ==
                                      'SHOT 100 мкм') {
                                    imageName = 'shot4';
                                  } else if (object.roughness ==
                                      'GRIT 25 мкм') {
                                    imageName = 'grit1';
                                  } else if (object.roughness ==
                                      'GRIT 60 мкм') {
                                    imageName = 'grit2';
                                  } else if (object.roughness ==
                                      'GRIT 100 мкм') {
                                    imageName = 'grit3';
                                  } else if (object.roughness ==
                                      'GRIT 150 мкм') {
                                    imageName = 'grit4';
                                  } else if (object.roughness == 'нет данных' ||
                                      object.roughness == null) {
                                    imageName = 'imagenull';
                                  }
                                  print('imageName: ${imageName}');
                                  final value = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CameraPage(imageName)),
                                  ).then((value) {
                                    setState(() async {
                                      if (value != null) {
                                        _imageRoughness = value;

                                        print(
                                            'сделали: ${object.photoRoughness.toString()}');

                                        if (_1formKey.currentState.validate()) {
                                          _1formKey.currentState.save();
                                          if (_imageRoughness != null) {
                                            final Directory extDir =
                                                await getApplicationDocumentsDirectory();
                                            final String dirPath =
                                                '${extDir.path}/Pictures/flutter_test';
                                            await Directory(dirPath)
                                                .create(recursive: true);
                                            final String filePath =
                                                '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                            await _imageRoughness
                                                .copy(filePath);
                                            object.photoRoughness = filePath;
                                          }
                                        }
                                      }
                                    });
                                  });
                                },
                                child: const Icon(Icons.camera_alt_sharp,
                                    color: Colors.green))),
                        items: _roughness.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.roughness,
                        onChanged: (String value) {
                          setState(() {
                            focusNode8.requestFocus();
                            object.roughness = value;
                            object.roughness = roughnessController.text;
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
                                        builder: (context) => ImageScreen(
                                            imagePath: object.photoRoughness)),
                                  );
                                },
                                child: Center(
                                  child: object.photoRoughness != null
                                      ? Image.file(
                                          File(object.photoRoughness),
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
                      DropdownButtonFormField(
                          focusNode: focusNode9,
                          isExpanded: true,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
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
                              prefixIcon: Icon(
                                Icons.done_all_rounded,
                                color: focusNode9.hasFocus ||
                                        iso8501Controller.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                              labelText: 'Степень подготовки по ISO 8501-1',
                              suffixIcon: GestureDetector(
                                  onTap: () async {
                                    String imageName;

                                    if (object.iso8501 == 'A Sa2,5') {
                                      imageName = 'A_Sa_25';
                                    } else if (object.iso8501 == 'A Sa3') {
                                      imageName = 'A_Sa_3';
                                    } else if (object.iso8501 == 'A Fl') {
                                      imageName = 'A_Fl';
                                    } else if (object.iso8501 == 'B St2') {
                                      imageName = 'B_St_2';
                                    } else if (object.iso8501 == 'C St2') {
                                      imageName = 'C_St_2';
                                    } else if (object.iso8501 == 'D St2') {
                                      imageName = 'D_St_2';
                                    } else if (object.iso8501 == 'B St3') {
                                      imageName = 'B_St_3';
                                    } else if (object.iso8501 == 'C St3') {
                                      imageName = 'C_St_3';
                                    } else if (object.iso8501 == 'D St3') {
                                      imageName = 'D_St_3';
                                    } else if (object.iso8501 == 'B Sa1') {
                                      imageName = 'B_Sa_1';
                                    } else if (object.iso8501 == 'C Sa1') {
                                      imageName = 'C_Sa_1';
                                    } else if (object.iso8501 == 'D Sa1') {
                                      imageName = 'D_Sa_1';
                                    } else if (object.iso8501 == 'B Sa2') {
                                      imageName = 'B_Sa_2';
                                    } else if (object.iso8501 == 'C Sa2') {
                                      imageName = 'C_Sa_2';
                                    } else if (object.iso8501 == 'D Sa2') {
                                      imageName = 'D_Sa_2';
                                    } else if (object.iso8501 == 'B Sa2,5') {
                                      imageName = 'B_Sa_25';
                                    } else if (object.iso8501 == 'C Sa2,5') {
                                      imageName = 'C_Sa_25';
                                    } else if (object.iso8501 == 'D Sa2,5') {
                                      imageName = 'D_Sa_25';
                                    } else if (object.iso8501 == 'B Sa3') {
                                      imageName = 'B_Sa_3';
                                    } else if (object.iso8501 == 'C Sa3') {
                                      imageName = 'C_Sa_3';
                                    } else if (object.iso8501 == 'D Sa3') {
                                      imageName = 'D_Sa_3';
                                    } else if (object.iso8501 == 'B Fl') {
                                      imageName = 'B_Fl';
                                    } else if (object.iso8501 == 'C Fl') {
                                      imageName = 'C_Fl';
                                    } else if (object.iso8501 == 'D Fl') {
                                      imageName = 'D_Fl';
                                    } else if (object.iso8501 == 'P Ma №1') {
                                      imageName = 'p1Ma2';
                                    } else if (object.iso8501 == 'P Ma №2') {
                                      imageName = 'p2Ma2';
                                    } else if (object.iso8501 == 'P Ma №3') {
                                      imageName = 'p3Ma2';
                                    } else if (object.iso8501 ==
                                        'P Sa 2,5 №1') {
                                      imageName = 'p1Sa252';
                                    } else if (object.iso8501 ==
                                        'P Sa 2,5 №2') {
                                      imageName = 'p2Sa252';
                                    } else if (object.iso8501 ==
                                        'P Sa 2,5 №3') {
                                      imageName = 'p3Sa252';
                                    } else if (object.iso8501 ==
                                        'P Sa 2,5 №4') {
                                      imageName = 'p4Sa252';
                                    } else if (object.iso8501 == 'нет данных' ||
                                        object.iso8501 == null) {
                                      imageName = 'imagenull';
                                    }

                                    print('imageName: ${imageName}');
                                    final value = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CameraPage(imageName)),
                                    ).then((value) {
                                      setState(() async {
                                        if (value != null) {
                                          _imageISO8501 = value;

                                          print(
                                              'сделали: ${object.photoISO.toString()}');

                                          if (_1formKey.currentState
                                              .validate()) {
                                            _1formKey.currentState.save();
                                            if (_imageISO8501 != null) {
                                              final Directory extDir =
                                                  await getApplicationDocumentsDirectory();
                                              final String dirPath =
                                                  '${extDir.path}/Pictures/flutter_test';
                                              await Directory(dirPath)
                                                  .create(recursive: true);
                                              final String filePath =
                                                  '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                              await _imageISO8501
                                                  .copy(filePath);
                                              object.photoISO = filePath;
                                            }
                                          }
                                        }
                                      });
                                    });
                                  },
                                  child: const Icon(Icons.camera_alt_sharp,
                                      color: Colors.green))),
                          items: object.inst == 'A'
                              ? _iso8501A.map((String value) {
                                  return DropdownMenuItem(
                                      value: value, child: Text(value));
                                }).toList()
                              : object.inst == 'B'
                                  ? _iso8501B.map((String value) {
                                      return DropdownMenuItem(
                                          value: value, child: Text(value));
                                    }).toList()
                                  : object.inst == 'C'
                                      ? _iso8501C.map((String value) {
                                          return DropdownMenuItem(
                                              value: value, child: Text(value));
                                        }).toList()
                                      : object.inst == 'D'
                                          ? _iso8501D.map((String value) {
                                              return DropdownMenuItem(
                                                  value: value,
                                                  child: Text(value));
                                            }).toList()
                                          : (object.inst == 'P Ma №1' ||
                                                  object.inst == 'P Ma №2' ||
                                                  object.inst == 'P Ma №3' ||
                                                  object.inst == 'P Sa №1' ||
                                                  object.inst == 'P Sa №2' ||
                                                  object.inst == 'P Sa №3' ||
                                                  object.inst == 'P Sa №4')
                                              ? _iso8501P.map((String value) {
                                                  return DropdownMenuItem(
                                                      value: value,
                                                      child: Text(value));
                                                }).toList()
                                              : _notdata.map((String value) {
                                                  return DropdownMenuItem(
                                                      value: value,
                                                      child: Text(value));
                                                }).toList(),
                          style: textStyle,
                          value: object.iso8501,
                          onChanged: (String value) {
                            setState(() {
                              focusNode9.requestFocus();
                              object.iso8501 = value;
                              object.iso8501 = iso8501Controller.text;
                            });
                          }),
                      const SizedBox(height: 10),
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
                                            imagePath: object.photoISO)),
                                  );
                                },
                                child: Center(
                                  child: object.photoISO != null
                                      ? Image.file(
                                          File(object.photoISO),
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
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode47,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.done_all_rounded,
                            color: focusNode47.hasFocus ||
                                    degrofoxidController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень подгтовки по ГОСТ 9.402',
                        ),
                        items: _degrofoxid.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.degrofoxid,
                        onChanged: (String value) {
                          setState(() {
                            focusNode47.requestFocus();
                            object.degrofoxid = value;
                            object.degrofoxid = degrofoxidController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode43,
                        onChanged: (String value) {
                          setState(() {
                            focusNode43.requestFocus();
                            object.surfsalts = value;
                            object.surfsalts = surfsaltsController.text;
                          });
                        },
                        maxLength: 2,
                        onSaved: (value) {
                          object.surfsalts = value;
                        },
                        controller: surfsaltsController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Загрязненность поверхности солями',
                          hintText: 'Введите время утечки, мин',
                          helperText: 'мин',
                          prefixIcon: Icon(
                            Icons.local_drink,
                            color: focusNode43.hasFocus ||
                                    surfsaltsController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              surfsaltsController.clear();
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
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
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
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text(
                            'ПАРАМЕТРЫ ОКРАШИВАЕМОЙ СРЕДЫ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
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
                                        return FittedBox(
                                          fit: BoxFit.scaleDown,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'ПОКРАСКА РАЗРЕШЕНА',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        );
                                      } else {
                                        return FittedBox(
                                          fit: BoxFit.scaleDown,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'ПОКРАСКА ЗАПРЕЩЕНА',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                : FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'ПОКРАСКА ЗАПРЕЩЕНА',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                            'НАНЕСЕНИЕ ПОКРЫТИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Данные о наносимом материале',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  techcondmatController.clear();
                                  techcondmatController1.clear();
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
                        focusNode: focusNode15,
                        onChanged: (String value) {
                          setState(() {
                            focusNode15.requestFocus();
                            object.techcondmat = value;
                            object.techcondmat = techcondmatController.text;
                          });
                        },
                        maxLength: 50,
                        onSaved: (value) {
                          object.techcondmat = value;
                        },
                        controller: techcondmatController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Данные о наносимом материале',
                          hintText: 'Наименование материала',
                          helperText: '...',
                          prefixIcon: Icon(
                            Icons.assignment,
                            color: focusNode15.hasFocus ||
                                    techcondmatController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
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
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode46,
                        onChanged: (String value) {
                          setState(() {
                            focusNode46.requestFocus();
                            object.techcondmat1 = value;
                            object.techcondmat1 = techcondmatController1.text;
                          });
                        },
                        maxLength: 50,
                        onSaved: (value) {
                          object.techcondmat1 = value;
                        },
                        controller: techcondmatController1,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'ГОСТ (ТУ) на материал',
                          hintText: 'Введите ГОСТ (ТУ) на материал',
                          helperText: '...',
                          prefixIcon: Icon(
                            Icons.assignment,
                            color: focusNode46.hasFocus ||
                                    techcondmatController1.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
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
                        keyboardType: TextInputType.text,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                          focusNode: focusNode16,
                          onChanged: (String value) {
                            setState(() {
                              focusNode16.requestFocus();
                              object.numdoflay = value;
                              object.numdoflay = numdoflayController.text;
                            });
                          },
                          maxLength: 2,
                          onSaved: (value) {
                            object.numdoflay = value;
                          },
                          controller: numdoflayController,
                          style: textStyle,
                          decoration: InputDecoration(
                            labelText: 'Количество наносимых слоёв',
                            hintText: 'Введите количество',
                            helperText: 'шт',
                            prefixIcon: Icon(
                              Icons.layers,
                              color: focusNode16.hasFocus ||
                                      numdoflayController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                numdoflayController.clear();
                              },
                              child: const Icon(
                                Icons.delete_outline,
                                color: Colors.red,
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
                          inputFormatters: [
                            FilteringTextInputFormatter(
                                RegExp(r'^[()\d -]{1,15}'),
                                allow: true)
                          ]),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode17,
                        onChanged: (String value) {
                          setState(() {
                            focusNode17.requestFocus();
                            object.squarenew = value;
                            object.squarenew = squarenewController.text;
                          });
                        },
                        maxLength: 5,
                        onSaved: (value) {
                          object.squarenew = value;
                        },
                        controller: squarenewController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Площадь окрашиваемой поверхности',
                          hintText: 'Сколько окрашено, м^2',
                          helperText: 'м.кв',
                          prefixIcon: Icon(
                            Icons.open_with_rounded,
                            color: focusNode17.hasFocus ||
                                    squarenewController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              squarenewController.clear();
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
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode18,
                        onChanged: (String value) {
                          setState(() {
                            focusNode18.requestFocus();
                            object.thickofwellay = value;
                            object.thickofwellay = thickofwellayController.text;
                          });
                        },
                        maxLength: 5,
                        onSaved: (value) {
                          object.thickofwellay = value;
                        },
                        controller: thickofwellayController,
                        style: textStyle,
                        decoration: InputDecoration(
                          labelText: 'Толщина мокрого слоя',
                          hintText: 'Введите измеренную толщину мокрого слоя',
                          helperText: 'мкм',
                          prefixIcon: Icon(
                            Icons.vertical_align_bottom,
                            color: focusNode18.hasFocus ||
                                    thickofwellayController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              thickofwellayController.clear();
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
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode19,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.lens_rounded,
                            color: focusNode19.hasFocus ||
                                    continController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Сплошность',
                        ),
                        items: _contin.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.contin,
                        onChanged: (String value) {
                          setState(() {
                            focusNode19.requestFocus();
                            object.contin = value;
                            object.contin = continController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                          focusNode: focusNode20,
                          onChanged: (String value) {
                            setState(() {
                              focusNode20.requestFocus();
                              object.timedry = value;
                              object.timedry = timedryController.text;
                            });
                          },
                          maxLength: 3,
                          onSaved: (value) {
                            object.timedry = value;
                          },
                          controller: timedryController,
                          style: textStyle,
                          decoration: InputDecoration(
                            labelText: 'Время сушки',
                            hintText: 'Введите время сушки',
                            helperText: 'ч',
                            prefixIcon: Icon(
                              Icons.query_builder,
                              color: focusNode20.hasFocus ||
                                      timedryController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                timedryController.clear();
                              },
                              child: const Icon(
                                Icons.delete_outline,
                                color: Colors.red,
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
                          inputFormatters: [
                            FilteringTextInputFormatter(
                                RegExp(r'^[()\d -]{1,15}'),
                                allow: true)
                          ]),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode21,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.touch_app,
                            color: focusNode21.hasFocus ||
                                    degrdryController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень сушки',
                        ),
                        items: _degrdry.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.degrdry,
                        onChanged: (String value) {
                          setState(() {
                            focusNode21.requestFocus();
                            object.degrdry = degrdryController.text;
                            object.degrdry = value;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode22,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.assignment_late_outlined,
                            color: focusNode22.hasFocus ||
                                    defdurController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Вывленные дефекты при нанесении',
                        ),
                        items: _defdur.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.defdur,
                        onChanged: (String value) {
                          setState(() {
                            focusNode22.requestFocus();
                            object.defdur = defdurController.text;
                            object.defdur = value;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
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
                            'ПРИЁМКА НАНЕСЕННОГО ПОКРЫТИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                          focusNode: focusNode61,
                          onChanged: (String value) {
                            setState(() {
                              focusNode61.requestFocus();
                              object.squarerest = value;
                              object.squarerest = squarerestController.text;
                            });
                          },
                          maxLength: 5,
                          onFieldSubmitted: (value) {
                            object.squarerest = value;
                          },
                          onSaved: (value) {
                            object.squarerest = value;
                          },
                          controller: squarerestController,
                          style: textStyle,
                          decoration: InputDecoration(
                              labelText: 'Площадь ремонта',
                              hintText: 'Сколько восстаовлено, м^2',
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
                              helperText: 'м.кв',
                              prefixIcon: Icon(
                                Icons.map_sharp,
                                color: focusNode61.hasFocus ||
                                        squarerestController.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  squarerestController.clear();
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(187, 30, 16, 1.0),
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
                              )),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter(
                                RegExp(r'^[()\d -]{1,15}'),
                                allow: true)
                          ]),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        isExpanded: true,
                        focusNode: focusNode24,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.wb_sunny,
                            color: focusNode24.hasFocus ||
                                    apperanceController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Внешний вид по ГОСТ 9.032',
                        ),
                        items: _apperance.map((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.apperance,
                        onChanged: (String value) {
                          setState(() {
                            focusNode24.requestFocus();
                            object.apperance = value;
                            object.apperance = apperanceController.text;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Толщина покрытия',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300),
                            ),
                            GestureDetector(
                              onTap: () {
                                thickofdrylayController1.clear();
                                thickofdrylayController2.clear();
                                thickofdrylayController3.clear();
                                thickofdrylayController4.clear();
                                thickofdrylayController5.clear();
                                thickofdrylayController.clear();
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
                      Center(
                        child: Text(
                          'Среднее значение: ${thickofdrylayController.text} мкм',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (String value) {
                                          setState(() {
                                            focusNode90.requestFocus();
                                            sredthick();
                                            object.thickofdrylay1 = value;
                                            object.thickofdrylay1 =
                                                thickofdrylayController1.text;
                                          });
                                        },
                                        focusNode: focusNode90,
                                        maxLength: 4,
                                        onSaved: (value) {
                                          object.thickofdrylay1 = value;
                                        },
                                        controller: thickofdrylayController1,
                                        style: textStyle,
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
                                          labelText: '1 точка',
                                          hintText: 'Введите толщину покрытия',
                                          helperText: 'мкм',
                                          prefixIcon: Icon(
                                            Icons.vertical_align_center_sharp,
                                            color: (focusNode90.hasFocus ||
                                                    thickofdrylayController1
                                                        .text.isNotEmpty)
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
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (String value) {
                                          setState(() {
                                            focusNode91.requestFocus();
                                            sredthick();
                                            object.thickofdrylay2 = value;
                                            object.thickofdrylay2 =
                                                thickofdrylayController2.text;
                                          });
                                        },
                                        focusNode: focusNode91,
                                        maxLength: 4,
                                        onSaved: (value) {
                                          object.thickofdrylay2 = value;
                                        },
                                        controller: thickofdrylayController2,
                                        style: textStyle,
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
                                          labelText: '2 точка',
                                          hintText: '2 точка',
                                          helperText: 'мкм',
                                          prefixIcon: Icon(
                                            Icons.vertical_align_center_sharp,
                                            color: (focusNode91.hasFocus ||
                                                    thickofdrylayController2
                                                        .text.isNotEmpty)
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
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  SizedBox(width: 60),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (String value) {
                                          setState(() {
                                            focusNode94.requestFocus();
                                            sredthick();
                                            object.thickofdrylay5 = value;
                                            object.thickofdrylay5 =
                                                thickofdrylayController5.text;
                                          });
                                        },
                                        focusNode: focusNode94,
                                        maxLength: 4,
                                        onSaved: (value) {
                                          object.thickofdrylay5 = value;
                                        },
                                        controller: thickofdrylayController5,
                                        style: textStyle,
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
                                          labelText: '5 точка',
                                          hintText: '5 точка',
                                          helperText: 'мкм',
                                          prefixIcon: Icon(
                                            Icons.vertical_align_center_sharp,
                                            color: (focusNode94.hasFocus ||
                                                    thickofdrylayController5
                                                        .text.isNotEmpty)
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
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 60),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (String value) {
                                          setState(() {
                                            focusNode92.requestFocus();
                                            sredthick();
                                            object.thickofdrylay3 = value;
                                            object.thickofdrylay3 =
                                                thickofdrylayController3.text;
                                          });
                                        },
                                        focusNode: focusNode92,
                                        maxLength: 4,
                                        onSaved: (value) {
                                          object.thickofdrylay3 = value;
                                        },
                                        controller: thickofdrylayController3,
                                        style: textStyle,
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
                                          labelText: '3 точка',
                                          hintText: '3 точка',
                                          helperText: 'мкм',
                                          prefixIcon: Icon(
                                            Icons.vertical_align_center_sharp,
                                            color: (focusNode92.hasFocus ||
                                                    thickofdrylayController3
                                                        .text.isNotEmpty)
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
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        onChanged: (String value) {
                                          setState(() {});
                                          focusNode93.requestFocus();
                                          sredthick();
                                          object.thickofdrylay4 = value;
                                          object.thickofdrylay4 =
                                              thickofdrylayController4.text;
                                        },
                                        focusNode: focusNode93,
                                        maxLength: 4,
                                        onSaved: (value) {
                                          object.thickofdrylay4 = value;
                                        },
                                        controller: thickofdrylayController4,
                                        style: textStyle,
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
                                          labelText: '4 точка',
                                          hintText: '4 точка',
                                          helperText: 'мкм',
                                          prefixIcon: Icon(
                                            Icons.vertical_align_center_sharp,
                                            color: (focusNode93.hasFocus ||
                                                    thickofdrylayController4
                                                        .text.isNotEmpty)
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
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        width: double.infinity,
                        height: 350,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 8,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode45,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.ssid_chart_sharp,
                            color: focusNode45.hasFocus ||
                                    adhesionmethodController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Метод проверки адгезии',
                        ),
                        items: _methadhes.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.adhesionmethod,
                        onChanged: (String value) {
                          setState(() {
                            focusNode45.requestFocus();
                            object.adhesionmethod = value;
                            object.adhesionmethod =
                                adhesionmethodController.text;
                            object.adhesion = 'нет данных';
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        focusNode: focusNode25,
                        isExpanded: true,
                        decoration: InputDecoration(
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
                            labelStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300,
                              color: Theme.of(context).primaryColor,
                            ),
                            prefixIcon: Icon(
                              Icons.ssid_chart_sharp,
                              color: focusNode25.hasFocus ||
                                      adhesionController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                            labelText: 'Адгезия',
                            suffixIcon: GestureDetector(
                                onTap: () async {
                                  String imageName;
                                  if (object.adhesion == 'X-0') {
                                    imageName = 'x_0';
                                  } else if (object.adhesion == 'X-1') {
                                    imageName = 'x_1';
                                  } else if (object.adhesion == 'X-2') {
                                    imageName = 'x_2';
                                  } else if (object.adhesion == 'X-3') {
                                    imageName = 'x_3';
                                  } else if (object.adhesion == 'X-4') {
                                    imageName = 'x_4';
                                  } else if (object.adhesion == 'X-5') {
                                    imageName = 'x_5';
                                  } else if (object.adhesion == 'P-0') {
                                    imageName = 'r_0';
                                  } else if (object.adhesion == 'P-1') {
                                    imageName = 'r_1';
                                  } else if (object.adhesion == 'P-2') {
                                    imageName = 'r_2';
                                  } else if (object.adhesion == 'P-3') {
                                    imageName = 'r_3';
                                  } else if (object.adhesion == 'P-4') {
                                    imageName = 'r_4';
                                  } else if (object.adhesion == 'нет данных' ||
                                      object.adhesion == null ||
                                      object.adhesion == 'P-5') {
                                    imageName = 'imagenull';
                                  }
                                  print('imageName: ${imageName}');
                                  final value = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CameraPage(imageName)),
                                  ).then((value) {
                                    setState(() async {
                                      if (value != null) {
                                        _imageAdhesion = value;

                                        print(
                                            'сделали: ${object.photoAdhesion.toString()}');

                                        if (_4formKey.currentState.validate()) {
                                          _4formKey.currentState.save();
                                          if (_imageAdhesion != null) {
                                            final Directory extDir =
                                                await getApplicationDocumentsDirectory();
                                            final String dirPath =
                                                '${extDir.path}/Pictures/flutter_test';
                                            await Directory(dirPath)
                                                .create(recursive: true);
                                            final String filePath =
                                                '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                            await _imageAdhesion.copy(filePath);
                                            object.photoAdhesion = filePath;
                                          }
                                        }
                                      }
                                    });
                                  });
                                },
                                child: Icon(Icons.camera_alt_sharp,
                                    color: Colors.green))),
                        items: object.adhesionmethod == 'X-образный метод'
                            ? _adhesionX.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList()
                            : object.adhesionmethod ==
                                    'Метод решётчатых надрезов'
                                ? _adhesionR.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList()
                                : _notdata.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                        style: textStyle,
                        value: object.adhesion,
                        onChanged: (String value) {
                          setState(() {
                            focusNode25.requestFocus();
                            object.adhesion = value;
                            object.adhesion = adhesionController.text;
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
                                        builder: (context) => ImageScreen(
                                            imagePath: object.photoAdhesion)),
                                  );
                                },
                                child: Center(
                                  child: object.photoAdhesion != null
                                      ? Image.file(
                                          File(object.photoAdhesion),
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
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode26,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.flash_on,
                            color: focusNode26.hasFocus ||
                                    dielcontController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Диэлектрическая сплошность',
                        ),
                        items: _dielcont.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.dielcont,
                        onChanged: (String value) {
                          setState(() {
                            focusNode26.requestFocus();
                            object.dielcont = value;
                            object.dielcont = dielcontController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: DropdownButtonFormField(
                                  isExpanded: true,
                                  focusNode: focusNode96,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
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
                                      Icons.color_lens,
                                      color: focusNode96.hasFocus ||
                                              katRalController
                                                      .text.isNotEmpty &&
                                                  colorRalController
                                                      .text.isNotEmpty
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey,
                                      size: 32,
                                    ),
                                    labelText: 'Выберите категорию цвета',
                                  ),
                                  items: _colorRal.map((String value) {
                                    return DropdownMenuItem(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  style: textStyle,
                                  value: object.katRal,
                                  onChanged: (String value) {
                                    setState(() {
                                      focusNode96.requestFocus();
                                      object.katRal = value;
                                      object.katRal = katRalController.text;
                                      object.colorRal = 'нет данных';
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(width: 1),
                              Expanded(
                                child: DropdownButtonFormField(
                                  isExpanded: true,
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
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
                                            color:
                                                Theme.of(context).primaryColor,
                                            width: 2),
                                      ),
                                      labelStyle: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w300,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      labelText: 'Выберите цвет',
                                      suffixIcon: GestureDetector(
                                          onTap: () async {
                                            String imageName;
                                            if (object.colorRal == '5000') {
                                              imageName = '5000';
                                            } else if (object.colorRal ==
                                                '5001') {
                                              imageName = '5001';
                                            } else if (object.colorRal ==
                                                '5002') {
                                              imageName = '5002';
                                            } else if (object.colorRal ==
                                                '5003') {
                                              imageName = '5003';
                                            } else if (object.colorRal ==
                                                '5004') {
                                              imageName = '5004';
                                            } else if (object.colorRal ==
                                                '5005') {
                                              imageName = '5005';
                                            } else if (object.colorRal ==
                                                '5007') {
                                              imageName = '5007';
                                            } else if (object.colorRal ==
                                                '5008') {
                                              imageName = '5008';
                                            } else if (object.colorRal ==
                                                '5009') {
                                              imageName = '5009';
                                            } else if (object.colorRal ==
                                                '5010') {
                                              imageName = '5010';
                                            } else if (object.colorRal ==
                                                '5011') {
                                              imageName = '5011';
                                            } else if (object.colorRal ==
                                                '5012') {
                                              imageName = '5012';
                                            } else if (object.colorRal ==
                                                '5013') {
                                              imageName = '5013';
                                            } else if (object.colorRal ==
                                                '5014') {
                                              imageName = '5014';
                                            } else if (object.colorRal ==
                                                '5015') {
                                              imageName = '5015';
                                            } else if (object.colorRal ==
                                                '5017') {
                                              imageName = '5017';
                                            } else if (object.colorRal ==
                                                '5018') {
                                              imageName = '5018';
                                            } else if (object.colorRal ==
                                                '5019') {
                                              imageName = '5019';
                                            } else if (object.colorRal ==
                                                '5020') {
                                              imageName = '5020';
                                            } else if (object.colorRal ==
                                                '5021') {
                                              imageName = '5021';
                                            } else if (object.colorRal ==
                                                '5022') {
                                              imageName = '5022';
                                            } else if (object.colorRal ==
                                                '5023') {
                                              imageName = '5023';
                                            } else if (object.colorRal ==
                                                '5024') {
                                              imageName = '5024';
                                            } else if (object.colorRal ==
                                                '5025') {
                                              imageName = '5025';
                                            } else if (object.colorRal ==
                                                '5026') {
                                              imageName = '5026';
                                            } else if (object.colorRal ==
                                                '8000') {
                                              imageName = '8000';
                                            } else if (object.colorRal ==
                                                '8001') {
                                              imageName = '8001';
                                            } else if (object.colorRal ==
                                                '8002') {
                                              imageName = '8002';
                                            } else if (object.colorRal ==
                                                '8003') {
                                              imageName = '8003';
                                            } else if (object.colorRal ==
                                                '8004') {
                                              imageName = '8004';
                                            } else if (object.colorRal ==
                                                '8007') {
                                              imageName = '8007';
                                            } else if (object.colorRal ==
                                                '8008') {
                                              imageName = '8008';
                                            } else if (object.colorRal ==
                                                '8011') {
                                              imageName = '8011';
                                            } else if (object.colorRal ==
                                                '8012') {
                                              imageName = '8012';
                                            } else if (object.colorRal ==
                                                '8014') {
                                              imageName = '8014';
                                            } else if (object.colorRal ==
                                                '8015') {
                                              imageName = '8015';
                                            } else if (object.colorRal ==
                                                '8016') {
                                              imageName = '8016';
                                            } else if (object.colorRal ==
                                                '8017') {
                                              imageName = '8017';
                                            } else if (object.colorRal ==
                                                '8019') {
                                              imageName = '8019';
                                            } else if (object.colorRal ==
                                                '8022') {
                                              imageName = '8022';
                                            } else if (object.colorRal ==
                                                '8023') {
                                              imageName = '8023';
                                            } else if (object.colorRal ==
                                                '8024') {
                                              imageName = '8024';
                                            } else if (object.colorRal ==
                                                '8025') {
                                              imageName = '8025';
                                            } else if (object.colorRal ==
                                                '8028') {
                                              imageName = '8028';
                                            } else if (object.colorRal ==
                                                '8029') {
                                              imageName = '8029';
                                            } else if (object.colorRal ==
                                                '6000') {
                                              imageName = '6000';
                                            } else if (object.colorRal ==
                                                '6001') {
                                              imageName = '6001';
                                            } else if (object.colorRal ==
                                                '6002') {
                                              imageName = '6002';
                                            } else if (object.colorRal ==
                                                '6003') {
                                              imageName = '6003';
                                            } else if (object.colorRal ==
                                                '6004') {
                                              imageName = '6004';
                                            } else if (object.colorRal ==
                                                '6005') {
                                              imageName = '6005';
                                            } else if (object.colorRal ==
                                                '6006') {
                                              imageName = '6006';
                                            } else if (object.colorRal ==
                                                '6007') {
                                              imageName = '6007';
                                            } else if (object.colorRal ==
                                                '6008') {
                                              imageName = '6008';
                                            } else if (object.colorRal ==
                                                '6009') {
                                              imageName = '6009';
                                            } else if (object.colorRal ==
                                                '6010') {
                                              imageName = '6010';
                                            } else if (object.colorRal ==
                                                '6011') {
                                              imageName = '6011';
                                            } else if (object.colorRal ==
                                                '6012') {
                                              imageName = '6012';
                                            } else if (object.colorRal ==
                                                '6013') {
                                              imageName = '6013';
                                            } else if (object.colorRal ==
                                                '6014') {
                                              imageName = '6014';
                                            } else if (object.colorRal ==
                                                '6015') {
                                              imageName = '6015';
                                            } else if (object.colorRal ==
                                                '6016') {
                                              imageName = '6016';
                                            } else if (object.colorRal ==
                                                '6017') {
                                              imageName = '6017';
                                            } else if (object.colorRal ==
                                                '6018') {
                                              imageName = '6018';
                                            } else if (object.colorRal ==
                                                '6019') {
                                              imageName = '6019';
                                            } else if (object.colorRal ==
                                                '6020') {
                                              imageName = '6020';
                                            } else if (object.colorRal ==
                                                '6021') {
                                              imageName = '6021';
                                            } else if (object.colorRal ==
                                                '6022') {
                                              imageName = '6022';
                                            } else if (object.colorRal ==
                                                '6024') {
                                              imageName = '6024';
                                            } else if (object.colorRal ==
                                                '6025') {
                                              imageName = '6025';
                                            } else if (object.colorRal ==
                                                '6026') {
                                              imageName = '6026';
                                            } else if (object.colorRal ==
                                                '6027') {
                                              imageName = '6027';
                                            } else if (object.colorRal ==
                                                '6028') {
                                              imageName = '6028';
                                            } else if (object.colorRal ==
                                                '6029') {
                                              imageName = '6029';
                                            } else if (object.colorRal ==
                                                '6032') {
                                              imageName = '6032';
                                            } else if (object.colorRal ==
                                                '6033') {
                                              imageName = '6033';
                                            } else if (object.colorRal ==
                                                '6034') {
                                              imageName = '6034';
                                            } else if (object.colorRal ==
                                                '6035') {
                                              imageName = '6035';
                                            } else if (object.colorRal ==
                                                '6036') {
                                              imageName = '6036';
                                            } else if (object.colorRal ==
                                                '6037') {
                                              imageName = '6037';
                                            } else if (object.colorRal ==
                                                '6038') {
                                              imageName = '6038';
                                            } else if (object.colorRal ==
                                                '6039') {
                                              imageName = '6039';
                                            } else if (object.colorRal ==
                                                '7000') {
                                              imageName = '7000';
                                            } else if (object.colorRal ==
                                                '7001') {
                                              imageName = '7001';
                                            } else if (object.colorRal ==
                                                '7002') {
                                              imageName = '7002';
                                            } else if (object.colorRal ==
                                                '7003') {
                                              imageName = '7003';
                                            } else if (object.colorRal ==
                                                '7004') {
                                              imageName = '7004';
                                            } else if (object.colorRal ==
                                                '7005') {
                                              imageName = '7005';
                                            } else if (object.colorRal ==
                                                '7006') {
                                              imageName = '7006';
                                            } else if (object.colorRal ==
                                                '7008') {
                                              imageName = '7008';
                                            } else if (object.colorRal ==
                                                '7009') {
                                              imageName = '7009';
                                            } else if (object.colorRal ==
                                                '7010') {
                                              imageName = '7010';
                                            } else if (object.colorRal ==
                                                '7011') {
                                              imageName = '7011';
                                            } else if (object.colorRal ==
                                                '7012') {
                                              imageName = '7012';
                                            } else if (object.colorRal ==
                                                '7013') {
                                              imageName = '7013';
                                            } else if (object.colorRal ==
                                                '7015') {
                                              imageName = '7015';
                                            } else if (object.colorRal ==
                                                '7016') {
                                              imageName = '7016';
                                            } else if (object.colorRal ==
                                                '7021') {
                                              imageName = '7021';
                                            } else if (object.colorRal ==
                                                '7022') {
                                              imageName = '7022';
                                            } else if (object.colorRal ==
                                                '7023') {
                                              imageName = '7023';
                                            } else if (object.colorRal ==
                                                '7024') {
                                              imageName = '7024';
                                            } else if (object.colorRal ==
                                                '7026') {
                                              imageName = '7026';
                                            } else if (object.colorRal ==
                                                '7030') {
                                              imageName = '7030';
                                            } else if (object.colorRal ==
                                                '7031') {
                                              imageName = '7031';
                                            } else if (object.colorRal ==
                                                '7032') {
                                              imageName = '7032';
                                            } else if (object.colorRal ==
                                                '7033') {
                                              imageName = '7033';
                                            } else if (object.colorRal ==
                                                '7034') {
                                              imageName = '7034';
                                            } else if (object.colorRal ==
                                                '7035') {
                                              imageName = '7035';
                                            } else if (object.colorRal ==
                                                '7036') {
                                              imageName = '7036';
                                            } else if (object.colorRal ==
                                                '7037') {
                                              imageName = '7037';
                                            } else if (object.colorRal ==
                                                '7038') {
                                              imageName = '7038';
                                            } else if (object.colorRal ==
                                                '7039') {
                                              imageName = '7039';
                                            } else if (object.colorRal ==
                                                '7040') {
                                              imageName = '7040';
                                            } else if (object.colorRal ==
                                                '7042') {
                                              imageName = '7042';
                                            } else if (object.colorRal ==
                                                '7043') {
                                              imageName = '7043';
                                            } else if (object.colorRal ==
                                                '7044') {
                                              imageName = '7044';
                                            } else if (object.colorRal ==
                                                '7045') {
                                              imageName = '7045';
                                            } else if (object.colorRal ==
                                                '7046') {
                                              imageName = '7046';
                                            } else if (object.colorRal ==
                                                '7047') {
                                              imageName = '7047';
                                            } else if (object.colorRal ==
                                                '7048') {
                                              imageName = '7048';
                                            } else if (object.colorRal ==
                                                '2000') {
                                              imageName = '2000';
                                            } else if (object.colorRal ==
                                                '2001') {
                                              imageName = '2001';
                                            } else if (object.colorRal ==
                                                '2002') {
                                              imageName = '2002';
                                            } else if (object.colorRal ==
                                                '2003') {
                                              imageName = '2003';
                                            } else if (object.colorRal ==
                                                '2004') {
                                              imageName = '2004';
                                            } else if (object.colorRal ==
                                                '2005') {
                                              imageName = '2005';
                                            } else if (object.colorRal ==
                                                '2007') {
                                              imageName = '2007';
                                            } else if (object.colorRal ==
                                                '2008') {
                                              imageName = '2008';
                                            } else if (object.colorRal ==
                                                '2009') {
                                              imageName = '2009';
                                            } else if (object.colorRal ==
                                                '2010') {
                                              imageName = '2010';
                                            } else if (object.colorRal ==
                                                '2011') {
                                              imageName = '2011';
                                            } else if (object.colorRal ==
                                                '2012') {
                                              imageName = '2012';
                                            } else if (object.colorRal ==
                                                '2013') {
                                              imageName = '2013';
                                            } else if (object.colorRal ==
                                                '2017') {
                                              imageName = '2017';
                                            } else if (object.colorRal ==
                                                '4001') {
                                              imageName = '4001';
                                            } else if (object.colorRal ==
                                                '4002') {
                                              imageName = '4002';
                                            } else if (object.colorRal ==
                                                '4003') {
                                              imageName = '4003';
                                            } else if (object.colorRal ==
                                                '4004') {
                                              imageName = '4004';
                                            } else if (object.colorRal ==
                                                '4005') {
                                              imageName = '4005';
                                            } else if (object.colorRal ==
                                                '4006') {
                                              imageName = '4006';
                                            } else if (object.colorRal ==
                                                '4007') {
                                              imageName = '4007';
                                            } else if (object.colorRal ==
                                                '4008') {
                                              imageName = '4008';
                                            } else if (object.colorRal ==
                                                '4009') {
                                              imageName = '4009';
                                            } else if (object.colorRal ==
                                                '4010') {
                                              imageName = '4010';
                                            } else if (object.colorRal ==
                                                '4011') {
                                              imageName = '4011';
                                            } else if (object.colorRal ==
                                                '4012') {
                                              imageName = '4012';
                                            } else if (object.colorRal ==
                                                '3000') {
                                              imageName = '3000';
                                            } else if (object.colorRal ==
                                                '3001') {
                                              imageName = '3001';
                                            } else if (object.colorRal ==
                                                '3002') {
                                              imageName = '3002';
                                            } else if (object.colorRal ==
                                                '3003') {
                                              imageName = '3003';
                                            } else if (object.colorRal ==
                                                '3004') {
                                              imageName = '3004';
                                            } else if (object.colorRal ==
                                                '3005') {
                                              imageName = '3005';
                                            } else if (object.colorRal ==
                                                '3007') {
                                              imageName = '3007';
                                            } else if (object.colorRal ==
                                                '3009') {
                                              imageName = '3009';
                                            } else if (object.colorRal ==
                                                '3011') {
                                              imageName = '3011';
                                            } else if (object.colorRal ==
                                                '3012') {
                                              imageName = '3012';
                                            } else if (object.colorRal ==
                                                '3013') {
                                              imageName = '3013';
                                            } else if (object.colorRal ==
                                                '3014') {
                                              imageName = '3014';
                                            } else if (object.colorRal ==
                                                '3015') {
                                              imageName = '3015';
                                            } else if (object.colorRal ==
                                                '3016') {
                                              imageName = '3016';
                                            } else if (object.colorRal ==
                                                '3017') {
                                              imageName = '3017';
                                            } else if (object.colorRal ==
                                                '3018') {
                                              imageName = '3018';
                                            } else if (object.colorRal ==
                                                '3020') {
                                              imageName = '3020';
                                            } else if (object.colorRal ==
                                                '3022') {
                                              imageName = '3022';
                                            } else if (object.colorRal ==
                                                '3024') {
                                              imageName = '3024';
                                            } else if (object.colorRal ==
                                                '3026') {
                                              imageName = '3026';
                                            } else if (object.colorRal ==
                                                '3027') {
                                              imageName = '3027';
                                            } else if (object.colorRal ==
                                                '3028') {
                                              imageName = '3028';
                                            } else if (object.colorRal ==
                                                '3031') {
                                              imageName = '3031';
                                            } else if (object.colorRal ==
                                                '3032') {
                                              imageName = '3032';
                                            } else if (object.colorRal ==
                                                '3033') {
                                              imageName = '3033';
                                            } else if (object.colorRal ==
                                                '9001') {
                                              imageName = '9001';
                                            } else if (object.colorRal ==
                                                '9002') {
                                              imageName = '9002';
                                            } else if (object.colorRal ==
                                                '9003') {
                                              imageName = '9003';
                                            } else if (object.colorRal ==
                                                '9004') {
                                              imageName = '9004';
                                            } else if (object.colorRal ==
                                                '9005') {
                                              imageName = '9005';
                                            } else if (object.colorRal ==
                                                '9006') {
                                              imageName = '9006';
                                            } else if (object.colorRal ==
                                                '9007') {
                                              imageName = '9007';
                                            } else if (object.colorRal ==
                                                '9010') {
                                              imageName = '9010';
                                            } else if (object.colorRal ==
                                                '9011') {
                                              imageName = '9011';
                                            } else if (object.colorRal ==
                                                '9012') {
                                              imageName = '9012';
                                            } else if (object.colorRal ==
                                                '9016') {
                                              imageName = '9016';
                                            } else if (object.colorRal ==
                                                '9017') {
                                              imageName = '9017';
                                            } else if (object.colorRal ==
                                                '9018') {
                                              imageName = '9018';
                                            } else if (object.colorRal ==
                                                '9022') {
                                              imageName = '9022';
                                            } else if (object.colorRal ==
                                                '9023') {
                                              imageName = '9023';
                                            } else if (object.colorRal ==
                                                '1000') {
                                              imageName = '1000';
                                            } else if (object.colorRal ==
                                                '1001') {
                                              imageName = '1001';
                                            } else if (object.colorRal ==
                                                '1002') {
                                              imageName = '1002';
                                            } else if (object.colorRal ==
                                                '1003') {
                                              imageName = '1003';
                                            } else if (object.colorRal ==
                                                '1004') {
                                              imageName = '1004';
                                            } else if (object.colorRal ==
                                                '1005') {
                                              imageName = '1005';
                                            } else if (object.colorRal ==
                                                '1006') {
                                              imageName = '1006';
                                            } else if (object.colorRal ==
                                                '1007') {
                                              imageName = '1007';
                                            } else if (object.colorRal ==
                                                '1011') {
                                              imageName = '1011';
                                            } else if (object.colorRal ==
                                                '1012') {
                                              imageName = '1012';
                                            } else if (object.colorRal ==
                                                '1013') {
                                              imageName = '1013';
                                            } else if (object.colorRal ==
                                                '1014') {
                                              imageName = '1014';
                                            } else if (object.colorRal ==
                                                '1015') {
                                              imageName = '1015';
                                            } else if (object.colorRal ==
                                                '1016') {
                                              imageName = '1016';
                                            } else if (object.colorRal ==
                                                '1017') {
                                              imageName = '1017';
                                            } else if (object.colorRal ==
                                                '1018') {
                                              imageName = '1018';
                                            } else if (object.colorRal ==
                                                '1019') {
                                              imageName = '1019';
                                            } else if (object.colorRal ==
                                                '1020') {
                                              imageName = '1020';
                                            } else if (object.colorRal ==
                                                '1021') {
                                              imageName = '1021';
                                            } else if (object.colorRal ==
                                                '1023') {
                                              imageName = '1023';
                                            } else if (object.colorRal ==
                                                '1024') {
                                              imageName = '1024';
                                            } else if (object.colorRal ==
                                                '1026') {
                                              imageName = '1026';
                                            } else if (object.colorRal ==
                                                '1027') {
                                              imageName = '1027';
                                            } else if (object.colorRal ==
                                                '1028') {
                                              imageName = '1028';
                                            } else if (object.colorRal ==
                                                '1032') {
                                              imageName = '1032';
                                            } else if (object.colorRal ==
                                                '1033') {
                                              imageName = '1033';
                                            } else if (object.colorRal ==
                                                '1034') {
                                              imageName = '1034';
                                            } else if (object.colorRal ==
                                                '1035') {
                                              imageName = '1035';
                                            } else if (object.colorRal ==
                                                '1036') {
                                              imageName = '1036';
                                            } else if (object.colorRal ==
                                                '1037') {
                                              imageName = '1037';
                                            } else if (object.colorRal ==
                                                    'нет данных' ||
                                                object.colorRal == null) {
                                              imageName = 'imagenull';
                                            }
                                            final value = await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CameraPage(imageName)),
                                            ).then((value) {
                                              setState(() async {
                                                if (value != null) {
                                                  _imageColor = value;

                                                  if (_4formKey.currentState
                                                      .validate()) {
                                                    _4formKey.currentState
                                                        .save();
                                                    if (_imageColor != null) {
                                                      final Directory extDir =
                                                          await getApplicationDocumentsDirectory();
                                                      final String dirPath =
                                                          '${extDir.path}/Pictures/flutter_test';
                                                      await Directory(dirPath)
                                                          .create(
                                                              recursive: true);
                                                      final String filePath =
                                                          '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                      await _imageColor
                                                          .copy(filePath);
                                                      object.photoRal =
                                                          filePath;
                                                    }
                                                  }
                                                }
                                              });
                                            });
                                          },
                                          child: const Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green))),
                                  items: object.katRal == '1**** - жёлтые'
                                      ? _colorRal1.map((String value) {
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Row(
                                              children: <Widget>[
                                                imagePaths.containsKey(value)
                                                    ? Image.asset(
                                                        imagePaths[value],
                                                        height: 10,
                                                        width: 30,
                                                      )
                                                    : SizedBox(),
                                                Text(value),
                                              ],
                                            ),
                                          );
                                        }).toList()
                                      : object.katRal == '2**** - оранжевые'
                                          ? _colorRal2.map((String value) {
                                              return DropdownMenuItem(
                                                value: value,
                                                child: Row(
                                                  children: <Widget>[
                                                    imagePaths
                                                            .containsKey(value)
                                                        ? Image.asset(
                                                            imagePaths[value],
                                                            height: 10,
                                                            width: 30,
                                                          )
                                                        : SizedBox(),
                                                    Text(value),
                                                  ],
                                                ),
                                              );
                                            }).toList()
                                          : object.katRal == '3**** - красные'
                                              ? _colorRal3.map((String value) {
                                                  return DropdownMenuItem(
                                                    value: value,
                                                    child: Row(
                                                      children: <Widget>[
                                                        imagePaths.containsKey(
                                                                value)
                                                            ? Image.asset(
                                                                imagePaths[
                                                                    value],
                                                                height: 10,
                                                                width: 30,
                                                              )
                                                            : SizedBox(),
                                                        Text(value),
                                                      ],
                                                    ),
                                                  );
                                                }).toList()
                                              : object.katRal ==
                                                      '4**** - фиолетовые'
                                                  ? _colorRal4
                                                      .map((String value) {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Row(
                                                          children: <Widget>[
                                                            imagePaths
                                                                    .containsKey(
                                                                        value)
                                                                ? Image.asset(
                                                                    imagePaths[
                                                                        value],
                                                                    height: 10,
                                                                    width: 30,
                                                                  )
                                                                : SizedBox(),
                                                            Text(value),
                                                          ],
                                                        ),
                                                      );
                                                    }).toList()
                                                  : object.katRal ==
                                                          '5**** - синие'
                                                      ? _colorRal5
                                                          .map((String value) {
                                                          return DropdownMenuItem(
                                                            value: value,
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                imagePaths.containsKey(
                                                                        value)
                                                                    ? Image
                                                                        .asset(
                                                                        imagePaths[
                                                                            value],
                                                                        height:
                                                                            10,
                                                                        width:
                                                                            30,
                                                                      )
                                                                    : SizedBox(),
                                                                Text(value),
                                                              ],
                                                            ),
                                                          );
                                                        }).toList()
                                                      : object.katRal ==
                                                              '6**** - зелёные'
                                                          ? _colorRal6.map(
                                                              (String value) {
                                                              return DropdownMenuItem(
                                                                value: value,
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    imagePaths.containsKey(
                                                                            value)
                                                                        ? Image
                                                                            .asset(
                                                                            imagePaths[value],
                                                                            height:
                                                                                10,
                                                                            width:
                                                                                30,
                                                                          )
                                                                        : SizedBox(),
                                                                    Text(value),
                                                                  ],
                                                                ),
                                                              );
                                                            }).toList()
                                                          : object.katRal ==
                                                                  '7**** - серые'
                                                              ? _colorRal7.map(
                                                                  (String
                                                                      value) {
                                                                  return DropdownMenuItem(
                                                                    value:
                                                                        value,
                                                                    child: Row(
                                                                      children: <
                                                                          Widget>[
                                                                        imagePaths.containsKey(value)
                                                                            ? Image.asset(
                                                                                imagePaths[value],
                                                                                height: 10,
                                                                                width: 30,
                                                                              )
                                                                            : SizedBox(),
                                                                        Text(
                                                                            value),
                                                                      ],
                                                                    ),
                                                                  );
                                                                }).toList()
                                                              : object.katRal ==
                                                                      '8**** - коричневые'
                                                                  ? _colorRal8
                                                                      .map((String
                                                                          value) {
                                                                      return DropdownMenuItem(
                                                                        value:
                                                                            value,
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
                                                                            imagePaths.containsKey(value)
                                                                                ? Image.asset(
                                                                                    imagePaths[value],
                                                                                    height: 10,
                                                                                    width: 30,
                                                                                  )
                                                                                : SizedBox(),
                                                                            Text(value),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    }).toList()
                                                                  : object.katRal ==
                                                                          '9**** - светлые и тёмные'
                                                                      ? _colorRal9.map(
                                                                          (String
                                                                              value) {
                                                                          return DropdownMenuItem(
                                                                            value:
                                                                                value,
                                                                            child:
                                                                                Row(
                                                                              children: <Widget>[
                                                                                imagePaths.containsKey(value)
                                                                                    ? Image.asset(
                                                                                        imagePaths[value],
                                                                                        height: 10,
                                                                                        width: 30,
                                                                                      )
                                                                                    : SizedBox(),
                                                                                Text(value),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        }).toList()
                                                                      : _notdata.map(
                                                                          (String
                                                                              value) {
                                                                          return DropdownMenuItem(
                                                                              value: value,
                                                                              child: Text(value));
                                                                        }).toList(),
                                  style: textStyle,
                                  value: object.colorRal,
                                  onChanged: (String value) {
                                    setState(() {
                                      object.colorRal = value;
                                      object.colorRal = colorRalController.text;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
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
                                            imagePath: object.photoRal)),
                                  );
                                },
                                child: Center(
                                  child: object.photoRal != null
                                      ? Image.file(
                                          File(object.photoRal),
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

                      // TextFormField(
                      //   focusNode: focusNode44,
                      //   onChanged: (String value) {
                      //     setState(() {
                      //       focusNode44.requestFocus();
                      //     });
                      //   },
                      //   maxLength: 20,
                      //   keyboardType: TextInputType.text,
                      //   controller: bgcolorController,
                      //   style: textStyle,
                      //   decoration: InputDecoration(
                      //     labelText: object.bgcolor == null
                      //         ? "Определить цвет покрытия"
                      //         : 'Цвет покрытия ${object.bgcolor}',
                      //     hintText: 'Введите цвет',
                      //     helperText: 'цвет',
                      //     prefixIcon: Icon(
                      //       Icons.color_lens,
                      //       color: object.bgcolor == null
                      //           ? Colors.grey
                      //           : Color(int.tryParse(object.bgcolor) ?? 0),
                      //       size: 32,
                      //     ),
                      //     suffixIcon: GestureDetector(
                      //       onTap: () async {
                      //         String colorCode = await ColorPickerCamera
                      //             .captureColorFromCamera;
                      //         setState(() {
                      //           selectedColor = colorCode;
                      //           bgcolorController.text = selectedColor;
                      //           object.bgcolor = selectedColor;
                      //         });
                      //       },
                      //       child: Icon(
                      //         Icons.colorize,
                      //         color: object.bgcolor == null
                      //             ? Colors.grey
                      //             : Color(int.tryParse(object.bgcolor) ?? 0),
                      //       ),
                      //     ),
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       borderSide: BorderSide(
                      //           color: object.bgcolor == null
                      //               ? Colors.grey
                      //               : Color(int.tryParse(object.bgcolor) ?? 0),
                      //           width: 2),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(20)),
                      //       borderSide: BorderSide(
                      //           color: object.bgcolor == null
                      //               ? Colors.grey
                      //               : Color(int.tryParse(object.bgcolor) ?? 0),
                      //           width: 2),
                      //     ),
                      //     labelStyle: TextStyle(
                      //       fontSize: 22,
                      //       fontWeight: FontWeight.w300,
                      //       color: object.bgcolor == null
                      //           ? Colors.grey
                      //           : Color(int.tryParse(object.bgcolor) ?? 0),
                      //     ),
                      //   ),
                      //   onSaved: (value) {
                      //     object.bgcolor = value;
                      //   },
                      //   // validator: (value) {
                      //   //   if (value.isEmpty) {
                      //   //     return 'Пожалуйста, введите цвет RAL';
                      //   //   }
                      //   //   return null;
                      //   // },
                      // ),

                      // SizedBox(height: 10),
                      // ElevatedButton(
                      //     style: ElevatedButton.styleFrom(
                      //         backgroundColor: object.bgcolor == null
                      //             ? Colors.white
                      //             : Color(int.parse(object.bgcolor))),
                      //     onPressed: () async {
                      //       String colorCode =
                      //           await ColorPickerCamera.captureColorFromCamera;
                      //       setState(() {
                      //         selectedColor = colorCode;
                      //         bgColor = Color(int.parse(colorCode));
                      //         object.bgcolor = selectedColor;
                      //       });
                      //     },
                      //     child: Text(
                      //         object.bgcolor == null
                      //             ? "Определить цвет покрытия "
                      //             : 'Цвет покрытия ${object.bgcolor}',
                      //         style: const TextStyle(color: Colors.black))),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Толщиномер покрытий',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              thickinsulmeterController.clear();
                                              tickinsulmeternumbController
                                                  .clear();
                                              tickinsulmeterdateController
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
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode27,
                                      onFieldSubmitted: (String value) {
                                        setState(() {
                                          focusNode12.requestFocus();
                                        });
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode27.requestFocus();
                                          object.thickinsulmeter = value;
                                          object.thickinsulmeter =
                                              thickinsulmeterController.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.thickinsulmeter = value;
                                      },
                                      controller: thickinsulmeterController,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Толщиномер покрытий',
                                        hintText: 'Введите название',
                                        helperText: '... № ...',
                                        prefixIcon: Icon(
                                          Icons.speaker_phone,
                                          color: focusNode27.hasFocus ||
                                                  thickinsulmeterController
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode12,
                                            onFieldSubmitted: (String value) {
                                              setState(() {
                                                focusNode11.requestFocus();
                                              });
                                            },
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode12.requestFocus();
                                                object.tickinsulmeternumb =
                                                    value;
                                                object.tickinsulmeternumb =
                                                    tickinsulmeternumbController
                                                        .text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.tickinsulmeternumb = value;
                                            },
                                            controller:
                                                tickinsulmeternumbController,
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
                                                color: focusNode12.hasFocus ||
                                                        tickinsulmeternumbController
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
                                                  focusNode: focusNode11,
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
                                                        tickinsulmeterdateController
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.tickinsulmeterdate =
                                                            tickinsulmeterdateController
                                                                .text;
                                                        focusNode28
                                                            .requestFocus();
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode11
                                                                .hasFocus ||
                                                            tickinsulmeterdateController
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    tickinsulmeterdateController
                                                        .text,
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
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Адгезиметр',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
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
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode28,
                                      onFieldSubmitted: (String value) {
                                        setState(() {
                                          focusNode13.requestFocus();
                                        });
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode28.requestFocus();
                                          object.adhesmeter = value;
                                          object.adhesmeter =
                                              adhesmeterController.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.adhesmeter = value;
                                      },
                                      controller: adhesmeterController,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Адгезиметр',
                                        hintText: 'Введите название',
                                        helperText: '... № ...',
                                        prefixIcon: Icon(
                                          Icons.broken_image,
                                          color: focusNode28.hasFocus ||
                                                  adhesmeterController
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode13,
                                            onFieldSubmitted: (String value) {
                                              setState(() {
                                                focusNode14.requestFocus();
                                              });
                                            },
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode13.requestFocus();
                                                object.adhesmeternumb = value;
                                                object.adhesmeternumb =
                                                    adhesmeternumbController
                                                        .text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.adhesmeternumb = value;
                                            },
                                            controller:
                                                adhesmeternumbController,
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
                                                Icons.broken_image,
                                                color: focusNode13.hasFocus ||
                                                        adhesmeternumbController
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
                                                  focusNode: focusNode14,
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
                                                        adhesmeterdateController
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.adhesmeterdate =
                                                            adhesmeterdateController
                                                                .text;
                                                        focusNode29
                                                            .requestFocus();
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode14
                                                                .hasFocus ||
                                                            adhesmeterdateController
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    adhesmeterdateController
                                                        .text,
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
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Искровой дефектоскоп',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
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
                                      onFieldSubmitted: (String value) {
                                        setState(() {
                                          focusNode49.requestFocus();
                                        });
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode29.requestFocus();
                                          object.continmeter = value;
                                          object.continmeter =
                                              continmeterController.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.continmeter = value;
                                      },
                                      controller: continmeterController,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Искровой дефектоскоп',
                                        hintText: 'Введите название',
                                        helperText: '... № ...',
                                        prefixIcon: Icon(
                                          Icons.bolt,
                                          color: focusNode29.hasFocus ||
                                                  continmeterController
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
                                            onFieldSubmitted: (String value) {
                                              setState(() {
                                                focusNode48.requestFocus();
                                              });
                                            },
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode49.requestFocus();
                                                object.continmeternumb = value;
                                                object.continmeternumb =
                                                    continmeternumbController
                                                        .text;
                                              });
                                            },
                                            maxLength: 30,
                                            onSaved: (value) {
                                              object.continmeternumb = value;
                                            },
                                            controller:
                                                continmeternumbController,
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
                                                Icons.flash_on,
                                                color: focusNode49.hasFocus ||
                                                        continmeternumbController
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
                                                  focusNode: focusNode48,
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
                                                        continmeterdateController
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.continmeterdate =
                                                            continmeterdateController
                                                                .text;
                                                        focusNode30
                                                            .requestFocus();
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode48
                                                                .hasFocus ||
                                                            continmeterdateController
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    continmeterdateController
                                                        .text,
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
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Комплект ВИК',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Theme.of(context)
                                                    .primaryColor,
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
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      focusNode: focusNode30,
                                      onFieldSubmitted: (String value) {
                                        setState(() {
                                          focusNode51.requestFocus();
                                        });
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode30.requestFocus();
                                          object.setvik = value;
                                          object.setvik = setvikController.text;
                                        });
                                      },
                                      maxLength: 20,
                                      onSaved: (value) {
                                        object.setvik = value;
                                      },
                                      controller: setvikController,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        labelText: 'Комплект ВИК',
                                        hintText: 'Введите Комплект ВИК',
                                        helperText: '№ ...',
                                        prefixIcon: Icon(
                                          Icons.business_center,
                                          color: focusNode30.hasFocus ||
                                                  setvikController
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
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            focusNode: focusNode51,
                                            onFieldSubmitted: (String value) {
                                              setState(() {
                                                focusNode50.requestFocus();
                                              });
                                            },
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode51.requestFocus();
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
                                                Icons.business_center,
                                                color: focusNode51.hasFocus ||
                                                        setviknumbController
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
                                                        setvikdateController
                                                            .text = DateFormat(
                                                                'dd.MM.yyyy')
                                                            .format(
                                                                selectedDate);
                                                        object.setvikdate =
                                                            setvikdateController
                                                                .text;
                                                      });
                                                    }
                                                  },
                                                  icon: Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: focusNode50
                                                                .hasFocus ||
                                                            setvikdateController
                                                                .text.isNotEmpty
                                                        ? Theme.of(context)
                                                            .primaryColor
                                                        : Colors.grey,
                                                    size: 32,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    setvikdateController.text,
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
                          ],
                        ),
                      ),

                      // SizedBox(height: 10),
                      Divider(thickness: 4),

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
                      const SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ДОПОЛНИТЕЛЬНАЯ ИНФОРМАЦИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Оценка декоративных свойств покрытия по ГОСТ 9.407',
                          style: TextStyle(
                            fontSize: 24,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'АД ${highestDegreeDController.text}',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode32,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.auto_awesome,
                            color: focusNode32.hasFocus ||
                                    changeglossController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень изменения блеска',
                        ),
                        items: _changegloss.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.changegloss,
                        onChanged: (String value) {
                          setState(() {
                            focusNode32.requestFocus();
                            changeglossController.text = value;
                            object.changegloss = value;
                            calculateHighestDegreeD();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode31,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.palette,
                            color: focusNode31.hasFocus ||
                                    changecolorController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень изменения цвета',
                        ),
                        items: _changecolor.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.changecolor,
                        onChanged: (String value) {
                          setState(() {
                            changecolorController.text = value;
                            focusNode31.requestFocus();
                            object.changecolor = value;
                            calculateHighestDegreeD();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode33,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.shower,
                            color: focusNode33.hasFocus ||
                                    mudretantController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень грязеудержания',
                        ),
                        items: _mudretant.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.mudretant,
                        onChanged: (String value) {
                          setState(() {
                            mudretantController.text = value;
                            focusNode33.requestFocus();
                            object.mudretant = value;
                            calculateHighestDegreeD();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        onChanged: (String value) {
                          setState(() {
                            chalkingController.text = value;
                            focusNode34.requestFocus();
                            object.chalking = value;
                            calculateHighestDegreeD();
                          });
                        },
                        isExpanded: true,
                        focusNode: focusNode34,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.waving_hand,
                            color: focusNode34.hasFocus ||
                                    chalkingController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень меления',
                        ),
                        items: _chalking.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.chalking,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Оценка защитных свойств покрытия по ГОСТ 9.407',
                          style: TextStyle(
                            fontSize: 24,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'АЗ ${highestDegreeZController.text}',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode59,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.auto_awesome,
                            color: focusNode59.hasFocus ||
                                    rastreskController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень растрескивания покрытий',
                        ),
                        items: _rastresk.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.rastresk,
                        onChanged: (String value) {
                          setState(() {
                            rastreskController.text = value;
                            focusNode59.requestFocus();
                            object.rastresk = value;

                            calculateHighestDegreeZ();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode60,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.palette,
                            color: focusNode60.hasFocus ||
                                    otslaivanController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень отслаивания покрытий',
                        ),
                        items: _otslaivan.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.otslaivan,
                        onChanged: (String value) {
                          setState(() {
                            object.otslaivan = otslaivanController.text;
                            otslaivanController.text = value;
                            focusNode60.requestFocus();
                            object.otslaivan = value;

                            calculateHighestDegreeZ();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode58,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.shower,
                            color: focusNode58.hasFocus ||
                                    vyvetrivController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Степень выветривания',
                        ),
                        items: _vyvetriv.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.vyvetriv,
                        onChanged: (String value) {
                          setState(() {
                            vyvetrivController.text = value;
                            focusNode58.requestFocus();
                            object.vyvetriv = value;

                            calculateHighestDegreeZ();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode57,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.waving_hand,
                            color: focusNode57.hasFocus ||
                                    puzyrController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Оценка образования пузырей',
                        ),
                        items: _puzyr.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.puzyr,
                        onChanged: (String value) {
                          setState(() {
                            puzyrController.text = value;
                            focusNode57.requestFocus();
                            object.puzyr = value;
                            calculateHighestDegreeZ();
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode56,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
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
                          prefixIcon: Icon(
                            Icons.waving_hand,
                            color: focusNode56.hasFocus ||
                                    korroziyaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          labelText: 'Оценка коррозии металла',
                        ),
                        items: _korroziya.map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                        style: textStyle,
                        value: object.korroziya,
                        onChanged: (String value) {
                          setState(() {
                            korroziyaController.text = value;
                            focusNode56.requestFocus();
                            object.korroziya = value;

                            calculateHighestDegreeZ();
                          });
                        },
                      ),
                      Divider(thickness: 4),
                      TextFormField(
                        focusNode: focusNode35,
                        onChanged: (String value) {
                          setState(() {
                            focusNode35.requestFocus();
                            object.description = value;
                            object.description = descriptionController.text;
                          });
                        },
                        maxLength: 1000,
                        onSaved: (value) {
                          object.description = value;
                        },
                        controller: descriptionController,
                        decoration: InputDecoration(
                          labelText: 'Доплнительные сведения',
                          hintText:
                              'Особенности, дефекты, условия, замечания...',
                          border: const OutlineInputBorder(),
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
                        maxLines: 10,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(137),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
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
                      const SizedBox(height: 20),
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
                          setState(() {     focusNode79.requestFocus();
                          object.fioproizvrab = value;
                                object.fioproizvrab = fioproizvrabController.text;});
                     
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                          
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
                          setState(() {   focusNode88.requestFocus();
                          object.dolzhnpredststroitSK = value;
                                object.dolzhnpredststroitSK = dolzhnproizvrabController.text;});
                       
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode83,
                        onChanged: (String value) {
                          setState(() { focusNode83.requestFocus();
                          object.fiopredststroitSK = value;
                                object.fiopredststroitSK = fiopredststroitSKController.text;
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
                          setState(() {   focusNode82.requestFocus();
                          object.dolzhnnachuchastka = value;
                                object.dolzhnnachuchastka = dolzhnnachuchastkaController.text;});
                       
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode85,
                        onChanged: (String value) {
                          setState(() {focusNode85.requestFocus();
                            object.fionachuchastka = value;
                                  object.fionachuchastka = fionachuchastkaController.text;
                                  });
                          
                        },
                        // maxLength: 20,
                        onSaved: (value) {
                        
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
                          setState(() {         focusNode89.requestFocus();
                          object.dolzhnpredststroit = value;
                                object.dolzhnpredststroit = dolzhnpredststroitController.text;
                          });
                 
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode84,
                        onChanged: (String value) {
                          setState(() {   focusNode84.requestFocus();
                                     object.fiopredststroit = value;
                                           object.fiopredststroit = fiopredststroitController.text;
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
                          setState(() {       focusNode111.requestFocus();
                          object.dolzhnpredstzakazch = value;
                                object.dolzhnpredstzakazch = dolzhnpredstzakazchController.text;
                          });
                   
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode80,
                        onChanged: (String value) {
                          setState(() {         focusNode80.requestFocus();
                          object.fiopredstzakazch = value;
                                object.fiopredstzakazch = fiopredstzakazchController.text;
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
                          setState(() { focusNode113.requestFocus();
                          object.dolzhnpredstzakazchSK = value;
                                object.dolzhnpredstzakazchSK = dolzhnpredstzakazchSKController.text;
                          });
                         
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        focusNode: focusNode87,
                        onChanged: (String value) {
                          setState(() {    focusNode87.requestFocus();
                           object.fiopredstzakazchSK = value;
                                object.fiopredstzakazchSK = fiopredstzakazchSKController.text;
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
                          editExcelFile('PKPPO');
                        },
                        child: const Text(
                          'Сформировать Протокол контроля подготовки поверхности к окраске',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('ZHPPKR');
                        },
                        child: const Text(
                          'Сформировать Журнал производства противокоррозионных работ',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('PKNLM');
                        },
                        child: const Text(
                          'Сформировать Протокол качества нанесения лакокрасочных покрытий',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('AOSR');
                        },
                        child: const Text(
                          'Сформировать Акт освидетельствования скрытых работ',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        onPressed: () {
                          editExcelFile('APSLP');
                        },
                        child: const Text(
                          'Сформировать Акт приемки системы лакокрасочных покрытий, выполненных по объекту ',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
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
          ],
        ),
        // floatingActionButton: isEdit
        //     ? FloatingActionButton(
        //         onPressed: () {
        //           debugPrint('Click Floated Back.');
        //           confirmDelete();
        //         },
        //         elevation: 5.0,
        //         backgroundColor: Colors.red,
        //         tooltip: 'Удалить запись',
        //         child: const Icon(Icons.clear, size: 35.0))
        //     : null,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  void editExcelFile(String buttonName) async {
    try {
      if (buttonName == 'ZHPPKR') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/LKP/ZHPPKR.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['ZHPPKR'];
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
        // sheet.cell(CellIndex.indexByString("E5")).value = filial;
        sheet.cell(CellIndex.indexByString("F8")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("F12")).value =
            object.dolzhnnachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("C14")).value =
            object.dateObsl1 ?? '-';
        sheet.cell(CellIndex.indexByString("I14")).value =
            object.dateObsl2 ?? '-';
        sheet.cell(CellIndex.indexByString("A25")).value =
            object.dateObsl1 ?? '-';
        sheet.cell(CellIndex.indexByString("B25")).value =
            object.techcondmat ?? '-';
        sheet.cell(CellIndex.indexByString("C25")).value =
            object.squarerest ?? '-';
        sheet.cell(CellIndex.indexByString("D25")).value =
            object.tempair ?? '-';
        sheet.cell(CellIndex.indexByString("E25")).value =
            object.tempsurf ?? '-';
        sheet.cell(CellIndex.indexByString("F25")).value =
            object.techcondmat1 ?? '-';
        sheet.cell(CellIndex.indexByString("I25")).value =
            object.numdoflay.toString() ??
                '-' + ', ' + object.thickofdrylay.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("I25")).value =
            object.techcondmat ?? '-';
        sheet.cell(CellIndex.indexByString("J25")).value =
            object.tempair.toString() + ', ' + object.timedry.toString() ?? '-';
        sheet.cell(CellIndex.indexByString("K25")).value =
            object.fionachuchastka ?? '-';
        sheet.cell(CellIndex.indexByString("M25")).value =
            object.description ?? '-';

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
      } else if (buttonName == 'PKPPO') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/LKP/PKPPO.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['PKPPO'];
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
        sheet.cell(CellIndex.indexByString("D8")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("E5")).value =
            object.dateObsl1 ?? '-';
        sheet.cell(CellIndex.indexByString("D10")).value =
            object.squareclear ?? '-';
        sheet.cell(CellIndex.indexByString("A16")).value =
            object.dateObsl1.toString() ??
                '-' + '-' + object.dateObsl2.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("B16")).value =
            object.tempair ?? '-';
        sheet.cell(CellIndex.indexByString("C16")).value =
            object.relathumid ?? '-';
        sheet.cell(CellIndex.indexByString("D16")).value =
            object.prepmethod ?? '-';
        sheet.cell(CellIndex.indexByString("E16")).value = object.degrofdegr ==
                null
            ? '-'
            : object.degrofdegr ==
                    '1 - слабо выраженное темне пятно на салфетке при испытании методом протирки'
                ? '1'
                : object.degrofdegr ==
                        '2 - явно выраженное темне пятно на салфетке при испытании методом протирки'
                    ? '2'
                    : object.degrofdegr == 'нет данных'
                        ? '-'
                        : '-';

        sheet.cell(CellIndex.indexByString("F16")).value = object.degrofoxid ==
                null
            ? '-'
            : object.degrofoxid ==
                    '1-при осмотре с шестикратным увелиением окалина и ржавчина не обнаружены'
                ? '1'
                : object.degrofoxid ==
                        '2-при осмотре невооруженным глазом не обнаружены окалина, ржавчина, пригар, остатки формовочной смеси и другие неметаллические соли'
                    ? '2'
                    : object.degrofoxid ==
                            '3-не более чем на 5% поверхности имеются пятна и полосы плотно сцепленной окалины и литейная корка, видимые невооруженным глазом. На любом из участков поверхности изделия окалина занимает не более 10% площади пластины размером 25х25мм'
                        ? '3'
                        : object.degrofoxid ==
                                '4-с поверхности удалены ржавчина и отслаивающаяся окалина'
                            ? '4'
                            : object.degrofoxid == 'нет данных'
                                ? '-'
                                : '-' + '/' + object.iso8501 == null
                                    ? '-'
                                    : object.iso8501;
        sheet
            .cell(CellIndex.indexByString("G16"))
            .value = object.degrofdedust1 == null ||
                object.degrofdedust1 == 'нет данных'
            ? '-'
            : object.degrofdedust1.toString() + '/' + object.degrofdedust2 ==
                        null ||
                    object.degrofdedust2 == 'нет данных'
                ? '-'
                : object.degrofdedust2 ==
                        '0-частицы, не видимые при увеличении х10'
                    ? '0'
                    : object.degrofdedust2 ==
                            '1-частицы, видимые при увеличении х10, но не видимые при нормальном или скорректированном зрении (обычно частицы диаметром менее 50мкм)'
                        ? '1'
                        : object.degrofdedust2 ==
                                '2-частицы, видимые при нормальном или скорректированном зрении (обычно частицы диаметром от 50 до 100мкм)'
                            ? '2'
                            : object.degrofdedust2 ==
                                    '3-частицы, видимые при нормальном или скорректированном зрении (частицы диаметром до 0.5мм)'
                                ? '3'
                                : object.degrofdedust2 ==
                                        '4-частицы диаметром от 0.5мм до 2.5мм'
                                    ? '4'
                                    : object.degrofdedust2 ==
                                            '5-частицы диаметром более 2,5мм'
                                        ? '5'
                                        : '-';
        sheet.cell(CellIndex.indexByString("H16")).value =
            object.roughness ?? '-';
        sheet.cell(CellIndex.indexByString("I16")).value =
            object.surfsalts ?? '-';
        sheet.cell(CellIndex.indexByString("E26")).value = object.title ?? '-';

        sheet.cell(CellIndex.indexByString("C31")).value =
            object.dolzhnpredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("H31")).value =
            object.fiopredstzakazch ?? '-';

        sheet.cell(CellIndex.indexByString("C34")).value =
            object.dolzhnproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("H34")).value =
            object.fioproizvrab ?? '-';

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
      } else if (buttonName == 'PKNLM') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/LKP/PKNLM.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['PKNLM'];
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
        sheet.cell(CellIndex.indexByString("G8")).value = object.title ?? '-';
        sheet.cell(CellIndex.indexByString("G10")).value =
            object.squarerest ?? '-';
        sheet.cell(CellIndex.indexByString("F5")).value =
            object.dateObsl2 ?? '-';
        sheet.cell(CellIndex.indexByString("A16")).value =
            object.dateObsl1.toString() ??
                '-' + '-' + object.dateObsl2.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("B16")).value =
            object.tempair ?? '-';
        sheet.cell(CellIndex.indexByString("C16")).value =
            object.relathumid ?? '-';
        sheet.cell(CellIndex.indexByString("D16")).value =
            object.tempsurf ?? '-';
        sheet.cell(CellIndex.indexByString("E16")).value =
            object.dewpoint ?? '-';
        sheet.cell(CellIndex.indexByString("F16")).value =
            object.difftemp ?? '-';

        sheet.cell(CellIndex.indexByString("G16")).value =
            object.techcondmat.toString() ??
                '-' + '/' + object.techcondmat1.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("H16")).value =
            object.numdoflay ?? '-';
        sheet.cell(CellIndex.indexByString("I16")).value =
            object.thickofwellay ?? '-';
        sheet.cell(CellIndex.indexByString("J16")).value =
            object.thickofdrylay ?? '-';
        sheet.cell(CellIndex.indexByString("K16")).value = object.contin ?? '-';
        sheet.cell(CellIndex.indexByString("L16")).value = object.timedry
                .toString() ??
            '-' +
                '/' +
                (object.degrdry.toString() == null ||
                        object.degrdry == 'нет данных'
                    ? '-'
                    : object.degrdry ==
                            '1-стеклянные шарики полностью удаляются мягкой волосяной нитью, не повреждая поверхности пленки'
                        ? '1'
                        : object.degrdry ==
                                '2-бумага не прилипает к покрытию (нагрузка 20г)'
                            ? '2'
                            : object.degrdry ==
                                    '3-бумага не прилипает к покрытию (нагрузка 200г)'
                                ? '3'
                                : object.degrdry ==
                                        '4-бумага не прилипает к покрытию, на поверхности покрытия образуется след от нагрузки (нагрузка 2кг)'
                                    ? '4'
                                    : object.degrdry ==
                                            '5-бумага не прилипает к покрытию и не оставляет след от нагрузки (нагрузка 2кг)'
                                        ? '5'
                                        : object.degrdry ==
                                                '6-бумага не прилипает к покрытию. На поверхности покрытия остаётся след от нагрузки (нагрузка 20кг)'
                                            ? '6'
                                            : object.degrdry ==
                                                    '7-бумага не прилипает к покрытию и не оставляет след от нагрузки(нагрузка 20кг)'
                                                ? '7'
                                                : '-');

        sheet.cell(CellIndex.indexByString("F22")).value = object.defdur ?? '-';
        sheet.cell(CellIndex.indexByString("E26")).value =
            object.techcondmat ?? '-';

        sheet.cell(CellIndex.indexByString("D32")).value =
            object.dolzhnpredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("J32")).value =
            object.fiopredstzakazch ?? '-';

        sheet.cell(CellIndex.indexByString("D35")).value =
            object.dolzhnproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("J35")).value =
            object.fioproizvrab ?? '-';

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
      } else if (buttonName == 'AOSR') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/LKP/AOSR.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['AOSR'];
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
        sheet.cell(CellIndex.indexByString("H8")).value = object.dateObsl1;
        sheet.cell(CellIndex.indexByString("A11")).value =
            object.dolzhnproizvrab.toString() ??
                '-' + ', ' + object.fioproizvrab.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("A14")).value =
            object.dolzhnnachuchastka.toString() ??
                '-' + ', ' + object.fionachuchastka.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("A17")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + ', ' + object.fiopredstzakazch.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("A17")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + ', ' + object.fiopredstzakazch.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("A24")).value =
            object.dolzhnpredststroit.toString() ??
                '-' + ', ' + object.fiopredststroit.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("E29")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("E33")).value = object.title ?? '-';

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
      } else if (buttonName == 'APSLP') {
        // Получаем путь к файлу Excel в папке assets
        ByteData data = await rootBundle.load('assets/form/LKP/APSLP.xlsx');
        List<int> bytes = data.buffer.asUint8List();

        // Открываем файл Excel
        var excel = Excel.decodeBytes(bytes);

        // Получаем страницу, на которой нужно вставить данные
        var sheet = excel['APSLP'];
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
        sheet.cell(CellIndex.indexByString("E5")).value = object.dateObsl2;
        sheet.cell(CellIndex.indexByString("E7")).value = object.title;
        sheet.cell(CellIndex.indexByString("C11")).value =
            object.dolzhnpredskom.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("H11")).value =
            object.fiopredskom ?? '-';
        sheet.cell(CellIndex.indexByString("C13")).value =
            object.dolzhnproizvrab.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("H13")).value =
            object.fioproizvrab ?? '-';
        sheet.cell(CellIndex.indexByString("C15")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("H15")).value =
            object.fiopredstzakazch ?? '-';
        sheet.cell(CellIndex.indexByString("D18")).value = filial ?? '-';
        sheet.cell(CellIndex.indexByString("E24")).value =
            object.squarerest.toString() ?? '-' + 'кв.м.';

        sheet.cell(CellIndex.indexByString("P25")).value =
            object.squareclear.toString() ?? '-' + 'кв.м.';
        sheet.cell(CellIndex.indexByString("E27")).value = object.dateObsl1;
        sheet.cell(CellIndex.indexByString("E28")).value = object.dateObsl2;
        sheet.cell(CellIndex.indexByString("B33")).value =
            object.dateObsl1.toString() ??
                '-' + '-' + object.dateObsl2.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("C33")).value =
            object.techcondmat.toString() ??
                '-' + '/' + object.techcondmat1.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("D33")).value = object.numdoflay;
        sheet.cell(CellIndex.indexByString("E33")).value = object.thickofdrylay;
        sheet.cell(CellIndex.indexByString("F33")).value = object.apperance ==
                    null ||
                object.apperance == 'нет данных'
            ? '-'
            : object.apperance ==
                    '1-не допускаются никакие дефекты для любых покрытий, кроме - не более включений 4шт/м2, размером - не более 0,2мм, находящихся на расстоянии не менее 100мм друг от друга'
                ? '1'
                : object.apperance ==
                        '2-допускается незначительная шагрень и отдельные штрихи, риски. Потеки, волнистость, разнооттеночность. Неодноросдность рисунка не нормируется'
                    ? '2'
                    : object.apperance ==
                            '3-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается незначительная. Потеки, разнооттеночность - не допускается'
                        ? '3'
                        : object.apperance ==
                                '4-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается. Потеки, разнооттеночность - не допускается'
                            ? '4'
                            : object.apperance ==
                                    '5-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень - допускается. Потеки - допускаются отдельные. Разнооттеночность - не допускается'
                                ? '5'
                                : object.apperance ==
                                        '6-включения и волнистость нормируются согласно табл.2 ГОСТ 9.032. Шагрень, штрихи, риски - допускается. Потеки, разнооттеночность - допускаются'
                                    ? '6'
                                    : object.apperance ==
                                            '7-Дефекты, вклюения - не нормируются'
                                        ? '7'
                                        : '-';
        sheet.cell(CellIndex.indexByString("G33")).value =
            object.bgcolor ?? '-';
        sheet.cell(CellIndex.indexByString("H33")).value =
            object.adhesion ?? '-';
        sheet.cell(CellIndex.indexByString("I33")).value =
            object.dielcont ?? '-';

        sheet.cell(CellIndex.indexByString("C48")).value =
            object.dolzhnpredskom.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("I48")).value =
            object.fiopredskom.toString() ?? '-';
        sheet.cell(CellIndex.indexByString("C51")).value =
            object.dolzhnproizvrab.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("I51")).value =
            object.fioproizvrab.toString() ?? '-';
        sheet.cell(CellIndex.indexByString("C53")).value =
            object.dolzhnpredstzakazch.toString() ??
                '-' + ', ' + filial.toString() ??
                '-';
        sheet.cell(CellIndex.indexByString("I53")).value =
            object.fiopredstzakazch ?? '-';

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

  void calcdewpoint() {
    double a = 17.27;
    double b = 237.7;
    double temperature = double.parse(tempairController.text);
    double relativeHumidity = 1.0;
    if (relathumidController.text != null) {
      double parsedValue = double.tryParse(relathumidController.text);
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

  void sredthick() {
    double t1 = thickofdrylayController1.text.isNotEmpty
        ? double.parse(thickofdrylayController1.text)
        : 0.0;
    double t2 = thickofdrylayController2.text.isNotEmpty
        ? double.parse(thickofdrylayController2.text)
        : 0.0;
    double t3 = thickofdrylayController3.text.isNotEmpty
        ? double.parse(thickofdrylayController3.text)
        : 0.0;
    double t4 = thickofdrylayController4.text.isNotEmpty
        ? double.parse(thickofdrylayController4.text)
        : 0.0;
    double t5 = thickofdrylayController5.text.isNotEmpty
        ? double.parse(thickofdrylayController5.text)
        : 0.0;

    double average = (t1 + t2 + t3 + t4 + t5) / 5;

    setState(() {
      thickofdrylayController.text = average.toStringAsFixed(0);
      object.thickofdrylay = thickofdrylayController.text;
    });
  }

  void calculateHighestDegreeD() {
    int chalking = 0;
    int changecolor = 0;
    int changegloss = 0;
    int mudretant = 0;
    int highestDegreeD = 0;

    if (chalkingController.text != null) {
      if (chalkingController.text ==
          '0-на ткани частицы пигмента отсутствуют (кол-во отпечатков: 0)') {
        chalking = 0;
      } else if (chalkingController.text ==
          '1-на ткани плохо различимые следы пигмента (кол-во отпечатков: 1)') {
        chalking = 1;
      } else if (chalkingController.text ==
          '2-на ткани хорошо различимые следы пигмента (кол-во отпечатков: 2)') {
        chalking = 2;
      } else if (chalkingController.text ==
          '3-на ткани хорошо видимые следы пигмента (кол-во отпечатков: 3-5)') {
        chalking = 3;
      } else if (chalkingController.text ==
          '4-частицы пигмента легко отделяются при трении (кол-во отпечатков: 6-8)') {
        chalking = 4;
      } else if (chalkingController.text ==
          '5-частицы пигмента легко отделяются при касании (кол-во отпечатков: >= 9)') {
        chalking = 5;
      } else if (chalkingController.text == 'нет данных') {
        chalking = -1;
      }
    }

    if (changecolorController.text != null) {
      if (changecolorController.text == '0-изменения отсутствуют') {
        changecolor = 0;
      } else if (changecolorController.text ==
          '1-очень слабые, т.е. едва различимые изменения цвета') {
        changecolor = 1;
      } else if (changecolorController.text ==
          '2-слабые, т.е. хорошо различимые изменения цвета') {
        changecolor = 2;
      } else if (changecolorController.text ==
          '3-умеренные, т.е. ясно видимые изменения цвета') {
        changecolor = 3;
      } else if (changecolorController.text ==
          '4-значительные, т.е. сильно выраженные изменения цвета') {
        changecolor = 4;
      } else if (changecolorController.text ==
          '5-очень заметные изменения, т.е. первоначальный цвет покрытия плохо различим') {
        changecolor = 5;
      } else if (changecolorController.text == 'нет данных') {
        changecolor = -1;
      }
    }

    if (changeglossController.text != null) {
      if (changeglossController.text == '0-изменения отсутствуют') {
        changegloss = 0;
      } else if (changeglossController.text ==
          '1-очень слабые, т.е. едва различимые изменения') {
        changegloss = 1;
      } else if (changeglossController.text ==
          '2-слабые, т.е. хорошо различимые изменения') {
        changegloss = 2;
      } else if (changeglossController.text ==
          '3-умеренные, т.е. ясно видимые изменения') {
        changegloss = 3;
      } else if (changeglossController.text ==
          '4-значительные, т.е. сильно выраженные изменения') {
        changegloss = 4;
      } else if (changeglossController.text == '5-очень заметные изменения') {
        changegloss = 5;
      } else if (changeglossController.text == 'нет данных') {
        changegloss = -1;
      }
    }

    if (mudretantController.text != null) {
      if (mudretantController.text == '0-изменения отсутствуют') {
        mudretant = 0;
      } else if (mudretantController.text ==
          '1-очень слабые, т.е. едва различимые отдельные механические частицы') {
        mudretant = 1;
      } else if (mudretantController.text ==
          '2-слабые, т.е. хорошо различимые механические частицы') {
        mudretant = 2;
      } else if (mudretantController.text ==
          '3-умеренные, т.е. налёт механических частиц, цвет покрытия различим') {
        mudretant = 3;
      } else if (mudretantController.text ==
          '4-значительные, т.е. налёт механических частиц, цвет покрытия плохо различим') {
        mudretant = 4;
      } else if (mudretantController.text ==
          '5-очень заметные изменения, т.е. налёт механических частиц, цвет покрытия не различим') {
        mudretant = 5;
      } else if (mudretantController.text == 'нет данных') {
        mudretant = -1;
      }
    }
    if (chalking != null && chalking > highestDegreeD) {
      highestDegreeD = chalking;
    }
    if (changecolor != null && changecolor > highestDegreeD) {
      highestDegreeD = changecolor;
    }
    if (changegloss != null && changegloss > highestDegreeD) {
      highestDegreeD = changegloss;
    }
    if (mudretant != null && mudretant > highestDegreeD) {
      highestDegreeD = mudretant;
    }

    setState(() {
      highestDegreeDController.text = highestDegreeD.toString();
      object.highestDegreeD = highestDegreeDController.text;
    });
  }

  void calculateHighestDegreeZ() {
    int rastresk = 0;
    int otslaivan = 0;
    int vyvetriv = 0;
    int puzyr = 0;
    int korroziya = 0;
    int highestDegreeZ = 0;
    if (rastreskController.text != null) {
      if (rastreskController.text ==
          '0-отсутствие трещин (невидимая при увелиении х10)') {
        rastresk = 0;
      } else if (rastreskController.text ==
          '1-очень мало трещин (видимая только при увеличении х10)') {
        rastresk = 1;
      } else if (rastreskController.text ==
          '2-мало трещин (едва видимая зрением с нормальной коррекцией)') {
        rastresk = 2;
      } else if (rastreskController.text ==
          '3-умеренное число трещин (ясно видимая зрением с нормальной коррекцией)') {
        rastresk = 3;
      } else if (rastreskController.text ==
          '4-значительное число трещин (большие трещины, обычно с шириной до 1мм)') {
        rastresk = 4;
      } else if (rastreskController.text ==
          '5-плотная структура трещин (очень большие трещины, обычно с шириной более 1мм)') {
        rastresk = 5;
      } else if (rastreskController.text == 'нет данных') {
        rastresk = -1;
      }
    }

    if (otslaivanController.text != null) {
      if (otslaivanController.text == '0') {
        otslaivan = 0;
      } else if (otslaivanController.text == '1 площадь,% 0<Cp<=0,1') {
        otslaivan = 1;
      } else if (otslaivanController.text == '2 площадь,% 0,1<Cp<=0,3') {
        otslaivan = 2;
      } else if (otslaivanController.text == '3 площадь,% 0,3<Cp<=1') {
        otslaivan = 3;
      } else if (otslaivanController.text == '4 площадь,% 1<Cp<=3') {
        otslaivan = 4;
      } else if (otslaivanController.text == '5 площадь,% 3<Cp<15') {
        otslaivan = 5;
      } else if (otslaivanController.text == 'нет данных') {
        otslaivan = -1;
      }
    }

    if (vyvetrivController.text != null) {
      if (vyvetrivController.text ==
          '0-отсутствие дефектов (невидимая при увеличении х10)') {
        vyvetriv = 0;
      } else if (vyvetrivController.text ==
          '1-очень мало дефектов (площадь,% 0<Cp<=3 видимая только при увеличении х10)') {
        vyvetriv = 1;
      } else if (vyvetrivController.text ==
          '2-мало дефектов (едва видимая зрением с нормальной коррекцией площадь,% 3<Cp<=10)') {
        vyvetriv = 2;
      } else if (vyvetrivController.text ==
          '3- умеренное число дефектов (ясно видимая зрением с нормальной коррекцией площадь,% 10<Cp<=25)') {
        vyvetriv = 3;
      } else if (vyvetrivController.text ==
          '4-значительное число дефектов (разрушение до грунтовочного слоя площадь,% 25<Cp<=50)') {
        vyvetriv = 4;
      } else if (vyvetrivController.text ==
          '5-плотная структура дефектов (разрушение до окрашиваемой поверхности. площадь,% 50<Cp)') {
        vyvetriv = 5;
      } else if (vyvetrivController.text == 'нет данных') {
        vyvetriv = -1;
      }
    }

    if (puzyrController.text != null) {
      if (puzyrController.text == '0-отсутствие пузырей') {
        puzyr = 0;
      } else if (puzyrController.text ==
          '1-пузыри(вздутия) с размером менее 0,05мм') {
        puzyr = 1;
      } else if (puzyrController.text ==
          '2-пузыри(вздутия) с размером 0,05-0,5мм') {
        puzyr = 2;
      } else if (puzyrController.text ==
          '3-пузыри(вздутия) с размером 0,5-1мм') {
        puzyr = 3;
      } else if (puzyrController.text == '4-пузыри(вздутия) с размером 1-8мм') {
        puzyr = 4;
      } else if (puzyrController.text ==
          '5-пузыри(вздутия) с размером более 8мм') {
        puzyr = 5;
      } else if (puzyrController.text == 'нет данных') {
        puzyr = -1;
      }
    }

    if (korroziyaController.text != null) {
      if (korroziyaController.text ==
          '0 отсутствие коррозии (невидимый очаг при увеличении х10)') {
        korroziya = 0;
      } else if (korroziyaController.text ==
          '1 видимый очаг только при увеличении х10 (площадь,% 0<Cp<=0,05)') {
        korroziya = 1;
      } else if (korroziyaController.text ==
          '2 едва видимый очаг зрением с нормальной коррекцией (площадь,% 0,05<Cp<=0,5)') {
        korroziya = 2;
      } else if (korroziyaController.text ==
          '3 очаг(Lp,мм)<=0,5 (площадь,% 0,5<Cp<=1)') {
        korroziya = 3;
      } else if (korroziyaController.text ==
          '4 0,5<Lp<=5 (площадь,% 1<Cp<=8)') {
        korroziya = 4;
      } else if (korroziyaController.text == '5 5<Lp (площадь,% 8<Cp)') {
        korroziya = 5;
      } else if (korroziyaController.text == 'нет данных') {
        korroziya = -1;
      }
    }

    highestDegreeZ = korroziya > highestDegreeZ ? korroziya : highestDegreeZ;
    highestDegreeZ = puzyr > highestDegreeZ ? puzyr : highestDegreeZ;
    highestDegreeZ = vyvetriv > highestDegreeZ ? vyvetriv : highestDegreeZ;
    highestDegreeZ = otslaivan > highestDegreeZ ? otslaivan : highestDegreeZ;
    highestDegreeZ = rastresk > highestDegreeZ ? rastresk : highestDegreeZ;

    setState(() {
      highestDegreeZController.text = highestDegreeZ.toString();
      object.highestDegreeZ = highestDegreeZController.text;
    });
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
                      child: const Text('Удалить',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        helper.deleteTodo(object.id);
                        Navigator.of(context).pop();
                        Navigator.pop(context, true);
                      })
                ]));
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
    calculateHighestDegreeD();
    calculateHighestDegreeZ();
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
    calculateHighestDegreeD();
    calculateHighestDegreeZ();
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

  void updateTitle() {
    setState(() {
      object.title = titleController.text;
    });
  }

  void updatesquareclear() {
    setState(() {
      object.squareclear = squareclearController.text;
    });
  }

  void updateconstroldcoat() {
    setState(() {
      object.constroldcoat = constroldcoatController.text;
    });
  }

  void updateInst() {
    setState(() {
      object.inst = instController.text;
    });
  }

  void updateISO8501() {
    setState(() {
      object.iso8501 = iso8501Controller.text;
    });
  }

  void updatePrepmethod() {
    setState(() {
      object.prepmethod = prepmethodController.text;
    });
  }

  void updatedegrofdegr() {
    setState(() {
      object.degrofdegr = degrofdegrController.text;
    });
  }

  void updatedegrofoxid() {
    setState(() {
      object.degrofoxid = degrofoxidController.text;
    });
  }

  void updatedegrofdedust1() {
    setState(() {
      object.degrofdedust1 = degrofdedust1Controller.text;
    });
  }

  void updatedegrofdedust2() {
    setState(() {
      object.degrofdedust2 = degrofdedust2Controller.text;
    });
  }

  void updateRoughness() {
    setState(() {
      object.roughness = roughnessController.text;
    });
  }

  void updatesurfsalts() {
    setState(() {
      object.surfsalts = surfsaltsController.text;
    });
  }

  void updatetempair() {
    setState(() {
      object.tempair = tempairController.text;
    });
  }

  void updatetempsurf() {
    setState(() {
      object.tempsurf = tempsurfController.text;
    });
  }

  void updaterelathumid() {
    setState(() {
      object.relathumid = relathumidController.text;
    });
  }

  void updatedewpoint() {
    setState(() {
      object.dewpoint = dewpointController.text;
    });
  }

  void updatedifftemp() {
    setState(() {
      object.difftemp = difftempController.text;
    });
  }

  // void updatetechcondmat() {
  //   setState(() {
  //     object.techcondmat = techcondmatController.text;
  //   });
  // }

  void updatenumdoflay() {
    setState(() {
      object.numdoflay = numdoflayController.text;
    });
  }

  void updatesquarenew() {
    setState(() {
      object.squarenew = squarenewController.text;
    });
  }

  void updatethickofwellay() {
    setState(() {
      object.thickofwellay = thickofwellayController.text;
    });
  }

  void updatethickofdrylay() {
    setState(() {
      object.thickofdrylay = thickofdrylayController.text;
    });
  }

  void updatecontin() {
    setState(() {
      object.contin = continController.text;
    });
  }

  void updatetimedry() {
    setState(() {
      object.timedry = timedryController.text;
    });
  }

  void updatedegrdry() {
    setState(() {
      object.degrdry = degrdryController.text;
    });
  }

  void updatedefdur() {
    setState(() {
      object.defdur = defdurController.text;
    });
  }

  void updateapperance() {
    setState(() {
      object.apperance = apperanceController.text;
    });
  }

  void updatebgcolor() {
    setState(() {
      object.bgcolor = bgcolorController.text;
    });
  }

  void updateadhesion() {
    setState(() {
      object.adhesion = adhesionController.text;
    });
  }

  void updatedielcont() {
    setState(() {
      object.dielcont = dielcontController.text;
    });
  }

  void updatethickinsulmeter() {
    setState(() {
      object.thickinsulmeter = thickinsulmeterController.text;
    });
  }

  void updateadhesmeter() {
    setState(() {
      object.adhesmeter = adhesmeterController.text;
    });
  }

  void updatecontinmeter() {
    setState(() {
      object.continmeter = continmeterController.text;
    });
  }

  void updatesetvik() {
    setState(() {
      object.setvik = setvikController.text;
    });
  }

  void updatechangecolor() {
    setState(() {
      object.changecolor = changecolorController.text;
    });
  }

  void updatechangegloss() {
    setState(() {
      object.changegloss = changeglossController.text;
    });
  }

  void updatemudretant() {
    setState(() {
      object.mudretant = mudretantController.text;
    });
  }

  void updatechalking() {
    setState(() {
      object.chalking = chalkingController.text;
    });
  }

  void updateDescription() {
    setState(() {
      object.description = descriptionController.text;
    });
  }

  void updatefilial() {
    setState(() {
      object.filial = filialController.text;
    });
  }

  void updatepredskom() {
    setState(() {
      object.dolzhnpredskom = predskomController.text;
    });
  }

  void updatefiopredskom() {
    setState(() {
      object.fiopredskom = fiopredskomController.text;
    });
  }
}

class ExampleScreen extends StatelessWidget {
  final String filePath;

  ExampleScreen({this.filePath});

  void openExcelFile() async {
    if (await canLaunch(filePath)) {
      await launch(filePath);
    } else {
      throw 'Не удалось открыть файл $filePath';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Предпросмотр файла'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: openExcelFile,
          child: const Text('Открыть файл'),
        ),
      ),
    );
  }
}
