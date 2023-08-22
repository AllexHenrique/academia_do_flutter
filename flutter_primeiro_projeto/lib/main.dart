// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/home/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/rows_columns/rows_column.dart';

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
      },
    );
  }
}
