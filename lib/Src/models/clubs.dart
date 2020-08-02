
import 'package:cloud_firestore/cloud_firestore.dart';

class Club {
  final String name;
  final String league;
  final String image;
  final DocumentReference reference;

  Club.fromMap(Map<String, dynamic> map ,  {this.reference} )
    : assert(map["name"] != null),
      assert(map["league"] != null),
      assert(map["image"] != null),
      name = map["name"],
      league = map["league"],
      image = map["image"];

  Club.fromSnapshot(DocumentSnapshot snapshot )
      : this.fromMap(snapshot.data, reference: snapshot.reference);    
}