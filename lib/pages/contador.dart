import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  //const Contador({Key? key}) : super(key: key);
  int counterlike;
  int counterlove;
  int countersad;
  int counternolike;

  Contador(
    this.counterlike,
    this.counterlove,
    this.countersad,
    this.counternolike,
  );

  @override
  State<Contador> createState() =>
      _ContadorState(counterlike, counterlove, countersad, counternolike);
}

class _ContadorState extends State<Contador> {
  @override
  int counterlike;
  int counterlove;
  int countersad;
  int counternolike;

  _ContadorState(
    this.counterlike,
    this.counterlove,
    this.countersad,
    this.counternolike,
  );
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 40,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/686/686370.png"),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  counterlike.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 40,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  counterlove.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 40,
              child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/742/742752.png"),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  countersad.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 40,
              child: Image.asset('assets/mal.jpeg'),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  counternolike.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ],
    );
  }
}
