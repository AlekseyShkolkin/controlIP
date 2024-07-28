import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  final String imageName;

  CameraPage(this.imageName);

  @override
  State<CameraPage> createState() => _CameraPageIpState();
}

class _CameraPageIpState extends State<CameraPage> {
  double opacity = 0.5;

  List<CameraDescription> cameras;
  CameraController controller;
  Future<void> _initializeControllerFuture;
  bool _isReady = false;

  File gradeA = File('assets/images/grade_A.jpg');
  File gradeB = File('assets/images/grade_B.jpg');
  File gradeC = File('assets/images/grade_C.jpg');
  File gradeD = File('assets/images/grade_D.jpg');

  File bSt2 = File('assets/images/B_St_2.jpg');
  File cSt2 = File('assets/images/C_St_2.jpg');
  File dSt2 = File('assets/images/D_St_2.jpg');

  File bSt3 = File('assets/images/B_St_3.jpg');
  File cSt3 = File('assets/images/C_St_3.jpg');
  File dSt3 = File('assets/images/D_St_3.jpg');

  File bSa1 = File('assets/images/B_Sa_1.jpg');
  File cSa1 = File('assets/images/C_Sa_1.jpg');
  File dSa1 = File('assets/images/D_Sa_1.jpg');

  File bSa2 = File('assets/images/B_Sa_2.jpg');
  File cSa2 = File('assets/images/C_Sa_2.jpg');
  File dSa2 = File('assets/images/D_Sa_2.jpg');

  File aSa25 = File('assets/images/A_Sa_25.jpg');
  File bSa25 = File('assets/images/B_Sa_25.jpg');
  File cSa25 = File('assets/images/C_Sa_25.jpg');
  File dSa25 = File('assets/images/D_Sa_25.jpg');

  File aSa3 = File('assets/images/A_Sa_3.jpg');
  File bSa3 = File('assets/images/B_Sa_3.jpg');
  File cSa3 = File('assets/images/C_Sa_3.jpg');
  File dSa3 = File('ssets/images/D_Sa_3.jpg');

  File aFl = File('assets/images/A_Fl.jpg');
  File bFl = File('assets/images/B_Fl.jpg');
  File cFl = File('assets/images/C_Fl.jpg');
  File dFl = File('assets/images/D_Fl.jpg');

  File dust1 = File('assets/images/dust1.jpg');
  File dust2 = File('assets/images/dust2.jpg');
  File dust3 = File('assets/images/dust3.jpg');
  File dust4 = File('assets/images/dust4.jpg');
  File dust5 = File('assets/images/dust5.jpg');

  File p1Ma1 = File('assets/images/p1Ma1.jpg');
  File p1Ma2 = File('assets/images/p1Ma2.jpg');
  File p2Ma1 = File('assets/images/p2Ma1.jpg');
  File p2Ma2 = File('assets/images/p2Ma2.jpg');
  File p3Ma1 = File('assets/images/p3Ma1.jpg');
  File p3Ma2 = File('assets/images/p3Ma2.jpg');
  File p1Sa251 = File('assets/images/p1Sa251.jpg');
  File p1Sa252 = File('assets/images/p1Sa252.jpg');
  File p2Sa251 = File('assets/images/p2Sa251.jpg');
  File p2Sa252 = File('assets/images/p2Sa252.jpg');
  File p3Sa251 = File('assets/images/p3Sa251.jpg');
  File p3Sa252 = File('assets/images/p3Sa252.jpg');
  File p4Sa251 = File('assets/images/p4Sa251.jpg');
  File p4Sa252 = File('assets/images/p4Sa252.jpg');

  File grit1 = File('assets/images/grit1.jpg');
  File grit2 = File('assets/images/grit2.jpg');
  File grit3 = File('assets/images/grit3.jpg');
  File grit4 = File('assets/images/grit4.jpg');
  File shot1 = File('assets/images/shot1.jpg');
  File shot2 = File('assets/images/shot2.jpg');
  File shot3 = File('assets/images/shot3.jpg');
  File shot4 = File('assets/images/shot4.jpg');

