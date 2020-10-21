import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Rolling',
      home: _homeWidget(),
    );
  }
}

class _homeWidget extends StatefulWidget {
  @override
  __homeWidgetState createState() => __homeWidgetState();
}

class __homeWidgetState extends State<_homeWidget> {
  int upDice = 1;
  int rightDice = 1;
  int leftDice = 1;
  int downDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Dice Rolling App'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    upDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$upDice.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    downDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$downDice.png'),
              ),
            )
          ],
        ));
  }
}
