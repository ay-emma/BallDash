import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';

class ToastBar extends StatelessWidget {
  final String message;

  const ToastBar({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bodybg,
      height: 200,
      child: Center(
        child: Text(
          message,
          style: header3,
          )
          ,
      ),
    );
  }
}