  File x_0 = File('assets/images/x_0.jpg');
  File x_1 = File('assets/images/x_1.jpg');
  File x_2 = File('assets/images/x_2.jpg');
  File x_3 = File('assets/images/x_3.jpg');
  File x_4 = File('assets/images/x_4.jpg');
  File x_5 = File('assets/images/x_5.jpg');
  File r_0 = File('assets/images/r_0.jpg');
  File r_1 = File('assets/images/r_1.jpg');
  File r_2 = File('assets/images/r_2.jpg');
  File r_3 = File('assets/images/r_3.jpg');
  File r_4 = File('assets/images/r_4.jpg');

  File imagenull = File('assets/images/imagenull.jpg');
  File roughness = File('assets/images/roughness.jpg');

  File ral1000 = File('assets/images/1000.jpg');
  File ral1001 = File('assets/images/1001.jpg');
  File ral1002 = File('assets/images/1002.jpg');
  File ral1003 = File('assets/images/1003.jpg');
  File ral1004 = File('assets/images/1004.jpg');
  File ral1005 = File('assets/images/1005.jpg');
  File ral1006 = File('assets/images/1006.jpg');
  File ral1007 = File('assets/images/1007.jpg');
  File ral1011 = File('assets/images/1011.jpg');
  File ral1012 = File('assets/images/1012.jpg');
  File ral1013 = File('assets/images/1013.jpg');
  File ral1014 = File('assets/images/1014.jpg');
  File ral1015 = File('assets/images/1015.jpg');
  File ral1016 = File('assets/images/1016.jpg');
  File ral1017 = File('assets/images/1017.jpg');
  File ral1018 = File('assets/images/1018.jpg');
  File ral1019 = File('assets/images/1019.jpg');
  File ral1020 = File('assets/images/1020.jpg');
  File ral1021 = File('assets/images/1021.jpg');
  File ral1023 = File('assets/images/1023.jpg');
  File ral1024 = File('assets/images/1024.jpg');
  File ral1026 = File('assets/images/1026.jpg');
  File ral1027 = File('assets/images/1027.jpg');
  File ral1028 = File('assets/images/1028.jpg');
  File ral1032 = File('assets/images/1032.jpg');
  File ral1033 = File('assets/images/1033.jpg');
  File ral1034 = File('assets/images/1034.jpg');
  File ral1035 = File('assets/images/1035.jpg');
  File ral1036 = File('assets/images/1036.jpg');
  File ral1037 = File('assets/images/1037.jpg');
  File ral2000 = File('assets/images/2000.jpg');
  File ral2001 = File('assets/images/2001.jpg');
  File ral2002 = File('assets/images/2002.jpg');
  File ral2003 = File('assets/images/2003.jpg');
  File ral2004 = File('assets/images/2004.jpg');
  File ral2005 = File('assets/images/2005.jpg');
  File ral2007 = File('assets/images/2007.jpg');
  File ral2008 = File('assets/images/2008.jpg');
  File ral2009 = File('assets/images/2009.jpg');
  File ral2010 = File('assets/images/2010.jpg');
  File ral2011 = File('assets/images/2011.jpg');
  File ral2012 = File('assets/images/2012.jpg');
  File ral2013 = File('assets/images/2013.jpg');
  File ral2017 = File('assets/images/2017.jpg');
  File ral3000 = File('assets/images/3000.jpg');
  File ral3001 = File('assets/images/3001.jpg');
  File ral3002 = File('assets/images/3002.jpg');
  File ral3003 = File('assets/images/3003.jpg');
  File ral3004 = File('assets/images/3004.jpg');
  File ral3005 = File('assets/images/3005.jpg');
  File ral3007 = File('assets/images/3007.jpg');
  File ral3009 = File('assets/images/3009.jpg');
  File ral3011 = File('assets/images/3011.jpg');
  File ral3012 = File('assets/images/3012.jpg');
  File ral3013 = File('assets/images/3013.jpg');
  File ral3014 = File('assets/images/3014.jpg');
  File ral3015 = File('assets/images/3015.jpg');
  File ral3016 = File('assets/images/3016.jpg');
  File ral3017 = File('assets/images/3017.jpg');
  File ral3018 = File('assets/images/3018.jpg');
  File ral3020 = File('assets/images/3020.jpg');
  File ral3022 = File('assets/images/3022.jpg');
  File ral3024 = File('assets/images/3024.jpg');
  File ral3026 = File('assets/images/3026.jpg');
  File ral3027 = File('assets/images/3027.jpg');
  File ral3028 = File('assets/images/3028.jpg');
  File ral3031 = File('assets/images/3031.jpg');
  File ral3032 = File('assets/images/3032.jpg');
  File ral3033 = File('assets/images/3033.jpg');
  File ral4001 = File('assets/images/4001.jpg');
  File ral4002 = File('assets/images/4002.jpg');
  File ral4003 = File('assets/images/4003.jpg');
  File ral4004 = File('assets/images/4004.jpg');
  File ral4005 = File('assets/images/4005.jpg');
  File ral4006 = File('assets/images/4006.jpg');
  File ral4007 = File('assets/images/4007.jpg');
  File ral4008 = File('assets/images/4008.jpg');
  File ral4009 = File('assets/images/4009.jpg');
  File ral4010 = File('assets/images/4010.jpg');
  File ral4011 = File('assets/images/4011.jpg');
  File ral4012 = File('assets/images/4012.jpg');
  File ral5000 = File('assets/images/5000.jpg');
  File ral5001 = File('assets/images/5001.jpg');
  File ral5002 = File('assets/images/5002.jpg');
  File ral5003 = File('assets/images/5003.jpg');
  File ral5004 = File('assets/images/5004.jpg');
  File ral5005 = File('assets/images/5005.jpg');
  File ral5007 = File('assets/images/5007.jpg');
  File ral5008 = File('assets/images/5008.jpg');
  File ral5009 = File('assets/images/5009.jpg');
  File ral5010 = File('assets/images/5010.jpg');
  File ral5011 = File('assets/images/5011.jpg');
  File ral5012 = File('assets/images/5012.jpg');
  File ral5013 = File('assets/images/5013.jpg');
  File ral5014 = File('assets/images/5014.jpg');
  File ral5015 = File('assets/images/5015.jpg');
  File ral5017 = File('assets/images/5017.jpg');
  File ral5018 = File('assets/images/5018.jpg');
  File ral5019 = File('assets/images/5019.jpg');
  File ral5020 = File('assets/images/5020.jpg');
  File ral5021 = File('assets/images/5021.jpg');
  File ral5022 = File('assets/images/5022.jpg');
  File ral5023 = File('assets/images/5023.jpg');
  File ral5024 = File('assets/images/5024.jpg');
  File ral5025 = File('assets/images/5025.jpg');
  File ral5026 = File('assets/images/5026.jpg');
  File ral6000 = File('assets/images/6000.jpg');
  File ral6001 = File('assets/images/6001.jpg');
  File ral6002 = File('assets/images/6002.jpg');
  File ral6003 = File('assets/images/6003.jpg');
  File ral6004 = File('assets/images/6004.jpg');
  File ral6005 = File('assets/images/6005.jpg');
  File ral6006 = File('assets/images/6006.jpg');
  File ral6007 = File('assets/images/6007.jpg');
  File ral6008 = File('assets/images/6008.jpg');
  File ral6009 = File('assets/images/6009.jpg');
  File ral6010 = File('assets/images/6010.jpg');
  File ral6011 = File('assets/images/6011.jpg');
  File ral6012 = File('assets/images/6012.jpg');
  File ral6013 = File('assets/images/6013.jpg');
  File ral6014 = File('assets/images/6014.jpg');
  File ral6015 = File('assets/images/6015.jpg');
  File ral6016 = File('assets/images/6016.jpg');
  File ral6017 = File('assets/images/6017.jpg');
  File ral6018 = File('assets/images/6018.jpg');
  File ral6019 = File('assets/images/6019.jpg');
  File ral6020 = File('assets/images/6020.jpg');
  File ral6021 = File('assets/images/6021.jpg');
  File ral6022 = File('assets/images/6022.jpg');
  File ral6024 = File('assets/images/6024.jpg');
  File ral6025 = File('assets/images/6025.jpg');
  File ral6026 = File('assets/images/6026.jpg');
  File ral6027 = File('assets/images/6027.jpg');
  File ral6028 = File('assets/images/6028.jpg');
  File ral6029 = File('assets/images/6029.jpg');
  File ral6032 = File('assets/images/6032.jpg');
  File ral6033 = File('assets/images/6033.jpg');
  File ral6034 = File('assets/images/6034.jpg');
  File ral6035 = File('assets/images/6035.jpg');
  File ral6036 = File('assets/images/6036.jpg');
  File ral6037 = File('assets/images/6037.jpg');
  File ral6038 = File('assets/images/6038.jpg');
  File ral6039 = File('assets/images/6039.jpg');
  File ral7000 = File('assets/images/7000.jpg');
  File ral7001 = File('assets/images/7001.jpg');
  File ral7002 = File('assets/images/7002.jpg');
  File ral7003 = File('assets/images/7003.jpg');
  File ral7004 = File('assets/images/7004.jpg');
  File ral7005 = File('assets/images/7005.jpg');
  File ral7006 = File('assets/images/7006.jpg');
  File ral7008 = File('assets/images/7008.jpg');
  File ral7009 = File('assets/images/7009.jpg');
  File ral7010 = File('assets/images/7010.jpg');
  File ral7011 = File('assets/images/7011.jpg');
  File ral7012 = File('assets/images/7012.jpg');
  File ral7013 = File('assets/images/7013.jpg');
  File ral7015 = File('assets/images/7015.jpg');
  File ral7016 = File('assets/images/7016.jpg');
  File ral7021 = File('assets/images/7021.jpg');
  File ral7022 = File('assets/images/7022.jpg');
  File ral7023 = File('assets/images/7023.jpg');
  File ral7024 = File('assets/images/7024.jpg');
  File ral7026 = File('assets/images/7026.jpg');
  File ral7030 = File('assets/images/7030.jpg');
  File ral7031 = File('assets/images/7031.jpg');
  File ral7032 = File('assets/images/7032.jpg');
  File ral7033 = File('assets/images/7033.jpg');
  File ral7034 = File('assets/images/7034.jpg');
  File ral7035 = File('assets/images/7035.jpg');
  File ral7036 = File('assets/images/7036.jpg');
  File ral7037 = File('assets/images/7037.jpg');
  File ral7038 = File('assets/images/7038.jpg');
  File ral7039 = File('assets/images/7039.jpg');
  File ral7040 = File('assets/images/7040.jpg');
  File ral7042 = File('assets/images/7042.jpg');
  File ral7043 = File('assets/images/7043.jpg');
  File ral7044 = File('assets/images/7044.jpg');
  File ral7045 = File('assets/images/7045.jpg');
  File ral7046 = File('assets/images/7046.jpg');
  File ral7047 = File('assets/images/7047.jpg');
  File ral7048 = File('assets/images/7048.jpg');
  File ral8000 = File('assets/images/8000.jpg');
  File ral8001 = File('assets/images/8001.jpg');
  File ral8002 = File('assets/images/8002.jpg');
  File ral8003 = File('assets/images/8003.jpg');
  File ral8004 = File('assets/images/8004.jpg');
  File ral8007 = File('assets/images/8007.jpg');
  File ral8008 = File('assets/images/8008.jpg');
  File ral8011 = File('assets/images/8011.jpg');
  File ral8012 = File('assets/images/8012.jpg');
  File ral8014 = File('assets/images/8014.jpg');
  File ral8015 = File('assets/images/8015.jpg');
  File ral8016 = File('assets/images/8016.jpg');
  File ral8017 = File('assets/images/8017.jpg');
  File ral8019 = File('assets/images/8019.jpg');
  File ral8022 = File('assets/images/8022.jpg');
  File ral8023 = File('assets/images/8023.jpg');
  File ral8024 = File('assets/images/8024.jpg');
  File ral8025 = File('assets/images/8025.jpg');
  File ral8028 = File('assets/images/8028.jpg');
  File ral8029 = File('assets/images/8029.jpg');
  File ral9001 = File('assets/images/9001.jpg');
  File ral9002 = File('assets/images/9002.jpg');
  File ral9003 = File('assets/images/9003.jpg');
  File ral9004 = File('assets/images/9004.jpg');
  File ral9005 = File('assets/images/9005.jpg');
  File ral9006 = File('assets/images/9006.jpg');
  File ral9007 = File('assets/images/9007.jpg');
  File ral9010 = File('assets/images/9010.jpg');
  File ral9011 = File('assets/images/9011.jpg');
  File ral9012 = File('assets/images/9012.jpg');
  File ral9016 = File('assets/images/9016.jpg');
  File ral9017 = File('assets/images/9017.jpg');
  File ral9018 = File('assets/images/9018.jpg');
  File ral9022 = File('assets/images/9022.jpg');
  File ral9023 = File('assets/images/9023.jpg');

