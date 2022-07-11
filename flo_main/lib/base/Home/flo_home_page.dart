/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-07-20 11:13:47
 * @Description: 首页
 * @FilePath: /flo_main/lib/base/Home/flo_home_page.dart
 * JoeSay: What does not kill me, makes me stronger
 */
import 'package:flutter/material.dart';

class FloHomePage extends StatefulWidget {
  FloHomePage({Key? key}) : super(key: key);

  @override
  _FloHomePageState createState() => _FloHomePageState();
}

class _FloHomePageState extends State<FloHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flo"),
      ),
      body:  Text("TODO")
    );
  }
}