import 'package:counter/stepper_touch.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF6D72FF),
        ),
        home: MyApp(),
      ),
    );


// Coded By Raj Chowdhury


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: StepperTouch(
              //     initialValue: 0,
              //     direction: Axis.vertical,
              //     withSpring: false,
              //     onChanged: (int value) => print('new value $value'),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StepperTouch(
                  initialValue: 0,
                  onChanged: (int value) => print('new value $value'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
