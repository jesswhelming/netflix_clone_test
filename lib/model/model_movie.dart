import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool like;
  final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map, {required this.reference})
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.get('data'), reference: snapshot.reference);

  @override
  String toString() => "Movie<$title:$keyword>";
}
