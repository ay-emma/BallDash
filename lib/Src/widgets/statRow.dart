import 'package:flutter/material.dart';

class StatRow extends StatefulWidget {
  final TextEditingController statHomeController;
   final TextEditingController statAwayController;
   final String rowName;

  const StatRow({Key key, this.statHomeController, this.statAwayController, this.rowName}) : super(key: key);

 
  @override
  _StatRowState createState() => _StatRowState( statHomeController, statAwayController, rowName  );
}

class _StatRowState extends State<StatRow> {
 final TextEditingController statHomeController;
   final TextEditingController statAwayController;
   final String rowName;

  _StatRowState(this.statHomeController, this.statAwayController, this.rowName);


  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
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
     ),
    );
  }
}
