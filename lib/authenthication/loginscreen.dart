import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminderapp/screens/homescreen.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  Color primaryColor = Color(0xFF311744);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF271336),
          child: Column(children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset(
              "images/logo.png",
              width: MediaQuery.of(context).size.width * .23,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),

            Text('L O G I N',
                style: TextStyle(
                    fontFamily: 'Schyler',
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * .12)),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),

            ///username
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .05,
                    right: MediaQuery.of(context).size.width * .05),
                child: textfield("Username")),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),

            ///password
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .05,
                    right: MediaQuery.of(context).size.width * .05),
                child: textfield("Password")),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .05),
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: RaisedButton(
                    color: Color(0xFF631AD9),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.bold),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .02),
                  child: Text(
                    "Sign Up Instead ?",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(.4)),
                  ),
                ),
              ),
            ))
          ]),
        ),
      ),
    );
  }

  Widget textfield(String text) {
    return TextField(
      cursorColor: Colors.white.withOpacity(.2),
      style: TextStyle(color: primaryColor),
      enabled: true, // to trigger disabledBorder
      decoration: InputDecoration(
          // prefixIcon:Icon(icon, color: primaryColor,),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(width: 1, color: primaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(width: 1, color: primaryColor),
          ),
          filled: true,
          fillColor: primaryColor,
          hintText: text,
          hintStyle:
              TextStyle(fontSize: 20, color: Colors.black.withOpacity(.5))),
    );
  }
}
