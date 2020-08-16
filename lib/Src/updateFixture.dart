import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:provider/provider.dart';

import 'services/db.dart';
import 'widgets/statRow.dart';
import 'widgets/toastbar.dart';

class UpdateFixture extends StatefulWidget {
  final String docId;
  final String homeGoal;
  final String awayGoal;
  final String namesOfHomeScora;
  final String namesOfAwayScora;
  final String homePossession;
  final String awayPossession;
  final String homeTotalShorts;
  final String awayTotalShorts;
  final String homeShortsOnTarget;
  final String awayShortsOnTaget;
  final String homeCorners;
  final String awayCorners;
  final String homeFouls;
  final String awayFouls;
  final String homeYellowCards;
  final String awayYellowCards;
  final String homeRedCards;
  final String awayRedCards;
  final String youtubLink;

  const UpdateFixture(
      {Key key,
      this.docId,
      this.homeGoal,
      this.awayGoal,
      this.namesOfHomeScora,
      this.namesOfAwayScora,
      this.homePossession,
      this.awayPossession,
      this.homeTotalShorts,
      this.awayTotalShorts,
      this.homeShortsOnTarget,
      this.awayShortsOnTaget,
      this.homeCorners,
      this.awayCorners,
      this.homeFouls,
      this.awayFouls,
      this.homeYellowCards,
      this.awayYellowCards,
      this.homeRedCards,
      this.awayRedCards,
      this.youtubLink})
      : super(key: key);

  @override
  _UpdateFixtureState createState() => _UpdateFixtureState(
      docId,
      homeGoal,
      awayGoal,
      namesOfHomeScora,
      namesOfAwayScora,
      homePossession,
      awayPossession,
      homeTotalShorts,
      awayTotalShorts,
      homeShortsOnTarget,
      awayShortsOnTaget,
      homeCorners,
      awayCorners,
      homeFouls,
      awayFouls,
      homeYellowCards,
      awayYellowCards,
      homeRedCards,
      awayRedCards,
      youtubLink);
}

class _UpdateFixtureState extends State<UpdateFixture> {
  

  final String docId;
  final String homeGoal;
  final String awayGoal;
  final String namesOfHomeScora;
  final String namesOfAwayScora;
  final String homePossession;
  final String awayPossession;
  final String homeTotalShorts;
  final String awayTotalShorts;
  final String homeShortsOnTarget;
  final String awayShortsOnTaget;
  final String homeCorners;
  final String awayCorners;
  final String homeFouls;
  final String awayFouls;
  final String homeYellowCards;
  final String awayYellowCards;
  final String homeRedCards;
  final String awayRedCards;
  final String youtubLink;

  TextEditingController _docId;

  TextEditingController _homeGoal;
  TextEditingController _awayGoal;
  TextEditingController _namesOfHomeScora;
  TextEditingController _namesOfAwayScora;
  TextEditingController _homePossession;
  TextEditingController _awayPossession;
  TextEditingController _homeTotalShorts;
  TextEditingController _awayTotalShorts;
  TextEditingController _homeShortsOnTarget;
  TextEditingController _awayShortsOnTaget;
  TextEditingController _homeCorners;
  TextEditingController _awayCorners;
  TextEditingController _homeFouls;
  TextEditingController _awayFouls;
  TextEditingController _homeYellowCards;
  TextEditingController _awayYellowCards;
  TextEditingController _homeRedCards;
  TextEditingController _awayRedCards;
  TextEditingController _youtubLink;

