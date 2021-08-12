import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  // const AdaptiveFlatButton({ Key? key }) : super(key: key);
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text,this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : ElevatedButton(
            onPressed: handler,
            child: Text(text),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColorLight),
            ),
          );
  }
}
