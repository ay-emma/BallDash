

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/models/leagues.dart';

class Db with ChangeNotifier {

  final fire = Firestore.instance;
  List _leaguenames = [];
  List get leaguenames => _leaguenames;

  int _clubDocLen = 0;
  int get clubDocLen => _clubDocLen;


  Future leagueList() async {
    List data;
    await fire.collection("leagues").document("leagues").get().then((value) {
       final leagueJson = League.fromSnapshot( value  );
       print(value.data  );
       _leaguenames = leagueJson.league;
    });
    print(data);
    notifyListeners();
    return data;
  }

  clubsInsert({String name, String league, String image }) async {
   try{
      fire.collection("clubs").document(name).setData(
      {
        "name" : name,
        "league" : league,
        "String" : image
      }
    );
    print("Successfully added a club");
   } catch (e){
     print(e.toString());
   }
  }
  
  Stream<QuerySnapshot> getClubs() {
    try{
     // _clubDocLen = fire.collection("clubs").document().snapshots().length;

      return fire.collection("clubs").snapshots();
    } catch (e){
      return null;
    }
  }

}