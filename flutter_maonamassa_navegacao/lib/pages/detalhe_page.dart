import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametro;

  const DetalhePage({super.key, required this.parametro});

  @override
  Widget build(BuildContext context) {
    // var parametro = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes Page'),
      ),
      body: Center(
        child: Text(parametro),
      ),
    );
  }
}
