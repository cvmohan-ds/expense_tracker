import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

enum Category {
  food,
  travel,
  medical,
  work,
  other,
}

final formatter = DateFormat('yyyy-MM-dd');

final categoryIcons = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.flight_takeoff,
  Category.medical: Icons.local_hospital,
  Category.work: Icons.work,
  Category.other: Icons.category,
};

class Expense {

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }): id = Uuid().v4();

  String get formattedDate {
    return formatter.format(date);
  }

}