// ignore_for_file: use_key_in_widget_constructors, empty_constructor_bodies, prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_import, sized_box_for_whitespace, unnecessary_string_escapes

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: transactions.isEmpty ? Column( 
          children: <Widget>[
          Text( 
            'Nenhuma Transação Cadastrada !!',
            style: Theme.of(context).textTheme.titleLarge,

          ),
          Image.asset('assets\imagens\waiting.png')
          ]
        ): ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (ctx, index) {
            final tr = transactions[index];
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Color.fromARGB(255, 67, 44, 200),
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr.title,
                        style: Theme.of(context).textTheme.titleLarge,
                        
                      ),
                      Text(
                        DateFormat('d MM y').format(tr.date),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
