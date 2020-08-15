// [
//                 Container(
//                   //width: 100,
                
//                   //color: Colors.indigo,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only( left: 15),
//                         child: Container(
//                           width: MediaQuery.of(context).size.width * 0.37,
                        
                          
//                           child: Wrap(
//                             spacing: 1.5,
//                             runAlignment: WrapAlignment.start, 
//                             children: goalsScoraHome(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                        padding: const EdgeInsets.only( right: 15),
//                         child: Container(
                          
//                           width: MediaQuery.of(context).size.width * 0.37,
//                           child: Wrap(
//                           runAlignment: WrapAlignment.start,
//                             children: goalsScoraAway(),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.92,
//                   color: cardbg,
//                   child: Column(
//                     children: [
//                       pointsRowPercent(
//                           homePnt: widget.homePossession,
//                           awayPnt: widget.awayPossession,
//                           pntName: "Possession"),
//                       pointsRow(
//                           homePnt: widget.homeTotalShorts,
//                           awayPnt: widget.awayTotalShorts,
//                           pntName: "Total Shorts"),
//                       pointsRow(
//                           homePnt: widget.homeShortsOnTarget,
//                           awayPnt: widget.awayShortsOnTaget,
//                           pntName: "Shorts on Targets"),
//                       pointsRow(
//                           homePnt: widget.homeCorners,
//                           awayPnt: widget.awayCorners,
//                           pntName: "Corners"),
//                       pointsRow(
//                           homePnt: widget.homeFouls, awayPnt: widget.awayFouls, pntName: "Fouls"),
//                       pointsRow(
//                           homePnt: widget.homeYellowCards,
//                           awayPnt: widget.awayYellowCards,
//                           pntName: "Yellow Cards"),
//                       pointsRow(
//                           homePnt: widget.homeRedCards,
//                           awayPnt: widget.awayRedCards,
//                           pntName: "Red Cards"),
//                     ],
//                   ),
//                 )
//               ],  
  
  
  
  
  
  
  
//           // //ToDo : decide func to show either date or scores
//           //     matchFixtures(
//           //         homeName: "Manchester Utd",
//           //         awayName: "juventus",
//           //         homeIcon: "images/manchester-united-logo.png",
//           //         awayIcon: "images/juventus.png",
//           //         namesOfHomeScora: "messi(24') puga(82') macelo(9')",
//           //         namesOfAwayScora: "messi(44') macelo(90')",
//           //         homeGoal: 0,
//           //         awayGoal: 2,
//           //         homePossession: 56,
//           //         awayPossession: 44,
//           //         homeTotalShorts: 17,
//           //         awayTotalShorts: 12,
//           //         homeShortsOnTarget: 7,
//           //         awayShortsOnTaget: 11,
//           //         homeCorners: 1,
//           //         awayCorners: 4,
//           //         homeFouls: 2,
//           //         awayFouls: 2,
//           //         homeYellowCards: 1,
//           //         awayYellowCards: 0,
//           //         homeRedCards: 0,
//           //         awayRedCards: 0,
//           //         youtubLink: "bla bla",
//           //         dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),

//           //         SizedBox(
//           //           height: 15,
//           //         ),

//           //    matchFixtures(
//           //         homeName: "Manchester United",
//           //         awayName: "Bercelonia",
//           //         homeIcon: "images/juventus.png",
//           //         awayIcon: "images/manchester-united-logo.png",
//           //         namesOfHomeScora: "messi(24') puga(82') macelo(9')",
//           //         namesOfAwayScora: "messi(44') macelo(90')",
//           //         homeGoal: 2,
//           //         awayGoal: 2,
//           //         homePossession: 51,
//           //         awayPossession: 49,
//           //         homeTotalShorts: 25,
//           //         awayTotalShorts: 22,
//           //         homeShortsOnTarget: 15,
//           //         awayShortsOnTaget: 11,
//           //         homeCorners: 3,
//           //         awayCorners: 4,
//           //         homeFouls: 2,
//           //         awayFouls: 1,
//           //         homeYellowCards: 1,
//           //         awayYellowCards: 0,
//           //         homeRedCards: 0,
//           //         awayRedCards: 0,
//           //         youtubLink: "bla bla",
//           //         dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),

