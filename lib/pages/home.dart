import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/services/constants.dart';
import 'package:movieapp/pages/context.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          width: MediaQuery.of(context).size.width * 1,
          height: size.height * 0.11 - 30,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Reacciona a peliculas",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: size.height / 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Column(children: [
                    Container(child: ClipRRect()),
                  ])
                ],
              ),
            ],
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            child: Image.asset("assets/matrix.jpg"),
          ),
        ),
      ),
      Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 8, 5, 5),
          height: size.height / 1.5,
          width: size.width,
          child: ComplicatedImageDemo(),
        ),
      ),
    ]);
  }
}

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = _allMovies
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        InkWell(
                            child: Image.network(
                              item['image'],
                              fit: BoxFit.cover,
                              width: 1000,
                            ),
                            onTap: () => {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Prueba(
                                              item['image'],
                                            )),
                                  )
                                }),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 5.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
      ),
      items: imageSliders,
    );
  }
}

final List<Map<String, dynamic>> _allMovies = [
  {
    "id": 1,
    "name": "Sonyc 2 la pelicula",
    "age": 2022,
    "image":
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQre31EeKplZHc5Mtfur-CgF_2bOq9fiHiFA0nY-mLG5BUellCi',
    "genre": 'Aventura/Fantasia',
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
