import 'dart:ffi';

class Movie {
  String? uid;
  String? titulo;
  String? protagonista;
  String? genero;
  String? img;
  String? like;
  String? love;
  String? sad;
  String? dislike;
  Movie(
      {this.uid,
      this.titulo,
      this.protagonista,
      this.genero,
      this.img,
      this.like,
      this.love,
      this.sad,
      this.dislike});
}
