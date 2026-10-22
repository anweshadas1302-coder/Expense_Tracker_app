import 'package:flutter/material.dart';

import 'models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        final expense = expenses[index];
        return Card(
          child: Row(
            children: [
              Text(expense.title),
              const SizedBox(width: 20),
              Text('\$${expense.amount.toStringAsFixed(2)}'),
            ],
          ),
        );
      },
    );
  }
}
