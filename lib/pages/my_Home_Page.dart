// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:movieapp/pages/addpage.dart';
import 'package:movieapp/pages/editpage.dart';
import 'package:movieapp/pages/listpage.dart';
import 'package:movieapp/services/constants.dart';
import 'package:movieapp/pages/favorite.dart';
import 'package:movieapp/pages/search_Page.dart';

import 'home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  List<Widget> _paginas = [
    Home(),
    SearchList(),
    //Favorite(),
    AddPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Movie Reactions"),
          backgroundColor: kPrimaryColor,
        ),
        body: _paginas[currentPage],
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Inicio"),
            TabData(
              iconData: Icons.search,
              title: "Buscar",
            ),
            //TabData(iconData: Icons.favorite, title: " Mis Reacciones")
            TabData(iconData: Icons.add, title: "Peliculas"),
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ));
  }
}
