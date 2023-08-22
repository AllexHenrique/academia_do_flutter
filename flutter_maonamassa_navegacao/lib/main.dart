// ignore_for_file: prefer_const_constructors, unused_import, body_might_complete_normally_nullable, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao_navegacao/pages/home_page.dart';

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
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        }
        if (settings.name == '/detalhe') {
          var parametro = settings.arguments as String?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro ?? 'Não foi emviado o parametro',
            ),
          );
        }
        if (settings.name == '/detalhe2') {
          var parametro = settings.arguments as String?;
          return MaterialPageRoute<String>(
            settings: settings,
            builder: (context) => const Detalhe2Page(),
          );
        }
      },
      routes: {
        '/': (_) => HomePage(),
        // '/detalhe2': (_) => const Detalhe2Page(),
        //  '/detalhe': (_) => DetalhePage(),
      },
    );
  }
}
