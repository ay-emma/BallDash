// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:goals_dash/Src/models/clubs.dart';
// import 'package:goals_dash/Src/models/leagues.dart';

class Fixture {
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

  Fixture(
      {this.homeName,
      this.awayName,
      this.homeIcon,
      this.awayIcon,
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
      this.dateTimeToPlay,
      this.youtubLink});
}

// class SubCollection {
//   final int goal;
//   final String nameScora;
//   final int possesion;
//   final int totalShort;
//   final int shortOnTarget;
//   final int corners;
//   final int fouls;
//   final int yellowCards;
//   final int redCards;
// }

// <!-- The core Firebase JS SDK is always required and must be listed first -->
//   <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-app.js"></script>

//   <!-- TODO: Add SDKs for Firebase products that you want to use
//        https://firebase.google.com/docs/web/setup#available-libraries -->
//   <script src="https://www.gstatic.com/firebasejs/7.17.1/firebase-analytics.js"></script>

//   <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-auth.js"></script>
//   <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-firestore.js"></script>
//   <script src="https://www.gstatic.com/firebasejs/7.5.1/firebase-storage.js"></script>

//   <script>
//     // Your web app's Firebase configuration
//     var firebaseConfig = {
//       apiKey: "AIzaSyC33ZueWtWCDF6hBrqeVmEdhFwY3eZLciM",
//       authDomain: "scoreline-61b57.firebaseapp.com",
//       databaseURL: "https://scoreline-61b57.firebaseio.com",
//       projectId: "scoreline-61b57",
//       storageBucket: "scoreline-61b57.appspot.com",
//       messagingSenderId: "503144510955",
//       appId: "1:503144510955:web:ea77cc340fcf3c3e4295ae",
//       measurementId: "G-5EW1TPCVF5"
//     };
//     // Initialize Firebase
//     firebase.initializeApp(firebaseConfig);
//     firebase.analytics();
//   </script>
