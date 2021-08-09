import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense/models/transaction.dart';

class TransactionList extends StatelessWidget {
  // const TransactionList({Key? key}) : super(key: key);

  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions , this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 445,
      height: 530,
      child: transactions.isEmpty
          ? Column(
              children: [
                Text(
                  "No Transactions added yets!",
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    child: Image.asset(
                      "assets/images/waiting.png",
                      fit: BoxFit.cover,
                    ))
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      DateFormat.yMMMMd().format(transactions[index].date),
                    ),
                    trailing: IconButton(
                        onPressed: () => deleteTransaction(transactions[index].id),
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).primaryColorDark),
                  ),
                );
              },
              itemCount: transactions.length,
              // children: transactions.map((tx) {
              //   return Card(
              //     child: Row(
              //       children: [
              //         Container(
              //           padding: EdgeInsets.all(5),
              //           margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              //           decoration: BoxDecoration(
              //             border: Border.all(
              //               color: Colors.purple,
              //               width: 3,
              //             ),
              //           ),
              //           child: Text(
              //             "\$${tx.amount}",
              //             style: TextStyle(
              //               color: Colors.purple,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               tx.title,
              //               style: TextStyle(
              //                 color: Colors.purple,
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               DateFormat.yMEd().add_jms().format(tx.date),
              //               style: TextStyle(
              //                 color: Colors.grey[600],
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //   );
              // }).toList(),
            ),
    );
  }
}
