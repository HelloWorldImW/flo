/*
 * @Author: Joe<sdauwangzh@163.com>
 * @Date: 2021-09-14 22:00:27
 * @Description: Base Stateful
 * @FilePath: /flo_main/lib/base/Widgets/fte_base_stateful_page.dart
 * JoeSay: What does not kill me, makes me stronger
 */
import 'package:flutter/material.dart';

abstract class FloBaseStatefulPage extends StatefulWidget {
  const FloBaseStatefulPage({ Key key }) : super(key: key);

  @override
  FloBaseStatefulPageState createState() {
    return getState();
  }
  
  @required
  FloBaseStatefulPageState getState();

}
 
 
abstract class FloBaseStatefulPageState<T extends FloBaseStatefulPage> extends State<T> {
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
 
  @override
  void deactivate() {
    super.deactivate();
  }
 
  @override
  void dispose() {
    super.dispose();
  }
  
}
