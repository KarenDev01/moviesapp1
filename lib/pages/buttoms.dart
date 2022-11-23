import 'package:flutter/material.dart';
import 'package:movieapp/pages/contador.dart';

class Buttoms extends StatefulWidget {
  const Buttoms({Key? key}) : super(key: key);

  @override
  State<Buttoms> createState() => _ButtomsState();
}

class _ButtomsState extends State<Buttoms> {
  int counterlike = 346;
  int counterlove = 229;
  int countersad = 102;
  int counternolike = 31;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counterlike++;
                    print(counterlike);
                  });
                },
                backgroundColor: Colors.lightBlue,
                child: Container(
                  height: 50,
                  width: 40,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/686/686370.png"),
                )),
            SizedBox(width: 30),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counterlove++;
                  });
                },
                backgroundColor: Color.fromARGB(255, 248, 115, 115),
                child: Container(
                  height: 40,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
                )),
            SizedBox(width: 30),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    countersad++;
                  });
                },
                backgroundColor: Colors.yellow,
                child: Container(
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/742/742752.png",
                  ),
                )),
            SizedBox(width: 30),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counternolike++;
                  });
                },
                backgroundColor: Colors.white,
                child: Container(
                  height: 40,
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/4466/4466315.png'),
                )),
          ]),
          SizedBox(height: 10),
          Text(
            "Cantidad de reacciones",
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 10),
          Column(
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
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/4466/4466315.png'),
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
          )
        ],
      ),
    );
  }
}
