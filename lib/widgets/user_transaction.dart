// import 'package:flutter/material.dart';
// import 'package:personal_expense/models/transaction.dart';
// import 'package:personal_expense/widgets/new_transaction.dart';
// import 'package:personal_expense/widgets/transaction_list.dart';

// class UserTransaction extends StatefulWidget {
//   const UserTransaction({Key? key}) : super(key: key);

//   @override
//   _UserTransactionState createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {
  

//   final List<Transaction> _userTransactions = [
//     Transaction(id: "t1", title: "Shoe", amount: 99.90, date: DateTime.now()),
//     Transaction(
//         id: "t2", title: "Mobile", amount: 999.90, date: DateTime.now()),
//   ];

//     // final List<Map> no = [{}, {}];

//   void _addNewTransaction(String txTitle, double txAmount) {
//     final newTx = Transaction(
//         id: DateTime.now().toString(),
//         title: txTitle,
//         amount: txAmount,
//         date: DateTime.now());

//     setState(() {
//       _userTransactions.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTransaction(_addNewTransaction),
//         TransactionList(_userTransactions),
//       ],
//     );
//   }
// }
