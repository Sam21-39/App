import 'package:flutter/material.dart';
import 'package:flutter_assignment/Constants/constants.dart';
import 'package:flutter_assignment/UI/ui.dart';
import 'package:flutter_svg/svg.dart';

class HomeContent extends StatefulWidget {
  final onChangeCallback;
  const HomeContent({
    Key key,
    this.onChangeCallback,
  }) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        spacing: 10.0,
        runSpacing: 20.0,
        children: contentMap.entries.map((e) {
          return InkWell(
            onTap: () {
              widget.onChangeCallback(true);
            },
            child: Container(
              height: 200,
              width: 160,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.1, 0.1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(imageMap[e.key]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.key,
                        style: TextStyle(
                          color: UIColors.darkSlateGrey,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.98,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        e.value,
                        style: TextStyle(
                          color: UIColors.sandyBrown,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.98,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
