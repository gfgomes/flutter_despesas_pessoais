import 'package:flutter/material.dart';
import 'package:flutter_expenses_app/components/transaction_form.dart';
import 'package:flutter_expenses_app/components/transaction_list.dart';
import 'package:flutter_expenses_app/components/transaction_user.dart';
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
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Despesas Pesssoais')),
      body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              //widget gráfico
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text("Gráfico"),
              ),
            ),
            TransactionUser(),
          ]),
    );
  }
}
