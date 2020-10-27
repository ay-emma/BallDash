import 'package:flutter/material.dart';
import 'package:goals_dash/Src/playYoutube.dart';

import '../style.dart';
import 'epansionTile.dart';

class MatchFixture extends StatefulWidget {
  const MatchFixture({
    Key key,
    @required this.homeName,
    @required this.awayName,
    @required this.homeIcon,
    @required this.awayIcon,
    @required this.homeGoal,
    @required this.awayGoal,
    @required this.namesOfHomeScora,
    @required this.namesOfAwayScora,
    @required this.homePossession,
    @required this.awayPossession,
    @required this.homeTotalShorts,
    @required this.awayTotalShorts,
    @required this.homeShortsOnTarget,
    @required this.awayShortsOnTaget,
    @required this.homeCorners,
    @required this.awayCorners,
    @required this.homeFouls,
    @required this.awayFouls,
    @required this.homeYellowCards,
    @required this.awayYellowCards,
    @required this.homeRedCards,
    @required this.awayRedCards,
    @required this.dateTimeToPlay,
    @required this.youtubLink,
  }) : super(key: key);

  final String homeName;
  final String awayName;
  final String homeIcon;
  final String awayIcon;
  final int homeGoal;
  final int awayGoal;
  final String namesOfHomeScora;
  final String namesOfAwayScora;
  final int homePossession;
  final int awayPossession;
  final int homeTotalShorts;
  final int awayTotalShorts;
  final int homeShortsOnTarget;
  final int awayShortsOnTaget;
  final int homeCorners;
  final int awayCorners;
  final int homeFouls;
  final int awayFouls;
  final int homeYellowCards;
  final int awayYellowCards;
  final int homeRedCards;
  final int awayRedCards;
  final DateTime dateTimeToPlay;
  final String youtubLink;

  @override
  _MatchFixtureState createState() => _MatchFixtureState();
}

class _MatchFixtureState extends State<MatchFixture> {
  @override
  Widget build(BuildContext context) {
    //int  timeToPlay = int.parse(dateTimeToPlay.toIso8601String());

    var dateNow = DateTime.now();

    String dateOrGoals() {
      if (dateNow.isBefore(widget.dateTimeToPlay)) {
        print("the matche has not been played Feture");
        return widget.dateTimeToPlay.toString().substring(10, 16);
        //"$homeGoal-" + "$awayGoal";
      } else if (dateNow.compareTo(widget.dateTimeToPlay) == 0) {
        print("it the same time");
        return widget.dateTimeToPlay.timeZoneName;
      } else if (dateNow.isAfter(widget.dateTimeToPlay)) {
        print("it has beenss played");
        return "${widget.homeGoal}-" + "${widget.awayGoal}";
      } else {
        return "!working";
      }
    }

    List<Widget> goalsScoraHome() {
      List<String> names = widget.namesOfHomeScora.split(" ");
      List<Widget> namesWid = [];
      for (var i in names) {
        namesWid.add(
          Container(
            child: Text(i, textAlign: TextAlign.center, style: chipsmoblie),
          ),
        );
      }
      return namesWid;
    }

    // chips
    List<Widget> goalsScoraAway() {
      List<String> names = widget.namesOfAwayScora.split(" ");
      List<Widget> namesWid = [];
      for (var i in names) {
        namesWid.add(
          Container(
            child: Text(i, textAlign: TextAlign.center, style: chipsmoblie),
          ),
        );
      }
      return namesWid;
    }

    return Column(
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
              tilePadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      // <=== Home ===>

                      width: MediaQuery.of(context).size.width * 0.23,
                      child: Text(widget.homeName,
                          textAlign: TextAlign.right,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: header4mobile)),
                  FadeInImage.assetNetwork(
                    placeholder: "assets/images/football.png",
                    image: widget.homeIcon,
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    dateOrGoals(),
                    // date > dateTimeToPlay ?"$homeGoal-$awayGoal" : dateTimeToPlay.
                    style: scoresMobile,
                  ),
                  //<=== Aways ===>
                  FadeInImage.assetNetwork(
                    placeholder: "assets/images/football.png",
                    image: widget.awayIcon,
                    height: 25,
                    width: 25,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    child: Text(
                      widget.awayName,
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
                        padding: const EdgeInsets.only(left: 15),
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
                        padding: const EdgeInsets.only(right: 15),
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
                          context: context,
                          homePnt: widget.homePossession,
                          awayPnt: widget.awayPossession,
                          pntName: "Possession"),
                      pointsRow(
                          context: context,
                          homePnt: widget.homeTotalShorts,
                          awayPnt: widget.awayTotalShorts,
                          pntName: "Total Shorts"),
                      pointsRow(
                          context: context,
                          homePnt: widget.homeShortsOnTarget,
                          awayPnt: widget.awayShortsOnTaget,
                          pntName: "Shorts on Targets"),
                      pointsRow(
                          context: context,
                          homePnt: widget.homeCorners,
                          awayPnt: widget.awayCorners,
                          pntName: "Corners"),
                      pointsRow(
                          context: context,
                          homePnt: widget.homeFouls,
                          awayPnt: widget.awayFouls,
                          pntName: "Fouls"),
                      pointsRow(
                          context: context,
                          homePnt: widget.homeYellowCards,
                          awayPnt: widget.awayYellowCards,
                          pntName: "Yellow Cards"),
                      pointsRow(
                        context: context,
                        homePnt: widget.homeRedCards,
                        awayPnt: widget.awayRedCards,
                        pntName: "Red Cards",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: FlatButton(
                            onPressed: () {
                              print("my link" + widget.youtubLink);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  // #######  this is were it was added
                                  builder: (context) => YoutubeVideo(
                                    youtubeLink: widget.youtubLink + "?t=2",
                                    //  "https://youtu.be/X1b3C2081-Q" + "?t=2",
                                    //lkd
                                    whosPlaying: widget.homeName +
                                        " vs " +
                                        widget.awayName,
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "watch youtube highlights",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),),
                      ),
                    ],
                  ),
                )
              ],),
        ),
      ],
    );
  }
}

Widget pointsRowPercent(
    {int homePnt, int awayPnt, String pntName, BuildContext context}) {
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
              width: (MediaQuery.of(context).size.width * 0.22) * homePercent(),
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
              width: (MediaQuery.of(context).size.width * 0.22) * awayPercent(),
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
          "$awayPnt" + "%",
          style: ratingmobile,
        ),
      ),
    ],
  );
}

Widget pointsRow(
    {int homePnt, int awayPnt, String pntName, BuildContext context}) {
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
              width: (MediaQuery.of(context).size.width * 0.22) * homePercent(),
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
              width: (MediaQuery.of(context).size.width * 0.22) * awayPercent(),
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
