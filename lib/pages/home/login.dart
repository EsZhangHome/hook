import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  bool showIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
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
                obscureText: !showPassword,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    suffixIcon: IconButton(
                      color: Colors.grey,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: showIcon
                          ? Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 16,
                            )
                          : Container(),
                    )),
                onChanged: (value) {
                  setState(() {
                    showIcon = value.length > 0;
                  });
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
                child: Text('登录'),
                onPressed: () {
                  //todo
                  print('登录');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('还没有账号，'),
                  TextButton(
                    child: Text(
                      '去注册~',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'register');
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
