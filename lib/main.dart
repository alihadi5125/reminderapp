
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reminderapp/views/home/home_view.dart';

import 'SizeConfig/sizeconfig.dart';


void main () {
  runApp(LayoutBuilder(builder: (context, constraints){
    return OrientationBuilder(builder: (context, orientation){
      SizeConfig().init(constraints,orientation);
      return MyApp();
    });
  })
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //builder: DevicePreview.appBuilder,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView());
  }
}
