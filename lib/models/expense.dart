import 'package:uuid/uuid.dart';

final uuid = const Uuid();

enum ExpenseCategory { food, travel, leisure, work }

class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final String id;
  final ExpenseCategory category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
}
