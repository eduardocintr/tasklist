import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListaTarefas()));
}

class ListaTarefas extends StatefulWidget {
  @override
  _ListaTarefasState createState() => _ListaTarefasState();
}

class _ListaTarefasState extends State<ListaTarefas> {
  final List<Map<String, dynamic>> tarefas = [
    {'texto': 'Estudar Flutter', 'ok': false},
    {'texto': 'Fazer exercícios', 'ok': false},
    {'texto': 'Enviar trabalho', 'ok': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Tarefas')),
      body: ListView.builder(
        itemCount: tarefas.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(tarefas[index]['texto']),
            value: tarefas[index]['ok'],
            onChanged: (val) {
              setState(() {
                tarefas[index]['ok'] = val;
              });
            },
          );
        },
      ),
    );
  }
}
