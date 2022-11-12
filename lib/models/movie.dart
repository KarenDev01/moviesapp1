import 'dart:ffi';

class Movie {
  String? uid;
  String? titulo;
  String? protagonista;
  String? genero;
  Int? like;
  Int? love;
  Int? sad;
  Int? dislike;
  Movie(
      {this.uid,
      this.titulo,
      this.protagonista,
      this.genero,
      this.like,
      this.love,
      this.sad,
      this.dislike});
}
