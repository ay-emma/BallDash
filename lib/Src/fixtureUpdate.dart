import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/updateFixture.dart';
import 'package:provider/provider.dart';

import 'services/db.dart';

class FixtureUpdate extends StatefulWidget {
  @override
  _FixtureUpdateState createState() => _FixtureUpdateState();
}

class _FixtureUpdateState extends State<FixtureUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("update Fixtures")),
      body: Container(
        child: Consumer<Db>(builder: (context, db, child) {
          return StreamBuilder<QuerySnapshot>(
            stream: db.fixturesToday(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container(
                    height: 50, width: 50, child: CircularProgressIndicator());
              }
              return ListView(
                children:  snapshot.data.documents.map((e){
                  return InkWell(
                    onTap:(){
                      Navigator.push(context, 
                     MaterialPageRoute(builder: (context)=> UpdateFixture(docId: e.documentID,) ),);
                    }, 
                       child: ListTile(
                      title: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.data["homeName"]
                          ),
                          Text(
                            e.data["awayName"]
                          ),
                         
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e.data["homeGoals"].toString(),
                          ),
                          Text(
                            e.data["awayGoals"].toString(),
                          ),
                         
                        ],
                      ),
                    ),
                  );
                }).toList(),

              );
            },
          );
        }),
      ),
    );
  }
}
