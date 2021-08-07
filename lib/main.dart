import 'package:flutter/material.dart';
import 'package:personal_expense/widgets/user_transaction.dart';



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
 

  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  // final List<Map> no = [{}, {}];

  // Widget view() {
  //   return ListView(
  //     scrollDirection: Axis.vertical,
  //     shrinkWrap: true,
  //     children: transactions.map((tx) {
  //       return Card(
  //         child: Container(
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Icon(Icons.money_rounded),
  //               SizedBox(
  //                 width: 30,
  //               ),
  //               Column(
  //                 children: [
  //                   Text(tx.title),
  //                   SizedBox(
  //                     height: 15,
  //                   ),
  //                   Text(DateFormat.yMMMd().format(tx.date)),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     }).toList(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PERSONAL EXPENSE"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
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
            UserTransaction(),
            // view(),
          ],
        ),
      ),
    );
  }
}
