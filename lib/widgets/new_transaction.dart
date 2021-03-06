import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({ Key? key }) : super(key: key);

  final Function addTx;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            ElevatedButton(
              onPressed: () {
                addTx(titleController.text,double.parse(amountController.text),);
              },
              child: Text(
                "Add Transaction",
                style: TextStyle(color: Colors.purple),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
