import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';
import 'package:goals_dash/Src/widgets/toastbar.dart';
import 'package:provider/provider.dart';

import 'services/db.dart';

class FixturesPage extends StatefulWidget {
  @override
  _FixturesPageState createState() => _FixturesPageState();
}

class _FixturesPageState extends State<FixturesPage> {
  //var dataClubs;
  String _homeChosenVal = "Club Names";
  String _awayChosenVal = "Club Names";

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
        title: Text('Add Fixtures'),
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
              
              //goals
             
              // names of players
              
              // ===> Statistics <===
          
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
                   
                  
                    dateTime: DateTime.parse(_dateTime.text),
                  ).then((_){
                    showModalBottomSheet(
                    context: context,
                     builder: (context)=>ToastBar(message: "Added Fixtures")
                     );
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

}
