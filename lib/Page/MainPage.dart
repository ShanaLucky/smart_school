import 'package:flutter/material.dart';

/// App 登录页面
/// 完成 App 的登录注册等功能

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState(); // 创建状态管理类
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请登录.'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: '邮箱',
                hintText: '请输入邮箱',
                icon: Icon(Icons.email),
              ),
              validator: (value) {
                return value.trim().length > 0 ? null : '邮箱地址不正确';
              },
            ),
            TextFormField(
              controller: _userPasswordController,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                return value.trim().length > 5 ? null : '密码不能少于6位';
              },
            ),
          ],
        ),
      ),
    );
  }
}
