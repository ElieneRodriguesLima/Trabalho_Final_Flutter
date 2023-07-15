import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/piece2.png'),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Mugiwaras',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  '(Chapéus de palha!)',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.info, 'Informações'),
        _buildButtonColumn(color, Icons.face, 'personagens principais'),
        _buildButtonColumn(color, Icons.grade, 'habilidades'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(40),
      child: Text(
        'A história conta sobre um garoto que se chama Monkey D. Luffy'
        'ele comeu uma fruta chamada de Gomu Gomu no mi(Que dar poderes de borracha)'
        'Ele com 17 anos parte para uma aventura, e conhece seus fies companheiros'
        'Nami, Sanji, Zoro, Usopp, Nico Robin, Chopper, Franky, Brook, Jinbe'
        'Em vez de ser motivado pela ganância e violência, o desejo de Luffy é um pirata'
        'e conhecer pessoas novas e interessantes, e criando muito confusão'
        'Luffy e sua equipe embarcam em uma jornada pela Grand Line,'
        'enfrentando aventuras emocionantes, descobrindo mistérios'
        'sombrios e lutando contra inimigos poderosos'
        'tudo em busca do tesouro supremo - One Piece'
        ' As principais habilidades são as frutas misticas e os hakis.',
        style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
        softWrap: true,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: const Text(
            'One Piece',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/one_piece.png',
              height: 150,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
