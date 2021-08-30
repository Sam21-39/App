import 'package:flutter/material.dart';
import 'package:flutter_assignment/UI/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

final bedRoomTopKey = GlobalKey<_BedRoomTopState>();

class BedRoomTop extends StatefulWidget {
  final bool position;
  final changePositionCallback;
  const BedRoomTop({
    Key key,
    this.position = false,
    this.changePositionCallback,
  }) : super(key: key);

  @override
  _BedRoomTopState createState() => _BedRoomTopState();
}

class _BedRoomTopState extends State<BedRoomTop> {
  double opacity = 1.0;
  Color color = UIColors.gold;
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
              child: Stack(
                children: [
                  Align(
                    alignment: FractionalOffset(0.0, 0.07),
                    child: InkWell(
                      child: SvgPicture.asset(
                        "assets/images/arrow-round-back.svg",
                        height: 18,
                      ),
                      onTap: () {
                        widget.changePositionCallback(false);
                      },
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset(
                      0.34,
                      0.01,
                    ),
                    child: Text(
                      "Bed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset(
                      0,
                      0.25,
                    ),
                    child: Text(
                      "Room",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset(
                      0,
                      0.48,
                    ),
                    child: Text(
                      "4 Lights",
                      style: TextStyle(
                        color: UIColors.gold,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedAlign(
            curve: Curves.linear,
            alignment: widget.position
                ? FractionalOffset(0.88, 0.0)
                : FractionalOffset(0.88, -0.04),
            duration: Duration(milliseconds: 500),
            child: Stack(
              alignment: FractionalOffset(0.5, 0.88),
              children: [
                SvgPicture.asset(
                  "assets/images/light_bulb.svg",
                  color: color.withOpacity(opacity),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    boxShadow: [
                      new BoxShadow(
                        color: color.withOpacity(opacity),
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AnimatedAlign(
            curve: Curves.linear,
            alignment: widget.position
                ? FractionalOffset(0.88, 0.0)
                : FractionalOffset(0.88, -0.04),
            duration: Duration(milliseconds: 500),
            child: SvgPicture.asset(
              "assets/images/light_holder.svg",
            ),
          ),
        ],
      ),
    );
  }
}
