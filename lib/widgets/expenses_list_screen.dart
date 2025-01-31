import 'package:flutter/material.dart';
import 'package:expense_tracker/data/expense_list.dart';
import 'package:expense_tracker/widgets/single_expense_display.dart';

class ExpensesListScreen extends StatelessWidget{
  ExpensesListScreen({super.key});

  final expenses = ExpenseList().expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return SingleExpenseDisplay(expenses[index]);
      },
    );
  }

}