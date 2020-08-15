import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/models/leagues.dart';
import 'package:goals_dash/Src/widgets/toastbar.dart';

class LeaguesPage extends StatefulWidget {
  @override
  _LeaguesPageState createState() => _LeaguesPageState();
}

class _LeaguesPageState extends State<LeaguesPage> {
  
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Add/Update Leagues name"),),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: 300,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Enter a new league Name"
                ),
              ),
            ),
            Builder(
              builder: (context)=> FlatButton(
                color: Colors.blueAccent,
                onPressed: (){

                  Firestore.instance.collection("leagues").document("leagues").updateData(
                  {
                   "leagues" : FieldValue.arrayUnion( [
                      _controller.text
                    ] )
                  }
                    ).then((_) {
                      _controller.clear();
                      showModalBottomSheet(
                        context: (context),
                         builder: (context) => ToastBar(message: "Sucessfully added league",    )
                         );
                    });
                  
                  
                },
                 child: Text("Add league"),
                 ),
            ),
            SizedBox( height: 15, ),
           
            StreamBuilder<DocumentSnapshot>(
            stream: Firestore.instance.collection("leagues").document("leagues").snapshots(),
            builder: (context,  snapshot) {
              if(!snapshot.hasData){
                return Container(
                  // height: 90,
                  // width: 90,
                  child: CircularProgressIndicator()
                );
              }
              return _leaguesList(context, snapshot.data );
            }  ),
          ],
        ),
     ),
    );
  }

  Widget _leaguesList( context, DocumentSnapshot snapshot ) {
    final data = League.fromSnapshot(snapshot);
        return Expanded(
                  child: FractionallySizedBox(
                    heightFactor: 0.9,
                    child: ListView.builder(
            itemCount: data.league.length,
            itemBuilder: (context, i){
            return ListTile(
              title: Text(data.league[i].toString()),
            );
          }),
                  ),
        );
     }
}