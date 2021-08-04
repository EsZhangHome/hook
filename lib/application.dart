import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook/Routes/routes.dart';
import 'package:hook/pages/home/login.dart';

class Applicatiopn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      onGenerateRoute: router.generator,
    );
  }
}
