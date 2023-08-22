// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotações de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.red.shade100,
                      child: Text('Alex Henrique')),
                ),
                Icon(Icons.ac_unit)
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(100, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),

            // Botão 1

            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade100,
                minimumSize: Size(120, 40),
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            // apenas um espaçamento
            SizedBox(
              height: 10,
            ),
            // acaba espaçamento

            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.car_crash),
                label: Text('Modo Avião')),
            SizedBox(
              height: 10,
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Size(150, 150);
                  }
                  return Size(120, 50);
                }),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red.shade100;
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('Start $_'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.brown.shade200, Colors.blue.shade200],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.yellow.shade200,
                    ),
                  ]),
              // O inkWell é um botão clicavel
              child: InkWell(
                onTap: () => print('Gesture Clicado'),
                borderRadius: BorderRadius.circular(50),
                child: Center(
                  child: Text('Botão Slavar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
