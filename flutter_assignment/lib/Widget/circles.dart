import 'package:flutter/material.dart';
import 'package:flutter_assignment/UI/ui.dart';

class Circles extends StatelessWidget {
  const Circles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 220.0,
      decoration: BoxDecoration(
        color: UIColors.accent,
        borderRadius: BorderRadius.circular(120.0),
      ),
    );
  }
}
