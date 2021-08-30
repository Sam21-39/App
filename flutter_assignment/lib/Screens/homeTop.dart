import 'package:flutter/material.dart';
import 'package:flutter_assignment/UI/ui.dart';

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
          Stack(
            children: [
              Align(
                alignment: FractionalOffset(0.88, 0.1),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 3.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: CircleAvatar(
                    radius: 50.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset("assets/images/Sumit.jpg"),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset(0.89, 0.1),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: UIColors.lightSalmon,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
