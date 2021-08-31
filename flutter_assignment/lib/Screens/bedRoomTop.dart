import 'package:flutter/material.dart';
import 'package:flutter_assignment/Constants/constants.dart';
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
  bool selectedMain = false, selectedDesk = true, selectedBed = false;

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
          AnimatedAlign(
            curve: Curves.linear,
            alignment: widget.position
                ? FractionalOffset(0.18, 0.28)
                : FractionalOffset(0.88, 0.28),
            duration: Duration(milliseconds: 500),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(
                left: 32.0,
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedMain = !selectedMain;
                        selectedDesk = false;
                        selectedBed = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedMain ? UIColors.midNightBlue : Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            contentScrollMap["Main Light"],
                            color: selectedMain
                                ? Colors.white
                                : UIColors.midNightBlue,
                          ),
                          Text(
                            "Main Light",
                            style: TextStyle(
                              color: selectedMain
                                  ? Colors.white
                                  : UIColors.midNightBlue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.98,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedMain = false;
                        selectedDesk = !selectedDesk;
                        selectedBed = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedDesk ? UIColors.midNightBlue : Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            contentScrollMap["Desk Light"],
                            color: selectedDesk
                                ? Colors.white
                                : UIColors.midNightBlue,
                          ),
                          Text(
                            "Desk Light",
                            style: TextStyle(
                              color: selectedDesk
                                  ? Colors.white
                                  : UIColors.midNightBlue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.98,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedMain = false;
                        selectedDesk = false;
                        selectedBed = !selectedBed;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 60,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color:
                            selectedBed ? UIColors.midNightBlue : Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            contentScrollMap["Bed Light"],
                            color: selectedBed
                                ? Colors.white
                                : UIColors.midNightBlue,
                          ),
                          Text(
                            "Bed Light",
                            style: TextStyle(
                              color: selectedBed
                                  ? Colors.white
                                  : UIColors.midNightBlue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.98,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
