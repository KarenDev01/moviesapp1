import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('movies');

class FirebaseCrud {
//CRUD method here
  static Future<Response> addMovie({
    required String titulo,
    required String protagonista,
    required String genero,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "titulo": titulo,
      "protagonista": protagonista,
      "genero": genero
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Pelicula agregada";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Stream<QuerySnapshot> readMovie() {
    CollectionReference notesItemCollection = _Collection;
    print(notesItemCollection);
    return notesItemCollection.snapshots();
  }

  static Future<Response> updateMovie({
    required String titulo,
    required String protagonista,
    required String genero,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "titulo": titulo,
      "protagonista": protagonista,
      "genero": genero
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Pelicula actualizada";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> deleteMovie({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Pelicula eliminada";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
}
