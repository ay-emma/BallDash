import 'package:cloud_firestore/cloud_firestore.dart';

class League {
final List league;
final DocumentReference reference;

  League.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map["leagues"] != null ),
    league = map["leagues"] ;

  League.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data, reference:snapshot.reference);  

}

