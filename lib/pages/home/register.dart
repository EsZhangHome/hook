import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hook/wights/page_conyent.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              TextField(
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '确认密码',
                  hintText: '请输入密码',
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                child: Text('注册'),
                onPressed: () {
                  //todo
                  print('注册');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('已有账号，'),
                  TextButton(
                    child: Text(
                      '去登录~',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
