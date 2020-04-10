import 'package:flutter/material.dart';


class Phrase extends StatelessWidget {
  final String frase;

  Phrase(this.frase);
  
  @override
  Widget build(BuildContext context) {
    return Text(frase);
  }
}