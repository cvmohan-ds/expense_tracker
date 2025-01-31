import 'package:flutter/material.dart';
import 'package:expense_tracker/modals/expense.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  DateTime? _selectedDate;
  String _category = "Category";

  void _showDatePicker() async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = DateTime(now.year, now.month - 3, 1);
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: now,
      initialDate: now,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            maxLength: 50,
            controller: _titleController,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  keyboardType: TextInputType.number,
                  controller: _amountController,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_selectedDate == null ? 'No Date Yet' : formatter.format(_selectedDate!)),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: Icon(Icons.calendar_month),
                      color: const Color.fromARGB(255, 15, 134, 118),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(
                      value: Category.food,
                      child: Text('food'),
                    ),
                    DropdownMenuItem(
                      value: Category.travel,
                      child: Text('travel'),
                    ),
                    DropdownMenuItem(
                      value: Category.medical,
                      child: Text('medical'),
                    ),
                    DropdownMenuItem(
                      value: Category.work,
                      child: Text('work'),
                    ),
                    DropdownMenuItem(
                      value: Category.other,
                      child: Text('others'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _category = value!.name;
                    });
                  },
                  hint: Text(_category),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 105, 99),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    print('Title: ${_titleController.text}');
                    print('Amount: ${_amountController.text}');
                  },
                  child: Text('Add'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
