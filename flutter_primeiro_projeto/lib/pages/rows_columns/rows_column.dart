// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class RowsColumn extends StatelessWidget {
  const RowsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: const Text('Rows & Colums'),
      ),
      body: Center(
        child: Container(
          color: Colors.brown.shade100,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blue.shade100,
                child: Text('Elemento 1'),
              ),
              Text('Elemento 2'),
              Text('Elemento 3'),
              Container(
                height: 150,
                color: Colors.yellow.shade100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('1'),
                    Text('2'),
                    Text('3'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
