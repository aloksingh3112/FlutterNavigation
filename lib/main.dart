import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import './second_page.dart';
import './third_page.dart';
import './form.dart';
import './fourth_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _getPage(currentPage),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: Color.fromRGBO(23, 35, 47, 1),
          textColor: Color.fromRGBO(0, 162, 85, 1),
          activeIconColor: Color.fromRGBO(255, 255, 255, 1),
          inactiveIconColor: Color.fromRGBO(255, 255, 255, 1),
          circleColor: Color.fromRGBO(0, 162, 85, 1),
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.directions_run, title: "Track"),
            TabData(iconData: Icons.favorite, title: "Graph"),
            TabData(iconData: Icons.person_outline, title: "Profile")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
          initialSelection: 0,
        ));
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return new FormClass();
      case 1:
        return new SecondPage();
      case 2:
        return new ThirdClass();
      default:
        return new FourthClass();
    }
  }
}
