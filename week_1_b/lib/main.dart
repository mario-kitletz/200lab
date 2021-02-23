import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'week_1 exercise_2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          body: Stack(overflow: Overflow.visible, children: [
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Row(children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(child: Container(color: Colors.grey)),
                            Expanded(child: Container(color: Colors.orange)),
                            Expanded(child: Container(color: Colors.blue)),
                            Expanded(child: Container(color: Colors.pinkAccent))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            color: Colors.lightBlue,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        color: Colors.lightBlueAccent)),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            color: Colors.greenAccent)),
                                    Expanded(
                                        child: Container(color: Colors.yellow))
                                  ],
                                ))
                              ],
                            )))
                  ])),
                  Expanded(child: Container(color: Colors.black)),
                  Expanded(child: Container(color: Colors.yellow)),
                  Expanded(child: Container(color: Colors.white))
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Row(children: [
                  Expanded(child: Container(color: Colors.pinkAccent)),
                  Container(color: Colors.white, width: 10.0)
                ])),
            Expanded(child: Container(color: Colors.pinkAccent)),
            Positioned(child: Container(color: Colors.grey))
          ],
        ),
        Positioned(
            top: (screenSize.height / 4) * 2 + 25,
            left: (screenSize.width / 4) * (3 / 5),
            width: (screenSize.height / 4) - 50,
            height: (screenSize.height / 4) - 50,
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ))
      ])),
    );
  }
}
