import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';

import 'adminPortal.dart';
import 'widgets/epansionTile.dart';


class TodayMobile extends StatefulWidget {
  @override
  _TodayMobileState createState() => _TodayMobileState();
}

class _TodayMobileState extends State<TodayMobile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: bodybg,
      body: Scrollbar(
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  primary: true,
                child: Container(
            width: double.infinity,
            
            color: bodybg,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Image.asset("images/barclays-premier-league.png",
                 
                  width: 120,
                  
                  
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // for the  width of List of matche fixtures
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: ListView(
                    primary: false,
            shrinkWrap: true,
            children: [
            
              //ToDo : decide func to show either date or scores
              matchFixtures(
                  homeName: "Manchester Utd",
                  awayName: "juventus",
                  homeIcon: "images/manchester-united-logo.png",
                  awayIcon: "images/juventus.png",
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
                  homeIcon: "images/juventus.png",
                  awayIcon: "images/manchester-united-logo.png",
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
                  homeName: "Juventus",
                  awayName: "Chelsea",
                  homeIcon: "images/juventus.png",
                  awayIcon: "images/chelsealogo.png",
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
                  dateTimeToPlay: DateTime.utc(2020 ,8,24,22,30),),

                  SizedBox(
                    height: 15,
                  ),

                  matchFixtures(
                  homeName: "Manchester United",
                  awayName: "Bercelonia",
                  homeIcon: "images/juventus.png",
                  awayIcon: "images/manchester-united-logo.png",
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
                  homeName: "Manchester United",
                  awayName: "Bercelonia",
                  homeIcon: "images/juventus.png",
                  awayIcon: "images/manchester-united-logo.png",
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

            ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminPortal()));
        }
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

    //int  timeToPlay = int.parse(dateTimeToPlay.toIso8601String());

    var dateNow = DateTime.now();
    

   String dateOrGoals(){
      
      if(dateNow.isBefore(dateTimeToPlay)){
        print("the matche has not been played Feture");
        return dateTimeToPlay.toString().substring(10,16);
        //"$homeGoal-" + "$awayGoal";
      }
      else if( dateNow.compareTo( dateTimeToPlay ) == 0 ){
        print("it the same time");
        return dateTimeToPlay.timeZoneName;
      }
     
      else if( dateNow.isAfter( dateTimeToPlay)  ){
        print("it has beenss played");
        return "$homeGoal-" + "$awayGoal";
      }
      else{
        return "!working";
      }
   }
    List<Widget> goalsScoraHome (){
        List<String> names = namesOfHomeScora.split(" ");
        List<Widget> namesWid = [];
      for(var i in names ){
        namesWid.add(
          Container( 
            
            
            child: Text(i,
             textAlign: TextAlign.center,
             style: chipsmoblie  ),
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
            child: Text(i,
             textAlign: TextAlign.center,
             style: chipsmoblie  ),
              ),
              );
      }
      return namesWid;
    }

    return LayoutBuilder(
        builder: (context, constraint){
          return  Column(
            children: [
             
              Container(
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
          tilePadding: const EdgeInsets.symmetric( horizontal: 8, vertical:0 ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // <=== Home ===>
                   
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: Text(homeName,
                        textAlign: TextAlign.right,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: header4mobile)
                  ),
                  Image.asset(
                    homeIcon,
                    //"images/football.png",
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    

                   dateOrGoals(),
                      // date > dateTimeToPlay ?"$homeGoal-$awayGoal" : dateTimeToPlay.  
                    style: scoresMobile,
                  ),
                  //<=== Aways ===>
                  Image.asset(
                    awayIcon,
                    //"images/football.png",
                    height: 25,
                    width: 25,
                  ),
                  Container(
                    
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: Text(
                      awayName,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: header4mobile,
                    ),
                  ),
                ],
              ),
              children: [
                Container(
                  //width: 100,
                
                  //color: Colors.indigo,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( left: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.37,
                        
                          
                          child: Wrap(
                            spacing: 1.5,
                            runAlignment: WrapAlignment.start, 
                            children: goalsScoraHome(),
                          ),
                        ),
                      ),
                      Padding(
                       padding: const EdgeInsets.only( right: 15),
                        child: Container(
                          
                          width: MediaQuery.of(context).size.width * 0.37,
                        
                          
                          child: Wrap(
                          runAlignment: WrapAlignment.start,
                            children: goalsScoraAway(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  color: cardbg,
                  child: Column(
                    children: [
                      pointsRowPercent(
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
      ),
            ],
          );
        }
        
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
            style: ratingmobile,
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
          width: 98,
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
            style: ratingmobile,
          ),
        ),
      ],
    );
  }


 Widget pointsRowPercent({int homePnt, int awayPnt, String pntName}) {
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
          width: 24,
        
          child: Text(
            "$homePnt" + "%",
            style: ratingmobile,
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
          width: 98,
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
          width: 24,
        
          child: Text(
            "$awayPnt"+"%",
            style: ratingmobile,
          ),
        ),
      ],
    );
  }
}
