import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/widgets/toastbar.dart';
import 'package:provider/provider.dart';

import 'services/db.dart';

class ClubsPage extends StatefulWidget {
  @override
  _ClubsPageState createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _imgController = TextEditingController();
  //TextEditingController _nameController = TextEditingController();
  String _chosenVal = "League Names";

  var leaguedata;

  @override
  void didChangeDependencies() {
    final data = Provider.of<Db>(context, listen: false);
    leaguedata = data.leaguenames;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("create/Update clubs")),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  _textField(_nameController, "Clubs Names"),
                  DropdownButton<String>(
                      value: _chosenVal,
                      underline: Container(),
                      items: <String>["League Names", ...leaguedata]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String value) {
                        setState(() {
                          _chosenVal = value;
                        });
                      }),
                  _textField(_imgController, "Clubs image url"),
                  SizedBox(
                    height: 10,
                  ),
                  Builder(
                    builder: (context) => FlatButton(
                      color: Colors.blue,
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        final dbFunc = Provider.of<Db>(context, listen: false);
                        dbFunc
                            .clubsInsert(
                          name: _nameController.text,
                          league: _chosenVal,
                          image: _imgController.text,
                        )
                            .then({
                          _nameController.clear(),
                          _imgController.clear(),
                          showModalBottomSheet(
                              context: (context),
                              builder: (context) =>
                                  ToastBar(message: "Club has been added")),
                        });
                      },
                      child: Text(" Add club "),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Consumer<Db>(
              builder: (context, db, child) => StreamBuilder<QuerySnapshot>(
                  stream: db.getClubs(),
                  builder: (context, snap) {
                    if (!snap.hasData) {
                      return Container(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return _clubsList(
                      context,
                      snap.data,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _clubsList(
    context,
    QuerySnapshot snapshot,
  ) {
    //final dajta = Club.fromSnapshot(snapshot.documents[8]);
    // ListView.builder(
    //           shrinkWrap: true,
    //     itemCount: snapshot.documents.length,
    //     itemBuilder: (context, i ){
    //     //final data = Club.fromSnapshot(snapshot.documents[i].documentID  );
    //     print(snapshot.documents[i].documentID);
    //     return ListTile(
    //         title: Text(snapshot.documents[i].documentID),
    //     );
    //     }
    //     ),

    return Expanded(
      child: FractionallySizedBox(
        heightFactor: 0.9,
        child: ListView.builder(
            // shrinkWrap: true,
            itemCount: snapshot.documents.length,
            itemBuilder: (context, i) {
              //final data = Club.fromSnapshot(snapshot.documents[i].documentID  );
              print(snapshot.documents[i].documentID);
              return ListTile(
                title: Text(snapshot.documents[i].documentID),
              );
            }),
      ),
    );
  }

  Widget _textField(TextEditingController control, String hinter) {
    return TextField(
      controller: control,
      decoration: InputDecoration(
        hintText: hinter,
      ),
    );
  }
}
