import 'package:flutter/material.dart';

import 'teor/ob_pol.dart';

class Teor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'ТЕОРИЯ',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: ListView(
        children: [
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObshiePolozhenie(),
                ),
              );
            },
            title: Text(
              'Общие положения',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: Icon(
              Icons.menu_book_outlined,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    // builder: (context) => ObjectListIp(),
                    ),
              );
            },
            title: Text(
              'Нанесение изоляционных покрытий',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: Icon(
              Icons.menu_book_outlined,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    // builder: (context) => ObjectList(),
                    ),
              );
            },
            title: Text(
              'Нанесение лакокрасочных покрытий',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: Icon(
              Icons.menu_book_outlined,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    // builder: (context) => ObjectListVhC(),
                    ),
              );
            },
            title: Text(
              'Контроль изоляционных покрытий',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: Icon(
              Icons.menu_book_outlined,
              size: 52,
              color: Theme.of(context).accentColor,
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
            title: Text(
              'Контроль лакокрасочных покрытий',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: Icon(
              Icons.menu_book_outlined,
              size: 52,
              color: Theme.of(context).accentColor,
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
            title: Text(
              'Что то ещё...',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).primaryColor,
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
      ),
    );
  }
}
