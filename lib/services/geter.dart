import 'package:finance_app/services/money.dart';

List<money> geter() {
  money upwork = money();
  upwork.image = 'up.png';
  upwork.name = 'So ans So';
  upwork.fee = '86';
  upwork.time = 'Yesterday';
  upwork.buy = false;

  money Starbucks = money();
  Starbucks.image = 'starbucks.png';
  Starbucks.name = 'Starbucks';
  Starbucks.fee = '656';
  Starbucks.time = 'Today';
  Starbucks.buy = true;

  return [upwork, Starbucks];
}
