import 'package:flutter/material.dart';
import 'package:expense_tracker/modals/expense.dart';

class SingleExpenseDisplay  extends StatelessWidget{
  const SingleExpenseDisplay(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: expense.amount < 25.00 ? Color.fromARGB(255, 8, 152, 128) : const Color.fromARGB(255, 230, 111, 47),
      
      child: ListTile(
        textColor: Colors.white,
        iconColor: Colors.white,
        leading: CircleAvatar(
          radius: 30,
          child: Text(expense.amount.toStringAsFixed(2)),
        ),
        title: Text(expense.title),
        trailing: Icon(categoryIcons[expense.category]),
        subtitle: Text(expense.formattedDate),
        
      ),
    );
  }

}