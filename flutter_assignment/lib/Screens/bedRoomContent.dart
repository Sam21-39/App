import 'package:flutter/material.dart';
import 'package:flutter_assignment/Constants/constants.dart';
import 'package:flutter_assignment/Screens/bedRoomTop.dart';
import 'package:flutter_assignment/UI/ui.dart';
import 'package:flutter_svg/flutter_svg.dart';

final bedRoomKey = GlobalKey<_BedRoomContentState>();

class BedRoomContent extends StatefulWidget {
  const BedRoomContent({Key key}) : super(key: key);

  @override
  _BedRoomContentState createState() => _BedRoomContentState();
}

class _BedRoomContentState extends State<BedRoomContent> {
  double slideVal = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Intensity",
            style: TextStyle(
              color: UIColors.midNightBlue,
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.98,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/images/solution2.svg"),
              Flexible(
                child: Slider(
                  activeColor: UIColors.gold,
                  inactiveColor: UIColors.lightGray,
                  value: slideVal,
                  min: 0.35,
                  max: 1.0,
                  divisions: 5,
                  onChanged: (val) {
                    print(val);
                    setState(() {
                      slideVal = val;
                    });

                    bedRoomTopKey.currentState.setState(() {
                      bedRoomTopKey.currentState.opacity = slideVal;
                    });
                  },
                ),
              ),
              SvgPicture.asset("assets/images/solution.svg"),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Colors",
            style: TextStyle(
              color: UIColors.midNightBlue,
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.98,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            children: [
              for (var i = 0; i < colorList.length; i++)
                InkWell(
                  onTap: () {
                    bedRoomTopKey.currentState.setState(() {
                      bedRoomTopKey.currentState.color = colorList[i];
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8.0),
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: colorList[i],
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ),
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: SvgPicture.asset(
                  "assets/images/+.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Scences",
            style: TextStyle(
              color: UIColors.midNightBlue,
              fontSize: 24.0,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.98,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 160.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.4, 0.2),
                    end: FractionalOffset(1, 0.0),
                    colors: [
                      UIColors.lightSalmon,
                      UIColors.sandyBrown.withOpacity(0.75),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/solution1.svg",
                      color: Colors.white,
                    ),
                    Text(
                      "Birthday",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.4, 0.2),
                    end: FractionalOffset(1, 0.0),
                    colors: [
                      UIColors.mediumPurple,
                      UIColors.plum,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/solution1.svg",
                      color: Colors.white,
                    ),
                    Text(
                      "Party",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 160.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.4, 0.2),
                    end: FractionalOffset(1, 0.0),
                    colors: [
                      UIColors.skyBlue,
                      UIColors.skyBlue.withOpacity(0.75),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/solution1.svg",
                      color: Colors.white,
                    ),
                    Text(
                      "Relax",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 160.0,
                height: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.4, 0.2),
                    end: FractionalOffset(1, 0.0),
                    colors: [
                      UIColors.lightGreen,
                      UIColors.lightGreen.withOpacity(0.5),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/solution1.svg",
                      color: Colors.white,
                    ),
                    Text(
                      "Fun",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.98,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
