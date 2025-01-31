import 'package:expense_tracker/modals/expense.dart';

class ExpenseList {
  final List<Expense> expenses = [
    Expense(
      title: 'Groceries',
      amount: 100.00,
      date: DateTime.now().subtract(Duration(days: 1)),
      category: Category.food,
    ),
    Expense(
      title: 'Medicine',
      amount: 50.00,
      date: DateTime.now().subtract(Duration(days: 2)),
      category: Category.medical,
    ),
    Expense(
      title: 'Transportation',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Lunch',
      amount: 10.00,
      date: DateTime.now().subtract(Duration(days: 2)),
      category: Category.food,
    ),
    Expense(
      title: 'Dinner',
      amount: 20.00,
      date: DateTime.now().subtract(Duration(days: 1)),
      category: Category.food,
    ),
    Expense(
      title: 'Office Supplies',
      amount: 30.00,
      date: DateTime.now().subtract(Duration(days: 3)),
      category: Category.work,
    ),
    Expense(
      title: 'Miscellaneous',
      amount: 10.00,
      date: DateTime.now().subtract(Duration(days: 1)),
      category: Category.other,
    ),
  ];

  

}