import 'package:flutter/material.dart';
import 'package:hook/Routes/routes.dart';

// ignore: must_be_immutable
class PageContent extends StatelessWidget {
  String name = '';
  PageContent({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('当前页面为 $name'),
      ),
      body: ListView(
        children: [
          // ignore: deprecated_member_use
          FlatButton(
            child: Text(Routes.home),
            onPressed: () {
              Navigator.pushNamed(context, Routes.home);
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text(Routes.login),
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('不存在的页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/aaa');
            },
          ),
          // ignore: deprecated_member_use
          FlatButton(
            child: Text('房屋详情，id:222'),
            onPressed: () {
              Navigator.pushNamed(context, '/room/222');
            },
          ),
        ],
      ),
    );
  }
}
