import 'package:flutter/material.dart';
import 'package:reminderapp/my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF190D21),
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            MyFlutterApp.home,
            MyFlutterApp.notepad,
            MyFlutterApp.arrowbow,
            MyFlutterApp.clock,
            MyFlutterApp.lightining_bolt,
          ],
          onChange: (val) {
            setState(() {
              _selectedItem = val;
            });
          },
          defaultSelectedIndex: 1,
        ),

        body: Center(
          child: Text(
            "Hello from Item $_selectedItem",

            style: TextStyle(fontSize: 26,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar({this.defaultSelectedIndex = 0,
    @required this.iconList,
    @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(

        margin: EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .size
            .height * .03),


        height: MediaQuery
            .of(context)
            .size
            .height * .08,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          color: Color(0xff271336),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.00, 3.00),
              color: Color(0xff000000),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.00),
            topRight: Radius.circular(30.00),
            bottomLeft: Radius.circular(15.00),
            bottomRight: Radius.circular(18.00),),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _navBarItemList,
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width / _iconList.length - 20,
          height: 60,


          child: Column(
            children: [
              ClipPath(
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .021,
                  width: 25,
                  decoration: index == _selectedIndex
                      ? BoxDecoration(
                      color: Color(0xFF753E9E)
                  )
                      : BoxDecoration(),

                ),
                clipper: CustomClipPath(),
              ),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .01,
              ),
              Icon(
                icon,
                color: index == _selectedIndex ? Color(0xFF753E9E) : Colors
                    .black.withOpacity(.5),
              ),
            ],
          )
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;

  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(
        size.width * 0.29, size.height * 0.99, size.width * 0.40,
        size.height * 0.80);
    path_0.cubicTo(size.width * 0.51, size.height * 0.56, size.width * 0.52,
        size.height * 0.54, size.width * 0.55, size.height * 0.50);
    path_0.cubicTo(size.width * 0.63, size.height * 0.38, size.width * 0.77,
        size.height * 0.78, size.width * 0.85, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.93, size.height * 0.23, size.width, 0);
    path_0.lineTo(0, 0);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

