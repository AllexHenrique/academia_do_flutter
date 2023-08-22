// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade100,
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              tooltip: 'Selecione um item do menu',
              icon: const Icon(Icons.menu),
              onSelected: (PopupMenuPages valueSelect) {
                switch (valueSelect) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  // Container
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Contaier'),
                  ),

                  // Rows & Columns
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child: Text('Rowns & Columns'),
                  ),
                ];
              }),
        ],
      ),
      body: Container(),
    );
  }
}
