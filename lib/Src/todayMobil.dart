import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:provider/provider.dart';

import 'package:loading_indicator/loading_indicator.dart';

import 'adminPortal.dart';
import 'services/db.dart';
import 'widgets/matchFixture.dart';

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
                Row(
                  children: [
                    Text(
                      "UEFA",
                      style: header3,
                    ),
                    FadeInImage.assetNetwork(
                      placeholder: "assets/images/football.png",
                      image:
                          "https://firebasestorage.googleapis.com/v0/b/scoreline-61b57.appspot.com/o/images%2Fpngkit_champions-png_3689593.png?alt=media&token=081fb844-1b7f-4aa6-b012-13d53a57685a",
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 15,
                // ),
                // https://firebasestorage.googleapis.com/v0/b/scoreline-61b57.appspot.com/o/images%2FPngItem_1249076.png?alt=media&token=4a6c9083-91c0-44e5-8b26-f06c4fae1739
                // for the  width of List of matche fixtures
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Consumer<Db>(builder: (context, db, child) {
                    return StreamBuilder<QuerySnapshot>(
                      stream: db.fixturesToday(),
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
                                padding: const EdgeInsets.only(bottom: 8),
                                child: MatchFixture(
                                  homeName: e.data["homeName"],
                                  awayName: e.data["awayName"],
                                  homeIcon: e.data["homeIcon"],
                                  awayIcon: e.data["awayIcon"],
                                  homeGoal: e.data["homeGoals"],
                                  awayGoal: e.data["awayGoals"],
                                  namesOfHomeScora: e.data["homeScora"],
                                  namesOfAwayScora: e.data["awayScora"],
                                  homePossession: e.data["homePossession"],
                                  awayPossession: e.data["awayPossession"],
                                  homeTotalShorts: e.data["homeTotalShorts"],
                                  awayTotalShorts: e.data["awayTotalShorts"],
                                  homeShortsOnTarget:
                                      e.data["homeShortsOnTarget"],
                                  awayShortsOnTaget:
                                      e.data["awayShortsOnTarget"],
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
