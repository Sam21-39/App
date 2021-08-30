import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/Screens/bedRoomContent.dart';
import 'package:flutter_assignment/Screens/bedRoomTop.dart';
import 'package:flutter_assignment/Screens/homeTop.dart';
import 'package:flutter_assignment/UI/ui.dart';
import 'package:flutter_assignment/Widget/circles.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool posChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: UIColors.primary,
        child: Stack(
          children: [
            // 1st circle
            AnimatedAlign(
              curve: Curves.linear,
              duration: Duration(
                milliseconds: 300,
              ),
              alignment: posChange
                  ? FractionalOffset(-0.6, 0.1)
                  : FractionalOffset(-0.4, -0.1),
              child: Circles(),
            ),

            // 2nd Circle
            AnimatedAlign(
              curve: Curves.linear,
              duration: Duration(
                milliseconds: 300,
              ),
              alignment: posChange
                  ? FractionalOffset(0.7, 0.38)
                  : FractionalOffset(0.22, 0.35),
              child: Circles(),
            ),

            // 3rd Circle
            AnimatedAlign(
              curve: Curves.linear,
              duration: Duration(
                milliseconds: 300,
              ),
              alignment: posChange
                  ? FractionalOffset(1.5, -0.1)
                  : FractionalOffset(1.7, 0.12),
              child: Circles(),
            ),

            // animated drawer
            AnimatedContainer(
              curve: Curves.linear,
              duration: Duration(
                milliseconds: 300,
              ),
              alignment: posChange
                  ? FractionalOffset(0, 1.9)
                  : FractionalOffset(0, 1.4),
              width: double.infinity,
              height: double.infinity,
              child: Container(
                child: InkWell(
                  onTap: () => changePositionCallback(true),
                  child: SingleChildScrollView(
                    child: posChange
                        ? BedRoomContent(key: bedRoomKey)
                        : Container(),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.72,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: UIColors.secondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
              ),
            ),

            //Top Panels

            AnimatedOpacity(
              opacity: posChange ? 0 : 1,
              duration: Duration(milliseconds: 300),
              child: HomeTop(),
            ),
            AnimatedOpacity(
              opacity: posChange ? 1 : 0,
              duration: Duration(milliseconds: 300),
              child: BedRoomTop(
                key: bedRoomTopKey,
                changePositionCallback: changePositionCallback,
                position: posChange,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: UIColors.whiteSmoke,
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/images/bulb.svg",
              fit: BoxFit.contain,
            ),
            SvgPicture.asset(
              "assets/images/feather-home.svg",
              fit: BoxFit.contain,
            ),
            SvgPicture.asset(
              "assets/images/feather-settings.svg",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  void changePositionCallback(bool pos) {
    setState(() {
      posChange = pos;
      bedRoomTopKey.currentState.setState(() {
        bedRoomTopKey.currentState.opacity = 1.0;
      });
    });
  }
}
