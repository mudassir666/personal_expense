import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personal_expense/models/transaction.dart';
import 'package:personal_expense/widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  // const TransactionList({Key? key}) : super(key: key);

  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Text(
                  "No Transactions added yets!",
                  style: Theme.of(context).textTheme.title,
                ),
               const SizedBox(
                  height: 20,
                ),
                Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      "assets/images/waiting.png",
                      fit: BoxFit.cover,
                    ))
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(transaction: transactions[index], deleteTransaction: deleteTransaction);
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
          );
  }
}
