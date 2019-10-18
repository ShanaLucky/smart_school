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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HydroCarbon'),
      ),
    );
  }
}
