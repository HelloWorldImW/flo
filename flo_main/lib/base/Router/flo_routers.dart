/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-01-11 13:37:54
 * @Description: 路由管理器
 * @FilePath: /flo_main/lib/base/Router/flo_routers.dart
 * @JoeSay: What does not kill me, makes me stronger
 */
import 'package:flo_main/base/Router/flo_router_register.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class FloRouters {

  static final FloRouters _instance = new FloRouters._internal();
  static final FluroRouter _router = FluroRouter();

  factory FloRouters() {
    return _instance;
  }
  
  FloRouters._internal();
  FluroRouter router() { return _router; }

  void configureRoutes() {
    FloRouterRegister.initRouter(_router);
  }
  
  static pop<T>(BuildContext context, [T? result]) => _router.pop<T>(context, result);

  static Future navigateTo(BuildContext context, String path, { 
    Map<String, dynamic>? params, bool replace = false, bool clearStack = false,
    bool maintainState = true, bool rootNavigator = false, TransitionType? transition, Duration? transitionDuration,
    RouteTransitionsBuilder? transitionBuilder, RouteSettings? routeSettings }) {
      String query = "";
      if (params != null) {
        int index = 0;
        for (var key in params.keys) {
          var value = Uri.encodeComponent(params[key]);
          if (index == 0) {
            query = "?";
          } else {
            query = query + "\&";
          }
          query += "$key=$value";
          index++;
        }
      }
      path = path + query;
      return _router.navigateTo(context, path, replace: replace, clearStack: clearStack, maintainState: maintainState, rootNavigator: rootNavigator, transition: transition, transitionDuration: transitionDuration,transitionBuilder: transitionBuilder,routeSettings: routeSettings);
  }

  static Future pushTo(BuildContext context, String path, {
    Map<String, dynamic>? params, bool replace = false, bool clearStack = false, bool maintainState = true,
    bool rootNavigator = false, TransitionType transition = TransitionType.cupertino, Duration? transitionDuration,
    RouteTransitionsBuilder? transitionBuilder, RouteSettings? routeSettings }) {
    return navigateTo(context, path, params: params, replace: replace, clearStack: clearStack, maintainState: maintainState, rootNavigator: rootNavigator, transition: transition, transitionDuration: transitionDuration,transitionBuilder: transitionBuilder,routeSettings: routeSettings);
  }
}