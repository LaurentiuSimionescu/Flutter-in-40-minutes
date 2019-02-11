import 'package:flutter/material.dart';

void showSnackBar(BuildContext buildContext, String message) {
  final scaffold = Scaffold.of(buildContext);
  scaffold.showSnackBar(SnackBar(
    content: Text(message),
    action:
        SnackBarAction(label: "HIDE", onPressed: scaffold.hideCurrentSnackBar),
  ));
}