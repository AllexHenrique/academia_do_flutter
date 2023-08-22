// ignore_for_file: prefer_const_constructors, constant_identifier_names

import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  botoes_rotacoes_texto,
  scrolls_single_child,
  scrolls_ist_view,
  dialogs,
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
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.botoes_rotacoes_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacoes_texto');
                  break;
                case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrolls_ist_view:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
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
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('Media Query'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacoes_texto,
                  child: Text('Botoes Rotacoes'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_single_child,
                  child: Text('Scrolls single child'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_ist_view,
                  child: Text('List View'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('dialogs Pages'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
