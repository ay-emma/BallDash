import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:goals_dash/Src/widgets/toastbar.dart';
import 'package:provider/provider.dart';

import 'services/db.dart';
import 'widgets/statRow.dart';

class FixturesPage extends StatefulWidget {
  @override
  _FixturesPageState createState() => _FixturesPageState();
}

class _FixturesPageState extends State<FixturesPage> {
  //var dataClubs;
  String _homeChosenVal = "Club Names";
  String _awayChosenVal = "Club Names";

  TextEditingController _homeIcon = TextEditingController();
  TextEditingController _awayIcon = TextEditingController();

  TextEditingController _homeGoals = TextEditingController();
  TextEditingController _awayGoals = TextEditingController();

  TextEditingController _homeScora = TextEditingController();
  TextEditingController _awayScora = TextEditingController();

  TextEditingController _homePossession = TextEditingController();
  TextEditingController _awayPossession = TextEditingController();

  TextEditingController _homeTotalShorts = TextEditingController();
  TextEditingController _awayTotalShorts = TextEditingController();

  TextEditingController _homeShortsOnTarget = TextEditingController();
  TextEditingController _awayShortsOnTarget = TextEditingController();

  TextEditingController _homeCorners = TextEditingController();
  TextEditingController _awayCorners = TextEditingController();

  TextEditingController _homeFouls = TextEditingController();
  TextEditingController _awayFouls = TextEditingController();

  TextEditingController _homeYellowCards = TextEditingController();
  TextEditingController _awayYellowCards = TextEditingController();

  TextEditingController _homeRedCards = TextEditingController();
  TextEditingController _awayRedCards = TextEditingController();

  TextEditingController _youtubeLink = TextEditingController();

  // this date time will not be saved
  TextEditingController _dateTime = TextEditingController();
  DateTime _dateTimeVal;


  List clubList = [];

