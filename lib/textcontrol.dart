import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeIndex;

  TextControl(this.changeIndex);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: Text('Change Text'),
      color: Colors.blue,
      onPressed: changeIndex,
    ));
  }
}
