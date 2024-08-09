import 'package:flutter/material.dart';

void main() {
  runApp(AppEvenOdd());
}

class AppEvenOdd extends StatefulWidget {
  @override
  _AppEvenOddState createState() => _AppEvenOddState();
}

class _AppEvenOddState extends State<AppEvenOdd> {
  int _numero = 1;

  void _nextEven() {
    setState(() {
      if (_numero % 2 == 0) {
        _numero += 2;
      } else {
        _numero += 1;
      }
    });
  }

  void _nextOdd() {
    setState(() {
      if (_numero % 2 != 0) {
        _numero += 2;
      } else {
        _numero += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Próximo par ou ímpar',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número: $_numero',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: _nextEven,
                    child: Text('Par'),
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: _nextOdd,
                    child: Text('Ímpar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
