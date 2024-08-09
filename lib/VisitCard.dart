import 'package:flutter/material.dart';

void main() {
  Widget app = VisitCard();

  runApp(app);
}

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text('Meu Cartão', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.person, color: Colors.blue),
                  SizedBox(width: 8), // Espaço entre o ícone e o texto
                  Text('Pietro Zardini')
                ],
              ),
              SizedBox(height: 10), // Espaço entre as linhas
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.work, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Técnico de Suporte'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('pizardini@gmail.com'),
                ],
              ),
              SizedBox(height: 10),
              // GitHub
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.link, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('http://github.com/pizardini'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
