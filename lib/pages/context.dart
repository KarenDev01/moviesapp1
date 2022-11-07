import 'package:flutter/material.dart';
import 'package:movieapp/pages/buttoms.dart';
import 'package:movieapp/pages/contador.dart';

import '../services/constants.dart';

class Prueba extends StatefulWidget {
  final item;
  const Prueba(
    this.item,
  );

  @override
  _SearchList createState() => _SearchList(item);
}

class _SearchList extends State<Prueba> {
  final item;
  _SearchList(
    this.item,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Reacciona a esta pelicula'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 40),
            Container(
                alignment: Alignment.center,
                height: 400,
                width: 400,
                child: Image.network(item)),
            SizedBox(height: 10),
            Buttoms(),
            SizedBox(height: 20),
          ],
        ));
  }
}
