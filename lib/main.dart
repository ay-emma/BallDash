import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Src/homePage.dart';
import 'Src/services/db.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Db>(create: (_) => Db()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Aycodino',
          theme: ThemeData(
            fontFamily: "Montserrat",
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage()),
    );
  }
}
