import 'package:flutter/material.dart';
import 'package:movieapp/services/constants.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  final List<Map<String, dynamic>> _allReactions = [
    {
      "id": 1,
      "name": "Me gusta",
      "image": "https://cdn-icons-png.flaticon.com/512/686/686370.png"
    },
    {
      "id": 2,
      "name": "Me encanta",
      "image": "https://cdn-icons-png.flaticon.com/512/833/833472.png"
    },
    {
      "id": 3,
      "name": "Me entristece",
      "image": "https://cdn-icons-png.flaticon.com/512/742/742752.png"
    },
    {
      "id": 4,
      "name": "No me gusta",
      "image": "https://cdn-icons-png.flaticon.com/512/889/889220.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: _allReactions.length,
          itemBuilder: (context, index) => Card(
              key: ValueKey(_allReactions[index]["id"]),
              color: Color.fromARGB(255, 206, 206, 206),
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListTile(
                    leading: Hero(
                      tag: 'hero-rectangle',
                      child: Image.network(
                        _allReactions[index]['image'],
                        //style: const TextStyle(fontSize: 24),
                      ),
                    ),
                    //onTap: () => _gotoDetailsPage(context, index),
                    title: Text(_allReactions[index]['name']),
                  ),
                ],
              ))),
    );
  }
}
