import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Game',
      theme: ThemeData(
        primaryColor: Color(0xFF4191E1),
      ),
      home: ChessGameScreen(),
    );
  }
}

class ChessGameScreen extends StatefulWidget {
  @override
  _ChessGameScreenState createState() => _ChessGameScreenState();
}

class _ChessGameScreenState extends State<ChessGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://img.freepik.com/vetores-gratis/conceito-de-jogo-de-xadrez-com-tabuleiro-realista-e-pecas-preto-e-brancas_1284-13711.jpg',
              width: 150,
            ),
            SizedBox(height: 30),
            Container(
              width: 200,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Login',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Senha',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Jogar',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Esqueceu a senha?'),
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Cadastre-se',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
