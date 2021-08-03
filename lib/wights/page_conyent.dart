
import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
   String name ='';
   PageContent({ Key? key , required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('当前页面为 $name'),
        brightness: Brightness.dark,
      ),
    );
  }
}