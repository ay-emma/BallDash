import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:goals_dash/Src/style.dart';

import 'widgets/epansionTile.dart';

class Today extends StatefulWidget {
  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodybg,
      body: Scrollbar(
              child: SingleChildScrollView(
                child: Container(
            width: double.infinity,
            
            color: bodybg,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("LaLiga", style: header3),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ListView(
            shrinkWrap: true,
            children: [
              //ToDo : show players names
              //ToDo : decide func to show either date or scores
              matchFixtures(
                  homeName: "Chealse",
                  awayName: "Arsenal",
                  homeIcon: "images/football.png",
                  awayIcon: "images/football.png",
                  namesOfHomeScora: "messi(24') puga(82') macelo(9')",
                  namesOfAwayScora: "messi(44') macelo(90')",
                  homeGoal: 0,
                  awayGoal: 2,
                  homePossession: 56,
                  awayPossession: 44,
                  homeTotalShorts: 17,
                  awayTotalShorts: 12,
                  homeShortsOnTarget: 7,
                  awayShortsOnTaget: 11,
                  homeCorners: 1,
                  awayCorners: 4,
                  homeFouls: 2,
                  awayFouls: 2,
                  homeYellowCards: 1,
                  awayYellowCards: 0,
                  homeRedCards: 0,
                  awayRedCards: 0,
                  dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),

                  SizedBox(
                    height: 15,
                  ),

             matchFixtures(
                  homeName: "Manchester United",
                  awayName: "Bercelonia",
                  homeIcon: "images/football.png",
                  awayIcon: "images/football.png",
                  namesOfHomeScora: "messi(24') puga(82') macelo(9')",
                  namesOfAwayScora: "messi(44') macelo(90')",
                  homeGoal: 2,
                  awayGoal: 2,
                  homePossession: 51,
                  awayPossession: 49,
                  homeTotalShorts: 25,
                  awayTotalShorts: 22,
                  homeShortsOnTarget: 15,
                  awayShortsOnTaget: 11,
                  homeCorners: 3,
                  awayCorners: 4,
                  homeFouls: 2,
                  awayFouls: 1,
                  homeYellowCards: 1,
                  awayYellowCards: 0,
                  homeRedCards: 0,
                  awayRedCards: 0,
                  dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),

                  SizedBox(
                    height: 15,
                  ),

             matchFixtures(
                  homeName: "Liverpool",
                  awayName: "Beryan Muniche",
                  homeIcon: "images/football.png",
                  awayIcon: "images/football.png",
                  namesOfHomeScora: "messi(24') puga(82') macelo(9')",
                  namesOfAwayScora: "messi(44') macelo(90')",
                  homeGoal: 0,
                  awayGoal: 1,
                  homePossession: 56,
                  awayPossession: 44,
                  homeTotalShorts: 17,
                  awayTotalShorts: 12,
                  homeShortsOnTarget: 7,
                  awayShortsOnTaget: 11,
                  homeCorners: 1,
                  awayCorners: 4,
                  homeFouls: 2,
                  awayFouls: 2,
                  homeYellowCards: 1,
                  awayYellowCards: 0,
                  homeRedCards: 0,
                  awayRedCards: 0,
                  dateTimeToPlay: DateTime.utc(2020 ,7,24,22,30),),

            ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }

  /// this widgets shows all the detals about a matche
  Widget matchFixtures({
    @required String homeName,
    @required String awayName,
    @required String homeIcon,
    @required String awayIcon,
    @required int homeGoal,
    @required int awayGoal,
    String namesOfHomeScora,
    String namesOfAwayScora,
    @required int homePossession,
    @required int awayPossession,
    @required int homeTotalShorts,
    @required int awayTotalShorts,
    @required int homeShortsOnTarget,
    @required int awayShortsOnTaget,
    @required int homeCorners,
    @required int awayCorners,
    @required int homeFouls,
    @required int awayFouls,
    @required int homeYellowCards,
    @required int awayYellowCards,
    @required int homeRedCards,
    @required int awayRedCards,
    @required DateTime dateTimeToPlay,
  }) {
    //bool isCurrentlyBeanPlayed

    // things needed
    /// Home club Name
    /// Away Club Name
    /// Home icon
    /// Away Icon
    /// Home goal
    /// Away goal
    /// List of Home goals scored names
    /// List of Away goal Scored Names
    /// Possession Home and away
    /// Total Home and Away
    /// Shots on Target Home and Away
    /// Corners home and away
    /// Fouls home and away
    /// yellow card home and away
    /// red cards home and away
    /// booleand to Know if a matche is currently bean played or not
    /// Date and time of the current Match
    ///
    // var today = DateTime.utc(2020 ,7,22,22,30);
    //  print(today.toIso8601String());

    // chips
    List<Widget> goalsScoraHome (){
        List<String> names = namesOfHomeScora.split(" ");
        List<Widget> namesWid = [];
      for(var i in names ){
        namesWid.add(
          Container( 
            padding: const EdgeInsets.symmetric(horizontal: 4 ),
            margin: const EdgeInsets.only( top: 2, right: 3, left: 3 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: whitee,
                )
            ),
            child: Text(i,
             textAlign: TextAlign.center,
             style: chips  ),
              ),
              );
      }
      return namesWid;
    }
    // chips
    List<Widget> goalsScoraAway (){
         List<String> names = namesOfAwayScora.split(" ");
        List<Widget> namesWid = [];
      for(var i in names ){
        namesWid.add(
          Container( 
            padding: const EdgeInsets.symmetric(horizontal: 4 ),
            margin: const EdgeInsets.only( top: 2, right: 3, left: 3 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                color: whitee,
                )
            ),
            child: Text(i,
             textAlign: TextAlign.center,
             style: chips  ),
              ),
              );
      }
      return namesWid;
    }

    return Container(
      decoration: BoxDecoration(
          color: cardbg,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: bluewe,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          boxShadow: [
            BoxShadow(
              color: bluewe.withOpacity(0.62),
              blurRadius: 1,
              spreadRadius: 0.5,
              offset: Offset(0, 2),
            ),
          ]),
      alignment: Alignment.center,
      
      child: ExpansionTiles(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // <=== Home ===>
              width: MediaQuery.of(context).size.width * 0.22,
              child: Text(homeName,
                  textAlign: TextAlign.right,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: header4),
            ),
            Image.asset(
              homeIcon,
              //"images/football.png",
              height: 40,
              width: 40,
            ),
            Text(
              "$homeGoal-$awayGoal",
              style: scores,
            ),
            //<=== Aways ===>
            Image.asset(
              awayIcon,
              //"images/football.png",
              height: 40,
              width: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.21,
              child: Text(
                awayName,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: header4,
              ),
            ),
          ],
        ),
        children: [
          Container(
            //width: 100,
            height: 50,
            //color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only( left: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                   
                    height: 48,
                    child: Wrap(
                      children: goalsScoraHome(),
                    ),
                  ),
                ),
                Padding(
                 padding: const EdgeInsets.only( right: 20),
                  child: Container(
                  
                    width: MediaQuery.of(context).size.width * 0.22,
                  
                    height: 48,
                    child: Wrap(
                      children: goalsScoraAway(),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.68,
            color: cardbg,
            child: Column(
              children: [
                pointsRow(
                    homePnt: homePossession,
                    awayPnt: awayPossession,
                    pntName: "Possession"),
                pointsRow(
                    homePnt: homeTotalShorts,
                    awayPnt: awayTotalShorts,
                    pntName: "Total Shorts"),
                pointsRow(
                    homePnt: homeShortsOnTarget,
                    awayPnt: awayShortsOnTaget,
                    pntName: "Shorts on Targets"),
                pointsRow(
                    homePnt: homeCorners,
                    awayPnt: awayCorners,
                    pntName: "Corners"),
                pointsRow(
                    homePnt: homeFouls, awayPnt: awayFouls, pntName: "Fouls"),
                pointsRow(
                    homePnt: homeYellowCards,
                    awayPnt: awayYellowCards,
                    pntName: "Yellow Cards"),
                pointsRow(
                    homePnt: homeRedCards,
                    awayPnt: awayRedCards,
                    pntName: "Red Cards"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget pointsRow({int homePnt, int awayPnt, String pntName}) {
    int pointTotal = homePnt + awayPnt;
    double homePercent() {
      if (homePnt / pointTotal > 0) {
        //print("${ homePnt/pointTotal}");
        return homePnt / pointTotal;
      } else {
        return 0.08;
      }
    }

    double awayPercent() {
      if (awayPnt / pointTotal > 0) {
        return awayPnt / pointTotal;
      } else {
        return 0.08;
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 20,
        
          child: Text(
            "$homePnt",
            style: rating,
          ),
        ),
        Container(
          // home
          width: MediaQuery.of(context).size.width * 0.22,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ratingblk,
                  borderRadius: BorderRadius.circular(7.5),
                ),
                height: 6,
              ),
              Container(
                // home percentage
                height: 4,
                width:
                    (MediaQuery.of(context).size.width * 0.22) * homePercent(),
                decoration: BoxDecoration(
                  color: bluewe,
                  borderRadius: BorderRadius.circular(7.5),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 106,
          alignment: Alignment.center,
          child: Text(
            pntName,
            softWrap: false,
            style: ratingName,
          ),
        ),
        Container(
          //away
          width: MediaQuery.of(context).size.width * 0.22,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ratingblk,
                  borderRadius: BorderRadius.circular(7.5),
                ),
                height: 6,
              ),
              Container(
                //away percentage
                height: 4,
                width:
                    (MediaQuery.of(context).size.width * 0.22) * awayPercent(),
                decoration: BoxDecoration(
                  color: bluewe,
                  borderRadius: BorderRadius.circular(7.5),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 20,
        
          child: Text(
            "$awayPnt",
            style: rating,
          ),
        ),
      ],
    );
  }
}
