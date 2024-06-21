import 'package:flutter/material.dart';

void main() {
  runApp(const ExepensesApp());
}

class ExepensesApp extends StatelessWidget {
  const ExepensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pesssoais')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Gráfico"),
            ),
          ),
          Card(
            child: Text("Lista de transações"),
          ),
        ],
      ),
    );
  }
}
