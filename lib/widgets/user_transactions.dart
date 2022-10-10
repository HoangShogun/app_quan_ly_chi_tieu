import 'package:app_quan_ly_chi_tieu/widgets/new_transaction.dart';
import 'package:app_quan_ly_chi_tieu/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
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

  void _addTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
        id: DateTime.now().toString(),
        amount: txAmount,
        title: txTitle,
        date: DateTime.now()
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

