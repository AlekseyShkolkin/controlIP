import 'dart:async';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qualcontr/dbhelper_ip.dart';
import 'package:qualcontr/dbhelper_lkp.dart';
import 'package:qualcontr/dbhelper_vh_contr.dart';
import './auth.dart';
import './start_page.dart';

class LoadProg extends StatefulWidget {
  @override
  State<LoadProg> createState() => _LoadProgState();
}

class _LoadProgState extends State<LoadProg> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }

  void navigationPage() async {
    DbHelperIp dbHelperIp = DbHelperIp();
    DbHelperLkp dbHelperLkp = DbHelperLkp();
    DbHelperVhk dbHelperVhk = DbHelperVhk();
    int countIp = await dbHelperIp.getTodoCountIp();
    int countLkp = await dbHelperLkp.getTodoCountLkp();
    int countVhk = await dbHelperVhk.getTodoCountVhk();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (_) => StartPage(
                countIp: countIp,
                countLkp: countLkp,
                countVhk: countVhk,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'ДОБРО ПОЖАЛОВАТЬ!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        // Image.asset(
        //   'assets/images/logo2.png',
        //   width: 100,
        //   height: 100,
        //   fit: BoxFit.fill,
        // ),
      ),
    );
  }
}
