import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook/pages/home/index.dart';
import 'package:hook/pages/home/login.dart';
import 'package:hook/pages/home/register.dart';
import 'package:hook/pages/not_found.dart';
import 'package:hook/pages/room_detail/room_detail.dart';

class Routes {
  //定义路由名称
  static String home = 'home';
  static String login = 'login';
  static String roomDetail = '/room/:roomId';
  static String register = 'register';

  //定义路由处理函数
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return LoginPage();
  });

  static Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return NotFoundPage();
  });

  static Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RoomDetailPage(
      roomId: params['roomId'][0],
    );
  });

  static Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RegisterPage();
  });

  //编写函数 configureRoutes
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.notFoundHandler = _notFoundHandler;
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
  }
}
