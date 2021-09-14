import 'package:flo_main/base/Home/flo_home_page.dart';
import 'package:flo_main/base/Router/flo_routers.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() { 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    FloRouters().configureRoutes();
    return MaterialApp(
      home: FloHomePage(),
      builder: EasyLoading.init(),
      onGenerateRoute: router.generator,
    );
  }
}