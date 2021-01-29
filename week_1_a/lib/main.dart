import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '200lab demo change temperature'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const Celcius = 'celcius';
const Fahrenheit = 'fahrenheit';

enum TempType { celcius, fahrenheit }

class _MyHomePageState extends State<MyHomePage> {
  final _cCtlr = TextEditingController();
  final _fCtlr = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _cCtlr.dispose();
    _fCtlr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: _cCtlr,
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), hintText: "Celsius °C"),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _fCtlr.text = _convertTemp(value, TempType.celcius)
                        .toStringAsFixed(2);
                  } else {
                    _fCtlr.text = "";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: _fCtlr,
                autofocus: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), hintText: "Fahrenheit °F"),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    _cCtlr.text = _convertTemp(value, TempType.fahrenheit)
                        .toStringAsFixed(2);
                  } else {
                    _cCtlr.text = "";
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _convertTemp(String value, TempType from) {
    double result = double.tryParse(value) ?? 0;
    switch (from) {
      case TempType.celcius:
        result = result * 9 / 5 + 32;
        break;
      case TempType.fahrenheit:
        result = (result - 32) * 5 / 9;
        break;
      default:
    }
    return result;
  }
}
