import 'package:flutter/cupertino.dart';
import 'package:flutter_intro/screens/DashBoard.dart';
import 'package:flutter_intro/screens/LoginScreen.dart';
import 'package:flutter_intro/screens/Settings.dart';
import 'package:flutter_intro/screens/SignupScreen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  SignupScreen.routeName: (BuildContext context) => SignupScreen(),
  DashBoard.routeName: (BuildContext context) => DashBoard(),
  Settings.routeName: (BuildContext context) => Settings(),
};
