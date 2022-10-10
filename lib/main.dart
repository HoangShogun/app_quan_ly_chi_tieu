import 'package:app_quan_ly_chi_tieu/widgets/chart.dart';
import 'package:app_quan_ly_chi_tieu/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "app quan ly chi tieu",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {



  const MyHomePage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter app"),
      ),


      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const Chart(),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
