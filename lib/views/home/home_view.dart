import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminderapp/SizeConfig/sizeconfig.dart';
import 'package:reminderapp/authenthication/loginscreen.dart';
import 'package:page_transition/page_transition.dart';


class HomeView extends StatelessWidget {
  var refHeight = SizeConfig.imageSizeMultiplier * 100;
  var refWidth = SizeConfig.imageSizeMultiplier * 200;

  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: refHeight,
          width: refWidth,
          decoration: BoxDecoration(
            color: Color(0xff271336),
            boxShadow: [
              BoxShadow(
                offset: Offset(30.00,30.00),
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 30,
              ),
            ], borderRadius: BorderRadius.only(bottomLeft: Radius.circular(39.00), bottomRight: Radius.circular(39.00), ),
          ),
          child: Column(
            children: [


            ],
          ),
        )
      ),
    );
  }


  Widget bubble(context) {
    return Container(
      width: 248,
      height: 200,
      child: Stack(
        children: [

          ///blue
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: refWidth * .30,
              height: refHeight * .14,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,

                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color(0xff1C75BC),
                    const Color(0xff4FD5DF)
                  ], // red to yellow


                  // repeats the gradient over the canvas
                ),
              ),
            ),

          ),

          ///pink
          Positioned(
            left: -57,
            top: 15,
            child: Container(
              width:refWidth* .29,
              height: refHeight* .15,
              decoration: BoxDecoration(

                shape: BoxShape.circle,

                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color(0xff9E1F63),
                    const Color(0xffEE2A7B)
                  ], // red to yellow
                  // repeats the gradient over the canvas
                ),
              ),
            ),

          ),

          ///purples
          Positioned(
            left: -16,
            top: -35,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * .26,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .12,
              decoration: BoxDecoration(

                shape: BoxShape.circle,

                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color(0xff262262),
                    const Color(0xff3E2262)
                  ], // red to yellow
                  // repeats the gradient over the canvas
                ),
              ),
            ),

          ),

        ],
      ),
    );
  }
}