  @override
  void didChangeDependencies() {
    final data = Provider.of<Db>(context);
    clubList = data.clubList;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print(clubList);
    return Scaffold(
      appBar: AppBar(
        title: Text('Add update Fixtures'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   DropdownButton<String>(
                      value: _homeChosenVal,
                      underline: Container(),
                      items: <String>["Club Names", ...clubList ].map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),            
                       onChanged: (String value){
                         setState(() {
                           _homeChosenVal = value;
                         });
                       }
                       ),
                  ///Drop
                  Text("Club Name"),

                  DropdownButton<String>(
                      value: _awayChosenVal,
                      underline: Container(),
                      items: <String>["Club Names", ...clubList ].map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),            
                       onChanged: (String value){
                         setState(() {
                           _awayChosenVal = value;
                         });
                       }
                       ),
                ],
              ),
              //Pics
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.38,
                    child: TextField(
                    controller: _homeIcon,
                    ),
                  ),
                   Container(
                     child: Text("pic names"),
                     
                   ), 
                  Container(
                  width: MediaQuery.of(context).size.width * 0.38,
                   child: TextField(
                    controller: _awayIcon,
                    ),
                  ),
                  ],
              ),
              //goals
             _statsRow( statHomeController: _homeGoals, statAwayController: _awayGoals, rowName: "Goals"   ),

              // names of players
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.38,
                    child: TextField(
                    controller: _homeScora,
                    ),
                  ),
                   Container(
                     child: Text("scoras names"),
                   ), 
                  Container(
                  width: MediaQuery.of(context).size.width * 0.38,
                   child: TextField(
                    controller: _awayScora,
                    ),
                  ),
                  ],
              ),
              // ===> Statistics <===
           StatRow(statHomeController: _homePossession, statAwayController: _awayPossession, rowName: "Possession"  ),
           StatRow(statHomeController: _homeTotalShorts, statAwayController: _awayTotalShorts, rowName: "TotalShort"  ),
           StatRow(statHomeController: _homeShortsOnTarget, statAwayController: _awayShortsOnTarget, rowName: "Shorts on Targe"  ),
           StatRow(statHomeController: _homeCorners, statAwayController: _awayCorners, rowName: "Corners"  ),
           StatRow(statHomeController: _homeFouls, statAwayController: _awayFouls, rowName: "Fouls"  ),
           StatRow(statHomeController: _homeYellowCards, statAwayController: _awayYellowCards, rowName: "Yellow Cards"  ),
           StatRow(statHomeController: _homeRedCards, statAwayController: _awayRedCards, rowName: "Red Cards"  ),
           TextField( 
             controller: _youtubeLink,
             decoration: InputDecoration(
               hintText: "Youtube Link",
             ),
             ),
            DateTimePicker(
              type: DateTimePickerType.dateTime,
              dateMask: 'd MMMM, yyyy - HH:mm',
              controller: _dateTime,
              firstDate: DateTime(2020),
              lastDate: DateTime(2023),
              dateLabelText: "Date/Time to play",
              // onSaved: (val) => setState((){
                
              // } ),
            ),
            SizedBox(
              height: 15,
            ),

            Builder(
              builder: (context) =>FlatButton(
                color: bluewe,
                onPressed: (){

                  print( _dateTime.text );
                  print("something");
                  final put = Provider.of<Db>(context,listen: false);

                  put.addFixtures(
                    homeName: _homeChosenVal,
                    awayName: _awayChosenVal,
                    homeIcon: _homeIcon.text,
                    awayIcon: _awayIcon.text,
                    homeGoals: int.parse(_homeGoals.text),
                    awayGoals: int.parse(_awayGoals.text ),
                    homeScora: _homeScora.text,
                    awayScora: _awayScora.text,
                    homePossession: int.parse(_homePossession.text),
                    awayPossession: int.parse(_awayPossession.text ),
                    homeTotalShorts: int.parse(_homeTotalShorts.text),
                    awayTotalShorts: int.parse(_awayTotalShorts.text),
                    awayShortsOnTarget: int.parse(_awayShortsOnTarget.text),
                    homeShortsOnTarget: int.parse(_homeShortsOnTarget.text),
                    homeCorners: int.parse(_homeCorners.text),
                    awayCorners: int.parse(_awayCorners.text),
                    homeFouls: int.parse(_homeFouls.text),
                    awayFouls: int.parse(_awayFouls.text),
                    homeYellowCards: int.parse(_homeYellowCards.text),
                    awayYellowCards: int.parse(_awayYellowCards.text),
                    homeRedCards: int.parse(_homeRedCards.text ),
                    awayRedCards: int.parse(_awayRedCards.text),
                    youtubeLink: _youtubeLink.text,
                    dateTime: DateTime.parse(_dateTime.text),
                  ).then((_){
                    showModalBottomSheet(
                    context: context,
                     builder: (context)=>ToastBar(message: "Added Fixtures",)
                     );
                    _homeIcon.clear();
                    _awayIcon.clear();
                    _homeGoals.clear();
                    _awayGoals.clear();
                    _homeScora.clear();
                    _awayScora.clear();
                    _homePossession.clear();
                    _awayPossession.clear();
                    _homeTotalShorts.clear();
                    _awayTotalShorts.clear();
                    _homeShortsOnTarget.clear();
                    _awayShortsOnTarget.clear();
                    _homeCorners.clear();
                    _awayCorners.clear();
                    _homeFouls.clear();
                    _awayFouls.clear();
                    _awayIcon.clear();
                    _homeYellowCards.clear();
                    _awayYellowCards.clear();
                    _homeRedCards.clear();
                    _awayRedCards.clear();
                    _youtubeLink.clear();
                    _dateTime.clear();
                  });

                },
               child: Text("Done"),
               ),
            ),

            ],
          ),
        ),
      ),
    );
  }

 Widget _statsRow({TextEditingController statHomeController,TextEditingController statAwayController, String rowName }){
   return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: TextField(
                    
                    controller: statHomeController,
                    keyboardType: TextInputType.number,
                    ),
                  ),
                   Container(
                     child: Text(rowName),
                   ), 
                  Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                   child: TextField(
                    controller: statAwayController,
                    keyboardType: TextInputType.number,
                    ),
                  ),

                ],
     );
 } 
}
