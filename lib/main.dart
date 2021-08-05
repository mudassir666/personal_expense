import 'package:flutter/material.dart';
import 'package:personal_expense/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Personal Expense",
      home: MyHomePage(),
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.cyan),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  final List<Transaction> transactions = [
    Transaction(id: "1", title: "Shoe", amount: 99.90, date: DateTime.now())
  ];

  final List<String> no = ["1","2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PERSONAL EXPENSE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              color: Colors.deepOrangeAccent,
              child: Text(
                "CHART",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Card(
            child: Text("LIST OF TX"),
          ),
        ],
      ),
    );
  }
}
