import 'package:flutter/material.dart';
import 'package:movieapp/services/constants.dart';
import 'package:movieapp/pages/contador.dart';

import 'buttoms.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchList createState() => _SearchList();
}

class _SearchList extends State<SearchList> {
  // This holds a list of fiction Movies
  //Karen, here, you can add or change your Movies
  final List<Map<String, dynamic>> _allMovies = [
    {
      "id": 1,
      "name": "Sonyc 2 la pelicula",
      "age": 2022,
      "image":
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQre31EeKplZHc5Mtfur-CgF_2bOq9fiHiFA0nY-mLG5BUellCi',
      "genre": 'Aventura/Fantasia'
    },
    {
      "id": 2,
      "name": "Encanto",
      "age": 2021,
      "image": 'https://pics.filmaffinity.com/Encanto-153413687-large.jpg',
      "genre": 'Musical/Infantil'
    },
    {
      "id": 3,
      "name": "Morbius",
      "age": 2022,
      "image":
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSKSHO-GYFv94VuQyW6B4usXKwArC7NqWUjy856V2ouFrgjLMyo',
      "genre": 'Aventura/Accion'
    },
    {
      "id": 4,
      "name": "Coco",
      "age": 2017,
      "image":
          'https://imgs.search.brave.com/9SrpmMpBHBBOqNN78mLhz558QFBDfvAAxbxZBVGtK5Q/rs:fit:320:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/R2s2aDBvWXNFNWg2/WW1lNzJXaDFnSGFL/LSZwaWQ9QXBp',
      "genre": 'Infantil/Comedia'
    },
    {
      "id": 5,
      "name": "Scream 5",
      "age": 2022,
      "image":
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSEfNLUCL5WBygMcyw9J7V4RacUqaZWSW3rMaP9bex7QTM4FepY',
      "genre": 'Terror/Suspenso'
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundMovies = [];
  @override
  initState() {
    // Karen, at the beginning, all movies are hide, bur you can change this
    _foundMovies = [];
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _foundMovies;
    } else {
      results = _allMovies
          .where((movie) => movie["name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundMovies = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Buscar', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundMovies.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundMovies.length,
                      itemBuilder: (context, index) => Card(
                          key: ValueKey(_foundMovies[index]["id"]),
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
                                    _foundMovies[index]['image'],

                                    //style: const TextStyle(fontSize: 24),
                                  ),
                                ),
                                onTap: () => _gotoDetailsPage(context, index),
                                title: Text(_foundMovies[index]['name']),
                              ),
                            ],
                          )))
                  : const Center(
                      child: Text('Busca aqui una peli!'),
                      //style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  void _gotoDetailsPage(BuildContext context, index) {
    String titulo = _foundMovies[index]['name'];
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(titulo),
          backgroundColor: kPrimaryColor,
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                  alignment: Alignment.center,
                  height: 450,
                  width: 450,
                  child: Image.network(
                    _foundMovies[index]['image'],
                  )),
              SizedBox(height: 10),
              Buttoms(),
            ],
          ),
        ),
      ),
    ));
  }
}
