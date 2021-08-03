import 'package:flutter/material.dart';
import 'package:hook/wights/page_conyent.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageContent(name: '首页'),
    );
  }
}