//           //         SizedBox(
//           //           height: 15,
//           //         ),

//           //    matchFixtures(
//           //         homeName: "Juventus",
//           //         awayName: "Chelsea",
//           //         homeIcon: "images/juventus.png",
//           //         awayIcon: "images/chelsealogo.png",
//           //         namesOfHomeScora: "messi(24') puga(82') macelo(9')",
//           //         namesOfAwayScora: "messi(44') macelo(90')",
//           //         homeGoal: 0,
//           //         awayGoal: 1,
//           //         homePossession: 56,
//           //         awayPossession: 44,
//           //         homeTotalShorts: 17,
//           //         awayTotalShorts: 12,
//           //         homeShortsOnTarget: 7,
//           //         awayShortsOnTaget: 11,
//           //         homeCorners: 1,
//           //         awayCorners: 4,
//           //         homeFouls: 2,
//           //         awayFouls: 2,
//           //         homeYellowCards: 1,
//           //         awayYellowCards: 0,
//           //         homeRedCards: 0,
//           //         awayRedCards: 0,
//           //         youtubLink: "bla bla",
//           //         dateTimeToPlay: DateTime.utc(2020 ,8,24,22,30),),

//           //         SizedBox(
//           //           height: 15,
//           //         ),

//           //         matchFixtures(
//           //         homeName: "Manchester United",
//           //         awayName: "Bercelonia",
//           //         homeIcon: "images/juventus.png",
//           //         awayIcon: "images/manchester-united-logo.png",
//           //         namesOfHomeScora: "messi(24') puga(82') macelo(9')",
//           //         namesOfAwayScora: "messi(44') macelo(90')",
//           //         homeGoal: 2,
//           //         awayGoal: 2,
//           //         homePossession: 51,
//           //         awayPossession: 49,
//           //         homeTotalShorts: 25,
//           //         awayTotalShorts: 22,
//           //         homeShortsOnTarget: 15,
//           //         awayShortsOnTaget: 11,
//           //         homeCorners: 3,
//           //         awayCorners: 4,
//           //         homeFouls: 2,
//           //         awayFouls: 1,
//           //         homeYellowCards: 1,
//           //         awayYellowCards: 0,
//           //         homeRedCards: 0,
//           //         awayRedCards: 0,
//           //         youtubLink: "bla bla",
//           //         dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),

//           //         SizedBox(
//           //           height: 15,
//           //         ),

//           //         matchFixtures(
//           //         homeName: "Manchester United",
//           //         awayName: "Bercelonia",
//           //         homeIcon: "images/juventus.png",
//           //         awayIcon: "images/manchester-united-logo.png",
//           //         namesOfHomeScora: "messi(24') puga(82') macelo(9')",
//           //         namesOfAwayScora: "messi(44') macelo(90')",
//           //         homeGoal: 2,
//           //         awayGoal: 2,
//           //         homePossession: 51,
//           //         awayPossession: 49,
//           //         homeTotalShorts: 25,
//           //         awayTotalShorts: 22,
//           //         homeShortsOnTarget: 15,
//           //         awayShortsOnTaget: 11,
//           //         homeCorners: 3,
//           //         awayCorners: 4,
//           //         homeFouls: 2,
//           //         awayFouls: 1,
//           //         homeYellowCards: 1,
//           //         awayYellowCards: 0,
//           //         homeRedCards: 0,
//           //         awayRedCards: 0,
//           //         youtubLink: "bla bla",
//           //         dateTimeToPlay: DateTime.utc(2020 ,7,22,22,30),),
