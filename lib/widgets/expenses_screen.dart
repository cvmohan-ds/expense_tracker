import 'package:flutter/material.dart';

import 'package:expense_tracker/data/expense_list.dart';
import 'package:expense_tracker/widgets/expenses_list_screen.dart';
import 'package:expense_tracker/widgets/add_expense_screen.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final expenses = ExpenseList().expenses;

  void _overlayAddExpense() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return AddExpenseScreen();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 13, 105, 99),
          foregroundColor: Colors.white,
          leading: Image.asset('assets/images/logo.jpg'),
          title: Text('Expense Tracker'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _overlayAddExpense,
            ),
          ],
        ),
        body: Column(
          children: [
            Card(
              child: Text("We well Have a Chart Here."),
            ),
            Expanded(child: ExpensesListScreen()),
          ],
        ),
    );
  }
}
