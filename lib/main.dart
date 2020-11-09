import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
      title: 'Solve Share',
      body: 'From Solve Share',
      image: Image.asset('images/img-1.png'),
    ),
    PageViewModel(
      title: 'Solve Share',
      body: 'From Solve Share',
      image: Image.asset('images/img-2.png'),
    ),
    PageViewModel(
      title: 'Solve Share',
      body: 'From Solve Share',
      image: Image.asset('images/img-3.png'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
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
    );
  }
}
