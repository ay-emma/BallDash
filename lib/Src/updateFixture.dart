import 'package:flutter/material.dart';

import 'widgets/statRow.dart';

class UpdateFixture extends StatefulWidget {
  final String docId;
  
  const UpdateFixture({Key key, this.docId}) : super(key: key);

  @override
  _UpdateFixtureState createState() => _UpdateFixtureState(docId);
}

class _UpdateFixtureState extends State<UpdateFixture> {
  final String data;

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


  _UpdateFixtureState(this.data){
      _docId = TextEditingController( text: data  );
      _homeGoal =  TextEditingController (text: data   );
      _awayGoal =  TextEditingController (text: data   );
      _namesOfHomeScora =  TextEditingController (text: data   );
      _namesOfAwayScora =  TextEditingController (text: data   );
      _homePossession =  TextEditingController (text: data   );
      _awayPossession =  TextEditingController (text: data   );
      _homeTotalShorts =  TextEditingController (text: data   );
      _awayTotalShorts =  TextEditingController (text: data   );
      _homeShortsOnTarget =  TextEditingController (text: data   );
      _awayShortsOnTaget =  TextEditingController (text: data   );
      _homeCorners =  TextEditingController (text: data   );
      _awayCorners =  TextEditingController (text: data   );
      _homeFouls =  TextEditingController (text: data   );
      _awayFouls =  TextEditingController (text: data   );
      _homeYellowCards =  TextEditingController (text: data   );
      _awayYellowCards =  TextEditingController (text: data   );
      _homeRedCards =  TextEditingController (text: data );
      _awayRedCards =  TextEditingController (text: data ); 
      _youtubLink =  TextEditingController (text: data );






  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Column(
          children: [
            StatRow(
              statHomeController: _homeGoal, statAwayController: _awayGoal, rowName: "Goals",
            ),
            StatRow(
              statHomeController: _namesOfHomeScora, statAwayController: _namesOfAwayScora, rowName: "Scora",
            ),
            StatRow(
              statHomeController: _homePossession, statAwayController: _awayPossession, rowName: "Possession",
            ),
            StatRow(
              statHomeController: _homeTotalShorts, statAwayController: _awayTotalShorts, rowName: "Total shorts",
            ),
             StatRow(
              statHomeController: _homeShortsOnTarget, statAwayController: _awayShortsOnTaget, rowName: "Total shorts",
            ),
            StatRow(
              statHomeController: _homeCorners, statAwayController: _awayCorners, rowName: "Corners",
            ),
            StatRow(
              statHomeController: _homeFouls, statAwayController: _awayFouls, rowName: "Fouls",
            ),
             StatRow(
              statHomeController: _homeYellowCards, statAwayController: _awayYellowCards, rowName: "Yellow Cards",
            ),
            StatRow(
              statHomeController: _homeRedCards, statAwayController: _awayRedCards, rowName: "Red Cards",
            ),
            TextField(
              controller: _youtubLink,
              decoration: InputDecoration(
                hintText: "youtube Link"
              ),
            ),
          ],
        )
      ),
    );
  }
}