// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';

import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumn(),
        '/media_query': (_) => MediaQueryPage(),
        '/botoes_rotacoes_texto': (_) => BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => ListviewPage(),
        '/dialogs': (_) => DialogsPage(),
      },
    );
  }
}