  List<File> images = [];

  @override
  void initState() {
    super.initState();
    getCameras().then((_) {
      initializeCamera();
    });
  }

  Future<void> getCameras() async {
    cameras = await availableCameras();
  }

  Future<void> initializeCamera() async {
    controller = CameraController(cameras[0], ResolutionPreset.high);
    _initializeControllerFuture = controller.initialize();
    await _initializeControllerFuture;
    setState(() {
      _isReady = true;
    });
  }

  void _takePicture() async {
    if (!_isReady) {
      return;
    }
    try {
      final image = await controller.takePicture();
      setState(() {
        _storedImage = File(image.path);
      });
      Navigator.pop(context, _storedImage);
    } catch (e) {
      print(e);
    }
  }

  File _storedImage;

  @override
  Widget build(BuildContext context) {
    File image;
    switch (widget.imageName) {
      case 'x_0':
        image = x_0;
        break;
      case 'x_1':
        image = x_1;
        break;
      case 'x_2':
        image = x_2;
        break;
      case 'x_3':
        image = x_3;
        break;
      case 'x_40':
        image = x_4;
        break;
      case 'x_5':
        image = x_5;
        break;
      case 'r_0':
        image = r_0;
        break;
      case 'r_1':
        image = r_1;
        break;
      case 'r_2':
        image = r_2;
        break;
      case 'r_3':
        image = r_3;
        break;
      case 'r_4':
        image = r_4;
        break;
      case 'grit1':
        image = grit1;
        break;
      case 'grit2':
        image = grit2;
        break;
      case 'grit3':
        image = grit3;
        break;
      case 'grit4':
        image = grit4;
        break;
      case 'shot1':
        image = shot1;
        break;
      case 'shot2':
        image = shot2;
        break;
      case 'shot3':
        image = shot3;
        break;
      case 'shot4':
        image = shot4;
        break;
      case 'p1Ma1':
        image = p1Ma1;
        break;
      case 'p1Ma2':
        image = p1Ma2;
        break;
      case 'p2Ma1':
        image = p2Ma1;
        break;
      case 'p2Ma2':
        image = p2Ma2;
        break;
      case 'p3Ma1':
        image = p3Ma1;
        break;
      case 'p3Ma2':
        image = p3Ma2;
        break;
      case 'p1Sa251':
        image = p1Sa251;
        break;
      case 'p1Sa252':
        image = p1Sa252;
        break;
      case 'p2Sa251':
        image = p2Sa251;
        break;
      case 'p2Sa252':
        image = p2Sa252;
        break;
      case 'p3Sa251':
        image = p3Sa251;
        break;
      case 'p3Sa252':
        image = p3Sa252;
        break;
      case 'p4Sa251':
        image = p4Sa251;
        break;
      case 'p4Sa252':
        image = p4Sa252;
        break;
      case 'grade_A':
        image = gradeA;
        break;
      case 'grade_B':
        image = gradeB;
        break;
      case 'grade_C':
        image = gradeC;
        break;
      case 'grade_D':
        image = gradeD;
        break;

      case 'B_St_2':
        image = bSt2;
        break;
      case 'C_St_2':
        image = cSt2;
        break;
      case 'D_St_2':
        image = dSt2;
        break;

      case 'B_St_3':
        image = bSt3;
        break;
      case 'C_St_3':
        image = cSt3;
        break;
      case 'D_St_3':
        image = dSt3;
        break;

      case 'B_Sa_1':
        image = bSa1;
        break;
      case 'C_Sa_1':
        image = cSa1;
        break;
      case 'D_Sa_1':
        image = dSa1;
        break;

      case 'B_Sa_2':
        image = bSa2;
        break;
      case 'C_Sa_2':
        image = cSa2;
        break;
      case 'D_Sa_2':
        image = dSa2;
        break;

      case 'A_Sa_25':
        image = aSa25;
        break;
      case 'B_Sa_25':
        image = bSa25;
        break;
      case 'C_Sa_25':
        image = cSa25;
        break;
      case 'D_Sa_25':
        image = dSa25;
        break;

      case 'A_Sa_3':
        image = aSa3;
        break;
      case 'B_Sa_3':
        image = bSa3;
        break;
      case 'C_Sa_3':
        image = cSa3;
        break;
      case 'D_Sa_3':
        image = dSa3;
        break;

      case 'A_Fl':
        image = aFl;
        break;
      case 'B_Fl':
        image = bFl;
        break;
      case 'C_Fl':
        image = cFl;
        break;
      case 'D_Fl':
        image = dFl;
        break;

      case 'dust1':
        image = dust1;
        break;
      case 'dust2':
        image = dust2;
        break;
      case 'dust3':
        image = dust3;
        break;
      case 'dust4':
        image = dust4;
        break;
      case 'dust5':
        image = dust5;
        break;

      case 'imagenull':
        image = imagenull;
        break;

      case 'roughness':
        image = roughness;
        break;

      case '5000':
        image = ral5000;
        break;
      case '5001':
        image = ral5001;
        break;
      case '5002':
        image = ral5002;
        break;
      case '5003':
        image = ral5003;
        break;
      case '5004':
        image = ral5004;
        break;
      case '5005':
        image = ral5005;
        break;
      case '5007':
        image = ral5007;
        break;
      case '5008':
        image = ral5008;
        break;
      case '5009':
        image = ral5009;
        break;
      case '5010':
        image = ral5010;
        break;
      case '5011':
        image = ral5011;
        break;
      case '5012':
        image = ral5012;
        break;
      case '5013':
        image = ral5013;
        break;
      case '5014':
        image = ral5014;
        break;
      case '5015':
        image = ral5015;
        break;
      case '5017':
        image = ral5017;
        break;
      case '5018':
        image = ral5018;
        break;
      case '5019':
        image = ral5019;
        break;
      case '5020':
        image = ral5020;
        break;
      case '5021':
        image = ral5021;
        break;
      case '5022':
        image = ral5022;
        break;
      case '5023':
        image = ral5023;
        break;
      case '5024':
        image = ral5024;
        break;
      case '5025':
        image = ral5025;
        break;
      case '5026':
        image = ral5026;
        break;
      case '8000':
        image = ral8000;
        break;
      case '8001':
        image = ral8001;
        break;
      case '8002':
        image = ral8002;
        break;
      case '8003':
        image = ral8003;
        break;
      case '8004':
        image = ral8004;
        break;
      case '8007':
        image = ral8007;
        break;
      case '8008':
        image = ral8008;
        break;
      case '8011':
        image = ral8011;
        break;
      case '8012':
        image = ral8012;
        break;
      case '8014':
        image = ral8014;
        break;
      case '8015':
        image = ral8015;
        break;
      case '8016':
        image = ral8016;
        break;
      case '8017':
        image = ral8017;
        break;
      case '8019':
        image = ral8019;
        break;
      case '8022':
        image = ral8022;
        break;
      case '8023':
        image = ral8023;
        break;
      case '8024':
        image = ral8024;
        break;
      case '8025':
        image = ral8025;
        break;
      case '8028':
        image = ral8028;
        break;
      case '8029':
        image = ral8029;
        break;
      case '6000':
        image = ral6000;
        break;
      case '6001':
        image = ral6001;
        break;
      case '6002':
        image = ral6002;
        break;
      case '6003':
        image = ral6003;
        break;
      case '6004':
        image = ral6004;
        break;
      case '6005':
        image = ral6005;
        break;
      case '6006':
        image = ral6006;
        break;
      case '6007':
        image = ral6007;
        break;
      case '6008':
        image = ral6008;
        break;
      case '6009':
        image = ral6009;
        break;
      case '6010':
        image = ral6010;
        break;
      case '6011':
        image = ral6011;
        break;
      case '6012':
        image = ral6012;
        break;
      case '6013':
        image = ral6013;
        break;
      case '6014':
        image = ral6014;
        break;
      case '6015':
        image = ral6015;
        break;
      case '6016':
        image = ral6016;
        break;
      case '6017':
        image = ral6017;
        break;
      case '6018':
        image = ral6018;
        break;
      case '6019':
        image = ral6019;
        break;
      case '6020':
        image = ral6020;
        break;
      case '6021':
        image = ral6021;
        break;
      case '6022':
        image = ral6022;
        break;
      case '6024':
        image = ral6024;
        break;
      case '6025':
        image = ral6025;
        break;
      case '6026':
        image = ral6026;
        break;
      case '6027':
        image = ral6027;
        break;
      case '6028':
        image = ral6028;
        break;
      case '6029':
        image = ral6029;
        break;
      case '6032':
        image = ral6032;
        break;
      case '6033':
        image = ral6033;
        break;
      case '6034':
        image = ral6034;
        break;
      case '6035':
        image = ral6035;
        break;
      case '6036':
        image = ral6036;
        break;
      case '6037':
        image = ral6037;
        break;
      case '6038':
        image = ral6038;
        break;
      case '6039':
        image = ral6039;
        break;
      case '7000':
        image = ral7000;
        break;
      case '7001':
        image = ral7001;
        break;
      case '7002':
        image = ral7002;
        break;
      case '7003':
        image = ral7003;
        break;
      case '7004':
        image = ral7004;
        break;
      case '7005':
        image = ral7005;
        break;
      case '7006':
        image = ral7006;
        break;
      case '7008':
        image = ral7008;
        break;
      case '7009':
        image = ral7009;
        break;
      case '7010':
        image = ral7010;
        break;
      case '7011':
        image = ral7011;
        break;
      case '7012':
        image = ral7012;
        break;
      case '7013':
        image = ral7013;
        break;
      case '7015':
        image = ral7015;
        break;
      case '7016':
        image = ral7016;
        break;
      case '7021':
        image = ral7021;
        break;
      case '7022':
        image = ral7022;
        break;
      case '7023':
        image = ral7023;
        break;
      case '7024':
        image = ral7024;
        break;
      case '7026':
        image = ral7026;
        break;
      case '7030':
        image = ral7030;
        break;
      case '7031':
        image = ral7031;
        break;
      case '7032':
        image = ral7032;
        break;
      case '7033':
        image = ral7033;
        break;
      case '7034':
        image = ral7034;
        break;
      case '7035':
        image = ral7035;
        break;
      case '7036':
        image = ral7036;
        break;
      case '7037':
        image = ral7037;
        break;
      case '7038':
        image = ral7038;
        break;
      case '7039':
        image = ral7039;
        break;
      case '7040':
        image = ral7040;
        break;
      case '7042':
        image = ral7042;
        break;
      case '7043':
        image = ral7043;
        break;
      case '7044':
        image = ral7044;
        break;
      case '7045':
        image = ral7045;
        break;
      case '7046':
        image = ral7046;
        break;
      case '7047':
        image = ral7047;
        break;
      case '7048':
        image = ral7048;
        break;
      case '2000':
        image = ral2000;
        break;
      case '2001':
        image = ral2001;
        break;
      case '2002':
        image = ral2002;
        break;
      case '2003':
        image = ral2003;
        break;
      case '2004':
        image = ral2004;
        break;
      case '2005':
        image = ral2005;
        break;
      case '2007':
        image = ral2007;
        break;
      case '2008':
        image = ral2008;
        break;
      case '2009':
        image = ral2009;
        break;
      case '2010':
        image = ral2010;
        break;
      case '2011':
        image = ral2011;
        break;
      case '2012':
        image = ral2012;
        break;
      case '2013':
        image = ral2013;
        break;
      case '2017':
        image = ral2017;
        break;
      case '4001':
        image = ral4001;
        break;
      case '4002':
        image = ral4002;
        break;
      case '4003':
        image = ral4003;
        break;
      case '4004':
        image = ral4004;
        break;
      case '4005':
        image = ral4005;
        break;
      case '4006':
        image = ral4006;
        break;
      case '4007':
        image = ral4007;
        break;
      case '4008':
        image = ral4008;
        break;
      case '4009':
        image = ral4009;
        break;
      case '4010':
        image = ral4010;
        break;
      case '4011':
        image = ral4011;
        break;
      case '4012':
        image = ral4012;
        break;
      case '3000':
        image = ral3000;
        break;
      case '3001':
        image = ral3001;
        break;
      case '3002':
        image = ral3002;
        break;
      case '3003':
        image = ral3003;
        break;
      case '3004':
        image = ral3004;
        break;
      case '3005':
        image = ral3005;
        break;
      case '3007':
        image = ral3007;
        break;
      case '3009':
        image = ral3009;
        break;
      case '3011':
        image = ral3011;
        break;
      case '3012':
        image = ral3012;
        break;
      case '3013':
        image = ral3013;
        break;
      case '3014':
        image = ral3014;
        break;
      case '3015':
        image = ral3015;
        break;
      case '3016':
        image = ral3016;
        break;
      case '3017':
        image = ral3017;
        break;
      case '3018':
        image = ral3018;
        break;
      case '3020':
        image = ral3020;
        break;
      case '3022':
        image = ral3022;
        break;
      case '3024':
        image = ral3024;
        break;
      case '3026':
        image = ral3026;
        break;
      case '3027':
        image = ral3027;
        break;
      case '3028':
        image = ral3028;
        break;
      case '3031':
        image = ral3031;
        break;
      case '3032':
        image = ral3032;
        break;
      case '3033':
        image = ral3033;
        break;
      case '9001':
        image = ral9001;
        break;
      case '9002':
        image = ral9002;
        break;
      case '9003':
        image = ral9003;
        break;
      case '9004':
        image = ral9004;
        break;
      case '9005':
        image = ral9005;
        break;
      case '9006':
        image = ral9006;
        break;
      case '9007':
        image = ral9007;
        break;
      case '9010':
        image = ral9010;
        break;
      case '9011':
        image = ral9011;
        break;
      case '9012':
        image = ral9012;
        break;
      case '9016':
        image = ral9016;
        break;
      case '9017':
        image = ral9017;
        break;
      case '9018':
        image = ral9018;
        break;
      case '9022':
        image = ral9022;
        break;
      case '9023':
        image = ral9023;
        break;
      case '1000':
        image = ral1000;
        break;
      case '1001':
        image = ral1001;
        break;
      case '1002':
        image = ral1002;
        break;
      case '1003':
        image = ral1003;
        break;
      case '1004':
        image = ral1004;
        break;
      case '1005':
        image = ral1005;
        break;
      case '1006':
        image = ral1006;
        break;
      case '1007':
        image = ral1007;
        break;
      case '1011':
        image = ral1011;
        break;
      case '1012':
        image = ral1012;
        break;
      case '1013':
        image = ral1013;
        break;
      case '1014':
        image = ral1014;
        break;
      case '1015':
        image = ral1015;
        break;
      case '1016':
        image = ral1016;
        break;
      case '1017':
        image = ral1017;
        break;
      case '1018':
        image = ral1018;
        break;
      case '1019':
        image = ral1019;
        break;
      case '1020':
        image = ral1020;
        break;
      case '1021':
        image = ral1021;
        break;
      case '1023':
        image = ral1023;
        break;
      case '1024':
        image = ral1024;
        break;
      case '1026':
        image = ral1026;
        break;
      case '1027':
        image = ral1027;
        break;
      case '1028':
        image = ral1028;
        break;
      case '1032':
        image = ral1032;
        break;
      case '1033':
        image = ral1033;
        break;
      case '1034':
        image = ral1034;
        break;
      case '1035':
        image = ral1035;
        break;
      case '1036':
        image = ral1036;
        break;
      case '1037':
        image = ral1037;
        break;

      default:
        image = imagenull;
      // Действие при неизвестном значении imageName
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Сравнение образца'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: _isReady
                ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: CameraPreview(controller),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              opacity: opacity,
              duration: Duration(milliseconds: 200),
              child: Container(
                height: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/${widget.imageName}.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.bottomCenter,
                      child: FloatingActionButton(
                        onPressed: _takePicture,
                        child: Icon(
                          Icons.camera_alt,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 0.5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Slider(
                          value: opacity,
                          min: 0.2,
                          max: 1.0,
                          onChanged: (double value) {
                            if (value >= 0 && value <= 100) {
                              setState(() {
                                opacity = value;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
