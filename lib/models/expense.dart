import 'package:uuid/uuid.dart';

final uuid = const Uuid();

class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final String id;

  Expense({required this.title, required this.amount, required this.date})
    : id = uuid.v4();
}
