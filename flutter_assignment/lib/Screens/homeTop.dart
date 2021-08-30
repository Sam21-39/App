import 'package:flutter/material.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({Key key}) : super(key: key);

  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: FractionalOffset(0.18, 0.12),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 200.0,
              child: Text(
                "Control Panel",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.98,
                ),
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.88, 0.1),
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 3.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: CircleAvatar(
                radius: 70.0,
                child: FlutterLogo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
