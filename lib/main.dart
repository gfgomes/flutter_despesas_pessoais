import 'package:flutter/material.dart';
import 'package:flutter_expenses_app/components/transaction_list.dart';
import 'package:flutter_expenses_app/models/transaction.dart';

void main() {
  runApp(const ExepensesApp());
}

class ExepensesApp extends StatelessWidget {
  const ExepensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final List<Transaction> _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pesssoais')),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(
          //widget gráfico
          width: double.infinity,
          child: Card(
            color: Colors.blue,
            elevation: 5,
            child: Text("Gráfico"),
          ),
        ),
        TransactionList(transactions: _transactions),
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Título',
                  ),
                ),
                TextField(
                  controller: valueController,
                  decoration: const InputDecoration(
                    labelText: 'Valor (R\$)',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        print(titleController.text);
                        print(valueController.text);
                      },
                      child: const Text(
                        "Nova transação",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
