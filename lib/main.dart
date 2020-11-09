import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import './constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PageViewModel> listPageViewModel = [
    PageViewModel(
      title: kImg1_title,
      body: kImg1_description,
      image: Center(
        child: Image.asset('images/img-1.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 25.0,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18.0,
        ),
      ),
    ),
    PageViewModel(
      title: kImg2_title,
      body: kImg2_description,
      image: Center(
        child: Image.asset('images/img-2.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 25.0,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18.0,
        ),
      ),
    ),
    PageViewModel(
      title: kImg3_title,
      body: kImg3_description,
      image: Center(
        child: Image.asset('images/img-3.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 25.0,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18.0,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.white,
              spreadRadius: 5,
              blurRadius: 0,
              offset: Offset(0, 0),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.only(
          top: 60.0,
          left: 20.0,
          right: 20.0,
          bottom: 30.0,
        ),
        padding: EdgeInsets.all(20.0),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: listPageViewModel,
          onDone: () {},
          done: Text(
            'Done',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
