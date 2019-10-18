import 'package:flutter/material.dart';
import 'Page/LoginPage.dart';

/// 程序启动入口
/// 实现程序的启动，加载启动页面

void main() => runApp(MyApp()); // 运行程序

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydroCarbon', // App Title
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(33, 33, 33, 1.0), // App 主题设置为蓝色
      ),
      home: LoginPage(), // 程序启动页面
      debugShowCheckedModeBanner: false, // 关闭 Debug 标识
    );
  }
}
