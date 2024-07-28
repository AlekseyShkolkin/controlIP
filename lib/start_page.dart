import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './dbhelper_vh_contr.dart';
import './object_list_vhc.dart';
import './teor.dart';
import './object_list_ip.dart';
import './objects_list_lkp.dart';
import './dbhelper_ip.dart';
import './dbhelper_lkp.dart';

class StartPage extends StatefulWidget {
  final int countIp;
  final int countLkp;
  final int countVhk;

  StartPage({
    this.countIp,
    this.countLkp,
    this.countVhk,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int countIp;
  int countLkp;
  int countVhk;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      countIp = widget.countIp;
      countLkp = widget.countLkp;
      countVhk = widget.countVhk;
      DbHelperLkp dbHelperLkp = DbHelperLkp();
      DbHelperIp dbHelperIp = DbHelperIp();
      DbHelperVhk dbHelperVhk = DbHelperVhk();
      dbHelperIp.getTodoCountIp();
      dbHelperLkp.getTodoCountLkp();
      dbHelperVhk.getTodoCountVhk();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
            child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.topLeft,
          child: Text(
            'КОНТРОЛЬ ПОКРЫТИЙ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            ),
          ),
        )),
      ),
      body: start_page_list(context),
    );
  }

  ListView start_page_list(context) {
    print('Количество записей: ${widget.countIp}');
    print('Количество записейвх: ${widget.countVhk}');
    return ListView(
      children: [
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListIp(),
              ),
            );
          },
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
            child: Text(
              'КОНТРОЛЬ ИП',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          trailing: Badge(
            badgeColor: (widget.countIp == null || widget.countIp == 0)
                ? Colors.transparent
                : Colors.green,
            badgeContent: widget.countIp == null || widget.countIp == 0
                ? Text('')
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.countIp.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
            child: Icon(
              Icons.all_out_rounded,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectList(),
              ),
            );
          },
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
            child: Text(
              'КОНТРОЛЬ ЛКП',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          trailing: Badge(
            badgeColor: (widget.countLkp == null || widget.countLkp == 0)
                ? Colors.transparent
                : Colors.green,
            badgeContent: widget.countLkp == null || widget.countLkp == 0
                ? Text('')
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.countLkp.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
            child: Icon(
              Icons.imagesearch_roller_rounded,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListVhC(),
              ),
            );
          },
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
            child: Text(
              'ВХОДНОЙ КОНТРОЛЬ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          trailing: Badge(
            badgeColor: (widget.countVhk == null || widget.countVhk == 0)
                ? Colors.transparent
                : Colors.green,
            badgeContent: widget.countVhk == null || widget.countVhk == 0
                ? Text('')
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.countVhk.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
            child: Icon(
              Icons.playlist_add_check,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Teor(),
              ),
            );
          },
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
            child: Text(
              'ТЕОРИЯ',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          trailing: Icon(
            Icons.menu_book_outlined,
            size: 52,
            color: Theme.of(context).accentColor,
          ),
        ),
        Divider(),
      ],
    );
  }
}
