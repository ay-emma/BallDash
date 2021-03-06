import 'package:flutter/material.dart';
import 'package:goals_dash/Src/clubPage.dart';
import 'package:provider/provider.dart';

import 'fixtureUpdate.dart';
import 'fixturesPage.dart';
import 'leaguesPage.dart';
import 'playYoutube.dart';
import 'services/db.dart';

class AdminPortal extends StatefulWidget {
  AdminPortal({Key key}) : super(key: key);

  @override
  _AdminPortalState createState() => _AdminPortalState();
}

class _AdminPortalState extends State<AdminPortal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LeaguesPage()));
              },
              child: Text("Leagues"),
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClubsPage()));
                final data = Provider.of<Db>(context, listen: false);
                data.leagueList();
              },
              child: Text("Clubs"),
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FixturesPage()));
                final data = Provider.of<Db>(context, listen: false);
                data.getClubsList();
              },
              child: Text("Fixtures"),
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FixtureUpdate()));
              },
              child: Text("Updates"),
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YoutubeVideo(
                      youtubeLink: "https://youtu.be/X1b3C2081-Q" + "?t=2",
                      whosPlaying: "baca vs bayarn",
                      // https://youtu.be/X1b3C2081-Q
                    ),
                  ),
                );
              },
              child: Text("Youtube "),
            ),
          ],
        ),
      ),
    );
  }
}

// <!-- The core Firebase JS SDK is always required and must be listed first -->
// <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js"></script>

// <!-- TODO: Add SDKs for Firebase products that you want to use
//      https://firebase.google.com/docs/web/setup#available-libraries -->
// <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-analytics.js"></script>

// <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-auth.js"></script>
// <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-firestore.js"></script>
// <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-storage.js"></script>

// <script>
//   // Your web app's Firebase configuration
//   var firebaseConfig = {
//     apiKey: "AIzaSyC33ZueWtWCDF6hBrqeVmEdhFwY3eZLciM",
//     authDomain: "scoreline-61b57.firebaseapp.com",
//     databaseURL: "https://scoreline-61b57.firebaseio.com",
//     projectId: "scoreline-61b57",
//     storageBucket: "scoreline-61b57.appspot.com",
//     messagingSenderId: "503144510955",
//     appId: "1:503144510955:web:ea77cc340fcf3c3e4295ae",
//     measurementId: "G-5EW1TPCVF5"
//   };
//   // Initialize Firebase
//   firebase.initializeApp(firebaseConfig);
//   firebase.analytics();
// </script>
