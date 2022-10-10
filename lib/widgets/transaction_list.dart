import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {

  final List<Transaction> userTransactions = [
    Transaction(
        id: "t1",
        amount: 99.99,
        title: "mua giay",
        date: DateTime.now()
    ),
    Transaction(
        id: "t2",
        amount: 22.22,
        title: "mua ao",
        date: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransactions.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  "\$${tx.amount}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    tx.title,
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').add_jm().format(tx.date),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],)
            ],),
        );
      }).toList(),
    );
  }
}
