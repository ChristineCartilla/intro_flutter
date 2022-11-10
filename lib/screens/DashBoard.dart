import 'package:flutter/material.dart';
import 'package:flutter_intro/arguments/ScreenArguments.dart';
import 'package:flutter_intro/screens/Settings.dart';

class DashBoard extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    var screenArguments =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Settings.routeName);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Email:" + screenArguments.email,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