  _UpdateFixtureState(
     
      this.docId,
      this.homeGoal,
      this.awayGoal,
      this.namesOfHomeScora,
      this.namesOfAwayScora,
      this.homePossession,
      this.awayPossession,
      this.homeTotalShorts,
      this.awayTotalShorts,
      this.homeShortsOnTarget,
      this.awayShortsOnTaget,
      this.homeCorners,
      this.awayCorners,
      this.homeFouls,
      this.awayFouls,
      this.homeYellowCards,
      this.awayYellowCards,
      this.homeRedCards,
      this.awayRedCards,
      this.youtubLink) {
    _docId = TextEditingController(text: docId  );
    _homeGoal = TextEditingController(text: homeGoal);
    _awayGoal = TextEditingController(text: awayGoal);
    _namesOfHomeScora = TextEditingController(text: namesOfHomeScora);
    _namesOfAwayScora = TextEditingController(text: namesOfAwayScora);
    _homePossession = TextEditingController(text: homePossession  );
    _awayPossession = TextEditingController(text: awayPossession );
    _homeTotalShorts = TextEditingController(text: homeTotalShorts);
    _awayTotalShorts = TextEditingController(text: awayTotalShorts  );
    _homeShortsOnTarget = TextEditingController(text: homeShortsOnTarget);
    _awayShortsOnTaget = TextEditingController(text: awayShortsOnTaget );
    _homeCorners = TextEditingController(text:  homeCorners  );
    _awayCorners = TextEditingController(text: awayCorners  );
    _homeFouls = TextEditingController(text:  homeFouls  );
    _awayFouls = TextEditingController(text: awayFouls  );
    _homeYellowCards = TextEditingController(text:  homeYellowCards );
    _awayYellowCards = TextEditingController(text: awayYellowCards  );
    _homeRedCards = TextEditingController(text: homeRedCards  );
    _awayRedCards = TextEditingController(text: awayRedCards );
    _youtubLink = TextEditingController(text:  youtubLink );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          StatRow(
            statHomeController: _homeGoal,
            statAwayController: _awayGoal,
            rowName: "Goals",
          ),
          StatRow(
            statHomeController: _namesOfHomeScora,
            statAwayController: _namesOfAwayScora,
            rowName: "Scora",
          ),
          StatRow(
            statHomeController: _homePossession,
            statAwayController: _awayPossession,
            rowName: "Possession",
          ),
          StatRow(
            statHomeController: _homeTotalShorts,
            statAwayController: _awayTotalShorts,
            rowName: "Total shorts",
          ),
          StatRow(
            statHomeController: _homeShortsOnTarget,
            statAwayController: _awayShortsOnTaget,
            rowName: "Shorts on Target",
          ),
          StatRow(
            statHomeController: _homeCorners,
            statAwayController: _awayCorners,
            rowName: "Corners",
          ),
          StatRow(
            statHomeController: _homeFouls,
            statAwayController: _awayFouls,
            rowName: "Fouls",
          ),
          StatRow(
            statHomeController: _homeYellowCards,
            statAwayController: _awayYellowCards,
            rowName: "Yellow Cards",
          ),
          StatRow(
            statHomeController: _homeRedCards,
            statAwayController: _awayRedCards,
            rowName: "Red Cards",
          ),
          TextField(
            controller: _youtubLink,
            decoration: InputDecoration(hintText: "youtube Link"),
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton(
            color: bluewe,
            onPressed: (){
            final update = Provider.of<Db>(context,listen: false);
            update.udateFixtures(
                    id: _docId.text,
                    homeGoals: int.parse(_homeGoal.text),
                    awayGoals: int.parse(_awayGoal.text ),
                    homeScora: _namesOfHomeScora.text,
                    awayScora: _namesOfAwayScora.text,
                    homePossession: int.parse(_homePossession.text),
                    awayPossession: int.parse(_awayPossession.text ),
                    homeTotalShorts: int.parse(_homeTotalShorts.text),
                    awayTotalShorts: int.parse(_awayTotalShorts.text),
                    awayShortsOnTarget: int.parse(_awayShortsOnTaget.text),
                    homeShortsOnTarget: int.parse(_homeShortsOnTarget.text),
                    homeCorners: int.parse(_homeCorners.text),
                    awayCorners: int.parse(_awayCorners.text),
                    homeFouls: int.parse(_homeFouls.text),
                    awayFouls: int.parse(_awayFouls.text),
                    homeYellowCards: int.parse(_homeYellowCards.text),
                    awayYellowCards: int.parse(_awayYellowCards.text),
                    homeRedCards: int.parse(_homeRedCards.text ),
                    awayRedCards: int.parse(_awayRedCards.text),
                    youtubeLink: _youtubLink.text,
                   
            ).then((_){
                    showModalBottomSheet(
                    context: context,
                     builder: (context)=>ToastBar(message: "Updates Fixtures",)
                     );
                    
                    _homePossession.clear();
                    _awayPossession.clear();
                    _homeTotalShorts.clear();
                    _awayTotalShorts.clear();
                    _homeShortsOnTarget.clear();
                    _awayShortsOnTaget.clear();
                    _homeCorners.clear();
                    _awayCorners.clear();
                    _homeFouls.clear();
                    _awayFouls.clear();
                    _homeYellowCards.clear();
                    _awayYellowCards.clear();
                    _homeRedCards.clear();
                    _awayRedCards.clear();
                    _youtubLink.clear();
                    
                  });

                },

            
            child: Text("Update"))

        ],
      )),
    );
  }
}
