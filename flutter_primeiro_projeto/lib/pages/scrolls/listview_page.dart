// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 200,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.red,
            // thickness: 2,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: Text('Flutter é TOP'),
            leading: CircleAvatar(
              maxRadius: 40,
              backgroundImage: NetworkImage(
                  'https://docs.flutter.dev/assets/images/dash/BigDashAndLittleDash.png'),
            ),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
