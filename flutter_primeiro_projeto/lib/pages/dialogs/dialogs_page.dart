// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                showDialog(
                  // barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return DialogCustom(context);
                  },
                );
              },
              child: Text('Dialogs')),
          ElevatedButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Simple Dialog'),
                      contentPadding: EdgeInsets.all(10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Titulo X'),
                        ),
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar Dialog'))
                      ],
                    );
                  },
                );
              },
              child: Text('Simple Dialogs')),
          ElevatedButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Deseja Salvar'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Cancelar')),
                        TextButton(onPressed: () {}, child: Text('Salvar')),
                      ],
                    );
                  },
                );
              },
              child: Text('Alert Dialogs')),
          ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print('Selecionou $selectedTime');
              },
              child: Text('Time Picker')),
          ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print('A data selecionada foi $selectedDate');
              },
              child: Text('Date Picker')),
          ElevatedButton(
              onPressed: () {
                showAboutDialog(
                    context: context, applicationName: 'Sobre o App');
              },
              child: Text('About Dialog')),
        ],
      )),
    );
  }
}
