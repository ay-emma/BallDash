import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';

import 'adminPortal.dart';
import 'services/db.dart';
import 'style.dart';
import 'widgets/matchFixture.dart';

class YerstadayMobile extends StatefulWidget {
  @override
  _YerstadayMobileState createState() => _YerstadayMobileState();
}

class _YerstadayMobileState extends State<YerstadayMobile> {
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
                Image.asset(
                  "images/barclays-premier-league.png",
                  width: 120,
                ),
                // SizedBox(
                //   height: 15,
                // ),
                // for the  width of List of matche fixtures
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Consumer<Db>(builder: (context, db, child) {
                    return StreamBuilder<QuerySnapshot>(
                      stream: db.fixturesYerstarday(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return LoadingIndicator(
                            indicatorType: Indicator.ballRotate,
                            color: bluewe,
                            );
                        }
                        return ListView(
                            primary: false,
                            shrinkWrap: true,
                            children: snapshot.data.documents
                                .map((DocumentSnapshot e) {
                              Timestamp nig = e.data["dateTime"];
                              DateTime vig =
                                  DateTime.fromMicrosecondsSinceEpoch(
                                      nig.microsecondsSinceEpoch);
                              print(e.data["dateTime"]);
                              print(vig);
                              
                                return Padding(
                                  padding: const EdgeInsets.only( bottom: 8  ),
                                  child: MatchFixture(
                                      homeName: e.data["homeName"],
                                      awayName: e.data["awayName"],
                                      homeIcon:e.data["homeIcon"],
                                      awayIcon: e.data["awayIcon"],
                                      homeGoal: e.data["homeGoals"],
                                      awayGoal: e.data["awayGoals"],
                                      namesOfHomeScora: e.data["homeScora"],
                                      namesOfAwayScora: e.data["awayScora"],
                                      homePossession: e.data["homePossession"],
                                      awayPossession: e.data["awayPossession"],
                                      homeTotalShorts: e.data["homeTotalShorts"],
                                      awayTotalShorts: e.data["awayTotalShorts"],
                                      homeShortsOnTarget: e.data["homeShortsOnTarget"],
                                      awayShortsOnTaget: e.data["awayShortsOnTarget"],
                                      homeCorners: e.data["homeCorners"],
                                      awayCorners: e.data["awayCorners"],
                                      homeFouls: e.data["homeFouls"],
                                      awayFouls: e.data["awayFouls"],
                                      homeYellowCards: e.data["homeYellowCards"],
                                      awayYellowCards: e.data["awayYellowCards"],
                                      homeRedCards: e.data["homeRedCards"],
                                      awayRedCards: e.data["awayRedCards"],
                                      dateTimeToPlay: vig,
                                      youtubLink: e.data["youtubeLink"],
                                     
                                      ),
                                );
                              
                            }).toList());
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AdminPortal()));
          }),
    );
  }
}
