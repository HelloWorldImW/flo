/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-01-11 17:07:38
 * @Description: 
 * @FilePath: /flo_main/lib/base/Router/flo_router_register.dart
 * @JoeSay: What does not kill me, makes me stronger
 */
import 'package:flo_main/base/Home/flo_home_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

const String FloRouters_Home = "home/"; //主页

class FloRouterRegister {
  static Map<String, Handler> routers = {
    FloRouters_Home: Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return FloHomePage();
    }),
  };

  static void initRouter(FluroRouter router) {
    routers.forEach((routerName, handler) {
      router.define(routerName, handler: handler);
    });
  }
  
}
