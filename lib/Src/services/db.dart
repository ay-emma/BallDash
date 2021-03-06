

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/models/leagues.dart';

class Db with ChangeNotifier {

  final fire = Firestore.instance;
  List _leaguenames = [];
  List get leaguenames => _leaguenames;

  List _clubList = [];
  List get clubList => _clubList;

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

  getClubsList () async {
    final QuerySnapshot data =  await fire.collection("clubs").getDocuments();
    
      getResult () {
       data.documents.forEach((ele) {
          _clubList.add(ele.documentID);
          
       });
    }

    //print(getResult());
    notifyListeners();
    return  getResult();
  }

   Future addFixtures(
    {
      String homeName,
      String awayName,
      DateTime dateTime,

    }
  ) async {
    //we need to improve this to allow multiple user to add data.
    // we need to add the ability to add the right Icons url
    // instead of pics
    await fire.collection("fixtures").add(
      {
        "homeName" : homeName,
        "awayName" : awayName,
        "homeIcon" : "pics",
        "awayIcon" : "pics",
        "homeGoals" : 0,
        "awayGoals" : 0,
        "homeScora" : "",
        "awayScora" : "",
        "homePossession": 0,
        "awayPossession": 0,
        "homeTotalShorts": 0,
        "awayTotalShorts" : 0,
        "homeShortsOnTarget": 0,
        "awayShortsOnTarget": 0,
        "homeCorners": 0,
        "awayCorners": 0,
        "homeFouls":0,
        "awayFouls": 0,
        "homeYellowCards":0,
        "awayYellowCards":0,
        "homeRedCards" : 0,
        "awayRedCards":0,
        "youtubeLink": "youtubeLink",
        "dateTime": dateTime,
    });
  }

  
 Future udateFixtures(
    {
      String id,
      String homeIcon,
      String awayIcon,
      int homeGoals,
      int awayGoals,
      String homeScora,
      String awayScora,
      int homePossession,
      int awayPossession,
      int homeTotalShorts,
      int awayTotalShorts,
      int homeShortsOnTarget,
      int awayShortsOnTarget,
      int homeCorners,
      int awayCorners,
      int homeFouls,
      int awayFouls,
      int homeYellowCards,
      int awayYellowCards,
      int homeRedCards,
      int awayRedCards,
      String youtubeLink,
      DateTime dateTime,

    }
  ) async {
    //we need to improve this to allow multiple user to add data.
    await fire.collection("fixtures").document(id).updateData(
      {
        
        
        "homeGoals" : homeGoals,
        "awayGoals" : awayGoals,
        "homeScora" : homeScora,
        "awayScora" : awayScora,
        "homePossession": homePossession,
        "awayPossession": awayPossession,
        "homeTotalShorts": homeTotalShorts,
        "awayTotalShorts" : awayTotalShorts,
        "homeShortsOnTarget": homeShortsOnTarget,
        "awayShortsOnTarget": awayShortsOnTarget,
        "homeCorners": homeCorners,
        "awayCorners": awayCorners,
        "homeFouls":homeFouls,
        "awayFouls": awayFouls,
        "homeYellowCards":homeYellowCards,
        "awayYellowCards":awayYellowCards,
        "homeRedCards" : homeRedCards,
        "awayRedCards":awayRedCards,
        "youtubeLink": youtubeLink,
       
    });
  }

  


Stream<QuerySnapshot> fixturesYerstarday() {
  var  today = DateTime.now();
  // var yestarday = today.subtract(Duration(days: 1));
  // var tomorrow = today.add(Duration(days: 1));
  return fire.collection("fixtures").where(
    "dateTime", isLessThan: today,
  )
  .snapshots();
}


Stream<QuerySnapshot> fixturesToday() {
  var  today = DateTime.now();
  var yestarday = today.subtract(Duration(days: 1));
  var tomorrow = today.add(Duration(days: 1));
  return fire.collection("fixtures").where(
    "dateTime", isGreaterThan: yestarday
  ).where(
    "dateTime", isLessThan: tomorrow
  )
  .snapshots();
}



Stream<QuerySnapshot> fixturesTomorrow() {
  var  today = DateTime.now();
  // var yestarday = today.subtract(Duration(days: 1));
  // var tomorrow = today.add(Duration(days: 1));
  return fire.collection("fixtures").where(
    "dateTime", isGreaterThan: today
  )
  .snapshots();
}


}