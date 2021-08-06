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
    Transaction(id: "t1", title: "Shoe", amount: 99.90, date: DateTime.now()),
    Transaction(
        id: "t2", title: "Mobile", amount: 999.90, date: DateTime.now()),
  ];

  final List<Map> no = [{}, {}];

  Widget view() {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: transactions.map((tx) {
        return Card(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.money_rounded),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(tx.title),
                    SizedBox(
                      height: 15,
                    ),
                    Text(tx.date.toString()),
                  ],
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

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
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      child: Text(tx.amount.toString()),
                    ),
                    Column(
                      children: [
                        Text(tx.title),
                        Text(tx.date.toString()),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          view(),
        ],
      ),
    );
  }
}
