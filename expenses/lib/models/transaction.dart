// ignore_for_file: unused_import

import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;
 
  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.date,
  });
}